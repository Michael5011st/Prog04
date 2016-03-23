#Andrew Reed and Michael Turnbach
Create database prg04;
# use the database
Use prg04;
#Create the Users
Create table Users(id int Unique, name VARCHAR(20));
#creates the Rooms table;
Create table Rooms(build VARCHAR(20) unique, number int Unique);
#create the Reservations table
Create table Reservations(seq int AUTO_Increment, date, begin time, end time,Users int foreign key, 
Build VARCHAR(20) foreign key, Room int Foreign key);

#Inserts into Users
Insert Into Users values(1,John);
Insert Into Users values(2,Mary);

#Inserts into Rooms
Insert Into Rooms values(CHS,110);
Insert Into Rooms values(PPHAC,113);
Insert Into Rooms values(PPHAC,114);

#Inserts into Reservations
Insert Into Reservations values('2016-03-20', '08:00', '09:00', 	1, 'PPHAC', 113), 
	('2016-04-01', '08:00', '10:00', 2, 'PPHAC', 114);

Create View ReservationsView
	as Select seq as number,
	Concat(build, '-', number) as room,
	date, concat(begin, '-', end) as time,
	concat(id, '-', name)
	from  Users inner join reservations on
	users.id = reservations.users inner join
	room on reservations.room = rooms.number AND
	reservations.build = rooms.build;