import mysql
import mysql.connector
mydb = mysql.connector.connect(
    user="root",
    password="root",
    host = '127.0.0.1',
    database ='ecommerce_project'
)
mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM funcionario")
mycursor.executemany() #executa uma formula com um conjunto de entradas


for entries in mycursor:
    print(entries)
print(mydb)