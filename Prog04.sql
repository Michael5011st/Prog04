#Andrew Reed and Michael Turnbach
Create database prg04;
# use the database
Use prg04;

#Drop tables
Drop Table Users;
Drop Table Rooms;
Drop Table Reservations;
Drop View ReservationsView;

#Create the Users
Create table Users(id int Unique, name VARCHAR(20));
#creates the Rooms table;
Create table Rooms(build VARCHAR(20), number int, Primary Key(build, number));
#create the Reservations table
Create table Reservations(seq int AUTO_Increment unique, date date, begin time, end time, Users int references Users(id),
Build VARCHAR(20) references Room(build), Room int references Room(number));

#Inserts into Users
Insert Into Users values(1, 'John');
Insert Into Users values(2, 'Mary');

#Inserts into Rooms
Insert Into Rooms values('CHS', 110);
Insert Into Rooms values('PPHAC', 113);
Insert Into Rooms values('PPHAC', 114);

#Inserts into Reservations
Insert Into Reservations values(null, '2016-03-20', '08:00', '09:00', 	1, 'PPHAC', 113), 
	(null, '2016-04-01', '08:00', '10:00', 2, 'PPHAC', 114);

Create View ReservationsView
	as Select seq as number,
	Concat(reservations.build, '-', number) as room,
	date, concat(begin, '-', end) as time,
	concat(id, '-', name) as user
	from  Users inner join reservations on
	users.id = reservations.users inner join
	rooms on reservations.room = rooms.number AND
	reservations.build = rooms.build;