#Michael Turnbach and Andrew Reed

import mysql.connector
# this works the same as MySQLdb
# establish the connection to the database
Database = mysql.connector.connect(user='root', password='')
cursor = Database.cursor()
cursor.execute("USE prg04;")

selection = 0

while True:
    # continuous loop that takes in input after printing options
    selection = input("1. List reservations\n"
                      "2. Make a new reservation\n"
                      "3. Delete a reservation\n"
                      "4. Quit\n\n")

    # if the input is 4, stop program
    if selection.strip() == "4":
        break

    # if the input is 1, print all current reservations
    if selection.strip() == "1":
        cursor.execute("SELECT * FROM ReservationsView;")

        print("Number  Room       Date       Time                User")

        for (number, room, date, time, user) in cursor:
            print("{}       {}  {} {}   {}"\
                .format(number, room, date, time, user))
        print()

    # if the input is neither 1, 2, 3, or 4, then print an error statement
    else:
        print("Invalid input.\n"
                "Please only type the number '1', '2', '3', or '4'.\n")