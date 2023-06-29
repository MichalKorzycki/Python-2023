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


session = Session(engine)

result = session.query(FoodItem).limit(5)
for row in result:
    print(row.__dict__)

for row in result:
    print('\t|\t'.join( (row.id,  row.name , row.price)))

    