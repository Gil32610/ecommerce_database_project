import pandas as pd
from sqlalchemy import create_engine

# Define the database connection string
db_connection_str = 'mysql+pymysql://root:Rodrigo123%@localhost/ecommerce_project_crud'

# Create a SQLAlchemy engine
db_connection = create_engine(db_connection_str)

# Read data from the "cliente" table into a DataFrame
df = pd.read_sql("SELECT * FROM cliente", con=db_connection)


print (df)