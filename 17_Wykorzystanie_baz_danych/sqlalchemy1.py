from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine

Base = automap_base()
db_url = "postgresql+psycopg2://julia:julia99@127.0.0.1/julia_dev_local"
engine = create_engine(db_url)

# reflect the tables
Base.prepare(engine, reflect=True)

# mapped classes are now created with names by default
# matching that of the table name.
PeriodDimension = Base.classes.period_dimension
Fact = Base.classes.fact
Employee = Base.classes.employee


session = Session(engine)

result = session.query(PeriodDimension).limit(5)
for row in result:
    print(row.__dict__)

for row in result:
    print('\t|\t'.join( (row.type_id, row.value, row.name )))

    