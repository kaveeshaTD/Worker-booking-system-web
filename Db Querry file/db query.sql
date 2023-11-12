CREATE TABLE [dbo].[users](
    Id int primary key not null identity(2500,1),
	[First_Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	Mobile nvarchar(50),
	U_location nvarchar(50),
	[Role] [nvarchar](50) default 'User' NULL,
	Work_type nvarchar(50) null,
	[Password] [nvarchar](50) NOT NULL,
	[confirm_password] [nvarchar](50) NOT NULL,
	Job_status int null,
	No_of_expeirence nvarchar(50) null,
	rate_per_hour float null,
	admin_approve int default 0
	)


create table locations(
Lo_id int identity(100 ,1),
U_Location nvarchar(50)
);

create table Work_type(
Work_id int identity(500 ,1),
Work_type nvarchar(50)
);

create table yearsof_expeirence(
Ex_id int identity(450 ,1),
No_of_years nvarchar(50)
);


create table rates(
rate_id int identity(350 ,1),
rate nvarchar(50)
);


create table booking(
Booking_id int primary key identity(800,1),
Booked_By_Id int null, 
Booked_By_Name nvarchar(50) null, 
Booked_By_Email nvarchar(50)  null,
Booked_By_location nvarchar(50)  null,
Booked_By_Mobile nvarchar(50)  null,
Booked_date nvarchar(50)  null,
Worker_Id int not null,
Worker_Name nvarchar(50) not null,
Worker_Email nvarchar(50) not null,
Worker_rate nvarchar(50) not null,
Worker_Location nvarchar(50) not null,
Worker_Mobile nvarchar(50) not null,
Job_Done_Status int default 0,
Job_done_time nvarchar(50)
);


create table contact_us(
Id int primary key identity(1,1),
u_name nvarchar(50) not null,
U_email nvarchar(50),
u_Message nvarchar(max),
);



select * from contact_us
select * from locations
select * from Work_type
select * from booking
select * from users

