import sqlalchemy as sa
from sqlalchemy.ext.declarative import declarative_base
from decimal import Decimal
import warnings

from sqlalchemy.orm import relationship

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
    name = sa.Column('name', sa.Text)
    price = sa.Column('price', sa.Numeric(14, 2))


class User(Base):
    __tablename__ = 'user'

    id = sa.Column('id', sa.Integer, primary_key=True)
    first_name = sa.Column('first_name', sa.Text)
    last_name = sa.Column('last_name', sa.Text)

    products = relationship("Product",
                            secondary='order',
                            uselist=True,
                            backref='users',
                            lazy='select')


Base.metadata.create_all(engine)

engine.echo = True

session.add(User(id=42, first_name='John', last_name='Cleese'))
session.add(User(id=13, first_name='Sir', last_name='Robin'))
session.add(Product(id=1, price=Decimal('2.10'), name='Rabbit'))
session.add(Product(id=2, price=Decimal('5.10'), name='Parrot'))
session.add(OrderItem(product_id=1, user_id=42, qty=9))
session.add(OrderItem(product_id=1, user_id=42, qty=2))
session.add(OrderItem(product_id=1, user_id=13, qty=2))
session.add(OrderItem(product_id=1, user_id=13, qty=3))
session.add(OrderItem(product_id=1, user_id=13, qty=20))
session.commit()

john = session.query(User).get(42)
len(john.products)
john.products[0].name
rabbit = john.products[0]
len(rabbit.users)
for u in rabbit.users:
    print(u.last_name)
