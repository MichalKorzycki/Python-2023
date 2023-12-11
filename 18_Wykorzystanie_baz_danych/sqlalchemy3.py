import sqlalchemy as sa
from sqlalchemy.ext.declarative import declarative_base
from decimal import Decimal
import warnings

warnings.filterwarnings("ignore")

engine = sa.create_engine('sqlite:///:memory:')
Base = declarative_base()
session = sa.orm.sessionmaker(bind=engine)()

class OrderItem(Base):
    __tablename__ = 'order'

    id = sa.Column('id', sa.Integer, primary_key=True)
    product_id = sa.Column('product_id', sa.Integer, sa.ForeignKey('product.id'))
    user_id = sa.Column('user_id', sa.Integer, sa.ForeignKey('user.id'))
    qty = sa.Column('qty', sa.Integer)

class Product(Base):
    __tablename__ = 'product'

    id = sa.Column('id', sa.Integer, primary_key=True)
    price = sa.Column('price', sa.Numeric(14,2))

class User(Base):
    __tablename__ = 'user'

    id = sa.Column('id', sa.Integer, primary_key=True)
    first_name = sa.Column('first_name', sa.Text)
    last_name = sa.Column('last_name', sa.Text)

engine.echo = True
Base.metadata.create_all(engine)


session.add(User(id=42, first_name='John', last_name='Cleese'))
session.add(User(id=13, first_name='Sir', last_name='Robin'))
session.add(Product(id=1, price=Decimal('2.10')))
session.add(OrderItem(product_id=1, user_id=42, qty=9))
session.add(OrderItem(product_id=1, user_id=42, qty=2))
session.add(OrderItem(product_id=1, user_id=13, qty=2))
session.add(OrderItem(product_id=1, user_id=13, qty=3))
session.add(OrderItem(product_id=1, user_id=13, qty=20))
session.commit()

query = (
    session.query(
    (User.first_name + ' ' + User.last_name).label('seller'),
    sa.func.count(OrderItem.id).label('unique_items'),
    sa.func.sum(OrderItem.qty).label('items_total'),
    sa.func.sum(OrderItem.qty * Product.price).label('order_amount'),
    )
    .join(OrderItem)
    .join(Product)
    .group_by(User.id).order_by('items_total','order_amount')
)


print('{0:=^40}\n{1:^40}\n{0:=^40}'.format('=', 'Query'))
results = [row for row in session.execute(query)]
print('{0:=^40}\n{1:^40}\n{0:=^40}'.format('=', 'Results'))
for row in results:
    print(row)