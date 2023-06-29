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