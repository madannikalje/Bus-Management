Create Database MyBusDB;
Use MyBusDB;
Create Table Login
(
UserName varchar(30) Primary key,
Password varchar(30)
);

Insert into Login values('admin','admin');


Create Table BusDepot
(
Name  varchar(30) not null,
Address varchar(100)  not null,
ContactNo varchar(30)  not null,
ContactPerson varchar(30)  not null,
EmailID varchar(30)  not null,
WebSite varchar(30)  not null
);

Create Table Employee
(
EmpNo int primary key auto_increment,
EmpName varchar(50),
EmpAddress varchar(100),
BirthDate date,
JoinDate date,
ContactNo varchar(30),
EmailID varchar(30),
Designation varchar(30),
Photo MediumBlob
);

Create Table Bus
(
BusNo varchar(20) primary key,
BusType varchar(30),
Seats int,
ASeats int,
Reserved int
);

Create Table RouteInfo 
(
Id int Primary Key Auto_Increment,
BusNo varchar(50),
ScheduledDate date,
RouteFrom varchar(50),
RouteTo varchar(50),
TimeUp varchar(20),
Fare numeric(8,2),
Driver varchar(30),
Conductor varchar(30)
);

Create View BusRouteView as 
Select a.ScheduledDate,a.Id,a.BusNo,b.BusType,Seats,ASeats,Reserved,RouteFrom,RouteTo,TimeUp,Fare,Driver,Conductor
from RouteInfo a inner join Bus b on a.BusNo=b.BusNo;

Create Table Booking
(
TicketNo int primary key auto_increment,
BookingDate date,
JourneyDate date,
RouteId int references RouteInfo(Id),
TotalFare numeric(10,2)
);
Create Table BookingDetails
(
TicketNo int references Booking(TicketNo),
SeatNo int,
Name varchar(30),
Age int,
Gender varchar(30)
);

Create View BookingView as  select TicketNo,BookingDate,JourneyDate,Booking.RouteId,BusNo,BusType,RouteFrom,RouteTo,TimeUp,
TotalFare from Booking join BusRouteView on Booking.RouteId=BusRouteView.Id;

