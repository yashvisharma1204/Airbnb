create database airbnb;
use airbnb;
create table users(
	uid int(3) primary key,
    uname varchar(50) not null,
    email varchar(30) unique,
    phone_no int(10) unique,
    dob date,
    passwords varchar(16) unique
);
create table property(
	pid int(3) primary key,
    title varchar(20) not null,
    price_per_night int(15) not null,
    location varchar(20)
);
create table host(
	hid int(3) primary key,
    uid int(3),
    host_desc varchar(30) unique,
    host_rating decimal(1) not null,
    foreign key(uid) references users(uid)
);
create table hosting(
	pid int(3) not null,
    hid int(3) not null,
    date_of_hosting date,
    foreign key(pid) references property(pid),
    foreign key(hid) references host(hid)
);
create table booking(
	bid int(3) primary key,
    uid int(3) not null,
    pid int(3) not null,
    check_in_date date,
    check_out_date date,
    total_price int(20),
    foreign key(uid) references users(uid),
    foreign key(pid) references property(pid)
);
create table transaction(
	tid int(3) primary key,
    bid int(3) not null,
    total_price int(20) not null,
    payment_status varchar(10) CHECK(payment_status IN ('pending', 'received', 'declined')),
    time_stamp time,
    foreign key(bid) references booking(bid)
);
create table review(
	rid int(3) primary key,
    uid int(3) not null,
    pid int(3) not null,
    content varchar(50),
    rating decimal not null,
    foreign key(uid) references users(uid),
    foreign key(pid) references property(pid)
);

create table amenity(
	aid int(3) primary key,
    aname varchar(30) not null
);

create table property_amenity(
	pid int(3) not null,
    aid int(3) not null,
    quantity integer not null,
    foreign key(aid) references amenity(aid),
    foreign key(pid) references property(pid)
);
-- inserting values
insert into users values(1,'Rohan','rohan@gmail.com',1234567891,'2004-12-10','XYZQWERTY'),(2,'Riya','riya21@gmail.com',890765434,'2000-01-11','93Xuzqieth');
insert into users values(3,'Shreya','shreyaa134@gmail.com',234908168,'1998-05-10','wnuchdoemso'),(4,'Archisa','archie25@gmail.com',989764538,'1995-11-04','dbwuaimapple');
insert into users values(5,'Tiya','tee903@gmail.com',989888735,'2001-08-01','nousytu');
insert into users values(6, 'John', 'john@example.com', 987654321, '1990-06-15', 'password123'),(7, 'Emma', 'emma@example.com', 987654322, '1992-09-20', 'password456'),(8, 'Michael', 'michael@example.com', 987654323, '1985-03-25', 'password789'),(9, 'Sophia', 'sophia@example.com', 987654324, '1988-11-30', 'passwordabc'),(10, 'David', 'david@example.com', 987654325, '1995-07-10', 'passworddef');

insert into property values(1,'Hello world',2000,'Delhi'),(2,'Paradise',5000,'Leh Ladhak'),(3,'Heaven Blues',4500,'Delhi'),(4,'Yellow door',2400,'Mumbai'),(5,'Vegas',3800,'Kolkata');
insert into property values(6, 'Tranquil Cottage', 3000, 'Shimla'),(7, 'Ocean View Villa', 7000, 'Goa'),(8, 'Mountain Retreat', 4000, 'Manali'),(9, 'Riverside Cabin', 2600, 'Rishikesh'),(10, 'Urban Loft', 3500, 'Bangalore');

insert into host values(1,1,'Friendly and Welcoming',4.5),(2,3,'Knowledgeable and Helpful', 4.2),(3,5,'Warm and Hospitable', 4.7);
insert into host values(4, 2, 'Courteous and Attentive', 4.6),(5, 4, 'Professional and Efficient', 4.4),(6, 6, 'Charming and Accommodating', 4.8),(7, 8, 'Approachable and Friendly', 4.3),(8, 10, 'Attentive and Resourceful', 4.5);

insert into hosting values(1, 1, '2024-03-26'),(2, 2, '2024-03-27'),(3, 3, '2024-03-28');
insert into hosting values(4, 4, '2024-03-29'),(5, 5, '2024-03-30'),(1, 6, '2024-04-01'),(2, 7, '2024-04-02');

insert into booking values(101, 1, 1, '2024-04-01', '2024-04-05', 8000),(102, 2, 2, '2024-04-02', '2024-04-04', 10000),(103, 1, 3, '2024-04-03', '2024-04-06', 13500),(104, 2, 4, '2024-04-04', '2024-04-07', 7200),(105, 1, 5, '2024-04-05', '2024-04-08', 11400);
insert into booking values(106, 3, 1, '2024-04-02', '2024-04-06', 8500),(107, 4, 2, '2024-04-03', '2024-04-05', 9600),(108, 5, 3, '2024-04-04', '2024-04-07', 11000),(109, 1, 4, '2024-04-05', '2024-04-09', 7800),(110, 2, 5, '2024-04-06', '2024-04-10', 9300);

insert into transaction values(201, 101, 8000, 'pending', '12:30:00'),(202, 102, 10000, 'received', '13:45:00'),(203, 103, 13500, 'declined', '14:20:00'),(204, 104, 7200, 'pending', '15:10:00'),(205, 105, 11400, 'received', '16:55:00');
insert into transaction values(206, 106, 9500, 'pending', '17:30:00'),(207, 107, 8200, 'received', '18:15:00'),(208, 108, 11000, 'pending', '19:00:00'),(209, 109, 7800, 'received', '19:45:00'),(210, 110, 9300, 'declined', '20:30:00');

insert into review (rid, uid, pid, content, rating) values(301, 1, 1, 'Great location and amenities!', 4.5),(302, 2, 2, 'Absolutely stunning views!', 5.0),(303, 3, 3, 'Comfortable stay, but noisy neighbors.', 3.5),(304, 4, 4, 'Clean and cozy room.', 4.0),(305, 5, 5, 'Excellent service!', 4.8);
insert into review (rid, uid, pid, content, rating) values(306, 1, 2, 'Very peaceful and relaxing atmosphere.', 4.3),(307, 2, 3, 'Spacious rooms with great amenities.', 4.7),(308, 3, 4, 'Beautifully decorated and well-maintained.', 4.5),(309, 4, 5, 'Friendly staff and convenient location.', 4.2),(310, 5, 1, 'Overall, a fantastic experience!', 4.9);

insert into amenity (aid, aname) values(1, 'Wifi'),(2, 'Swimming'),(3, 'Parking'),(4, 'Gym'),(5, 'Balcony');
insert into amenity (aid, aname) values(6, 'Kitchen'),(7, 'Air Conditioning'),(8, 'Heating'),(9, 'TV'),(10, 'Pool');

insert into property_amenity (pid, aid, quantity) values(1, 1, 2), (1, 3, 1),(2, 2, 1), (2, 3, 2), (3, 1, 1), (3, 4, 1), (4, 3, 3), (5, 1, 2), (5, 5, 1);
insert into property_amenity (pid, aid, quantity) values(1, 4, 2),(2, 4, 1),(3, 5, 1),(4, 1, 1),(5, 3, 2);

SELECT DISTINCT location FROM property;
SELECT * FROM property LIMIT 4;
SELECT * FROM property ORDER BY (SELECT COUNT(*) FROM review WHERE review.pid = property.pid) DESC LIMIT 3;
SELECT * FROM property ORDER BY price_per_night DESC LIMIT 3;
SELECT * FROM booking ORDER BY total_price DESC;
SELECT * FROM booking LIMIT 3;
SELECT * FROM booking ORDER BY total_price LIMIT 3;
SELECT SUM(total_price) AS total FROM booking;
-- Maximum host rating
SELECT MAX(host_rating) AS max_host_rating FROM host;
-- Minimum host rating
SELECT MIN(host_rating) AS min_host_rating FROM host;
-- Average host rating
SELECT AVG(host_rating) AS avg_host_rating FROM host;
-- Number of hosts
SELECT COUNT(*) AS total_hosts FROM host;
-- Maximum total price
SELECT MAX(total_price) AS max_total_price FROM booking;
-- Minimum total price
SELECT MIN(total_price) AS min_total_price FROM booking;
-- Average total price
SELECT AVG(total_price) AS avg_total_price FROM booking;

-- Joins
SELECT *
FROM property
INNER JOIN booking ON property.pid = booking.pid;
-- all matching booking rows should be there and all matching property rows should be there
/*WITH properties_to_delete AS (
    SELECT property.pid
    FROM property
    INNER JOIN booking ON property.pid = booking.pid
    WHERE booking.check_out_date < CURRENT_DATE()
)
DELETE FROM property
WHERE pid IN (SELECT pid FROM properties_to_delete);*/
-- left outer -> all the rows from the left table should be present and only matching rows from the right table
-- all property rows should be there while all matching booking rows should be there
SELECT *
FROM property
LEFT OUTER JOIN booking ON property.pid = booking.pid;
-- right outer -> all the rows from right table should be present and only matching rows from the left rows should be present
-- all booking rows should be there while all matching property rows should be there
SELECT *
FROM property
RIGHT OUTER JOIN booking ON property.pid = booking.pid;
 -- full outer -> all the rows from both the tables should be present 
SELECT *
FROM property
LEFT JOIN booking ON property.pid = booking.pid
UNION
SELECT *
FROM property
RIGHT JOIN booking ON property.pid = booking.pid
WHERE property.pid IS NULL;
-- left anti -> values present in only left table should be present
SELECT *
FROM property
LEFT JOIN booking ON property.pid = booking.pid
WHERE booking.pid IS NULL;
 -- right anti -> values present in only right table should be present
SELECT *
FROM property
RIGHT JOIN booking ON property.pid = booking.pid
WHERE booking.pid IS NULL;



