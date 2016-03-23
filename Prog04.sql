#Andrew Reed and Michael Turnbach
Create database prg04;
# use the database
Use prg04;
#Create the Users
Create table Users(id int Unique, name VARCHAR(20));
#creates the Rooms table;
Create table Rooms(build VARCHAR(20) unique, number int Unique);
#create the Reservations table
Create table Reservations(seq int AUTO_Increment, date, begin time, end time,Users.id int foreign key, 
Build.id VARCHAR(20) foreign key, Room.number int Foreign key);

#Inserts into Users
Insert Into Users values(1,John);
Insert Into Users values(2,Mary);

#Inserts into Rooms
Insert Into Rooms values(CHS,110);
Insert Into Rooms values(PPHAC,113);
Insert Into Rooma values(PPHAC,114);