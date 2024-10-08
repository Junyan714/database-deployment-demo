# Full Name: Junyan Zhang
# Student ID: 8903870
# Class Number: PROG8850

import mysql.connector
from mysql.connector import Error


def execute_sql_script(filename):
    try:
        # Connect to MySQL Database
        connection = mysql.connector.connect(
            host='companydb-server.mysql.database.azure.com',
            database='companydb',
            user='mysqladmin',
            password='@junyan123'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            print("Connected to the database")

            # Read the SQL file
            with open(filename, 'r') as file:
                sql_script = file.read()

            # Execute the SQL script
            for sql_command in sql_script.split(';'):
                if sql_command.strip():
                    cursor.execute(sql_command)
                    print(f"Executed: {sql_command.strip()}")

            # Commit the changes
            connection.commit()
            print("Schema changes committed.")

    except Error as e:
        print(f"Error: {e}")
        if connection:
            connection.rollback()
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")


if __name__ == "__main__":
    execute_sql_script('update_projects_schema.sql')
