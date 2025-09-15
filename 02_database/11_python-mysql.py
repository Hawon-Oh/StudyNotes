import mysql.connector


connection = mysql.connector.connect(
    host="localhost",
    user="ohgiraffers",
    password="ohgiraffers",
    database="menudb"
)

if connection.is_connected():
    print("MYSQL is connected successfully.")

connection.close()
if not connection.is_connected():
    print("MYSQL connection is closed.")