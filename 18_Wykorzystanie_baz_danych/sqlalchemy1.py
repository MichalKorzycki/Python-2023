from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine

Base = automap_base()
db_url = "postgresql+psycopg2://my_user:secret@127.0.0.1/my_database"
engine = create_engine(db_url)

# reflect the tables
Base.prepare(engine, reflect=True)

# mapped classes are now created with names by default
# matching that of the table name.
FoodItem = Base.classes.fooditem
Orders = Base.classes.orders
OrdersItem = Base.classes.orders_item
session = Session(engine)

result = session.query(Orders, OrdersItem).filter(Orders.id == OrdersItem.orders_id).all()
for row in result:
    print(row.__dict__)

for row in result:
    print('\t|\t'.join( (str(row.id),  str(row.name) , str(row.price))))

result = session.query(Orders).all()
for row in result:
    print(row.__dict__)

result = (session
          .query(Orders, FoodItem).all())
for row in result:
    print(row.__dict__)
