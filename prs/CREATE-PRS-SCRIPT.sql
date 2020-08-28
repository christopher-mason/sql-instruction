DROP DATABASE IF EXISTS PRS;
CREATE DATABASE PRS;
USE PRS;

-- Create Table 1
Create table User (
 ID 				int 			primary key auto_increment,
 UserName 			varchar(20) 	not null unique,
 Password 			varchar(10)		not null,
 FirstName 			varchar(20)		not null,
 LastName 			varchar(20) 	not null,
 PhoneNumber 		varchar(12)		not null,
 Email 				varchar(75)		not null,
 IsReviewer 		Tinyint			not null,
 IsAdmin 			Tinyint			not null,
CONSTRAINT uname unique (UserName)
);

-- Create Table 2
Create table Vendor (
 ID 			int 			primary key auto_increment,
 Code 			varchar(10) 	not null unique,
 Name 			varchar(255)	not null,
 Address 		varchar(255)	not null,
 City 			varchar(255) 	not null,
 State 			varchar(2)		not null,
 Zip 			varchar(5)		not null,
 PhoneNumber 	varchar(12)		not null,
 Email 			varchar(100)	not null,
CONSTRAINT vcode unique (Code)
);

-- Create Table 3
Create table Request (
 ID 					int 			primary key auto_increment,
 UserID 				int			 	not null,
 Description 			varchar(100)	not null,
 Justification			varchar(255)	not null,
 DataNeeded				date		 	not null,
 DeliveryMode			varchar(25)		not null,
 Status 				varchar(20)		not null,
 Total		 			decimal(10,2)	not null,
 SubmittedDate			DateTime		not null,
 ReasonForRejection		varchar(100),
Foreign Key (UserID) references User(ID)
);

-- Create Table 4
Create table Product (
 ID 					int 			primary key auto_increment,
 VendorID 				int			 	not null,
 PartNumber 			varchar(50)		not null,
 Name					varchar(150)	not null,
 Price					decimal(10,2) 	not null,
 Unit					varchar(255),
 PhotoPath 				varchar(255),
Foreign Key (VendorID) references Vendor(ID),
CONSTRAINT vendor_part unique (VendorID, PartNumber)
);


-- create Table 5
Create table LineItem (
 ID 			int 	primary key auto_increment,
 RequestID 		int		not null unique,
 ProductID	 	int		not null unique,
 Quantity		int		not null,
Foreign Key (ProductID) references Product(ID),
Foreign Key (RequestID) references Request(ID),
CONSTRAINT req_pdt unique (RequestID, ProductID)
);

-- Create prs_user
DROP USER IF EXISTS prs_user@localhost;
CREATE USER prs_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;

insert into User values
	(1, 'SYSTEM', 'XXXXX', 'System', 'System', 'XXX-XXX-XXXX', 'system@test.com', 0, 0),
    (2, 'cmason', 'MyPRSProj', 'Chris', 'Mason', '513-010-1010', 'cmason@prs.com', 1, 1);

insert into Vendor values
	(1, 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
    (2, 'AP-1001', 'Apple Inc', '1 Infinite Loop', 'Cupertino', 'CA', '95014', '800-123-4567', 'genius@apple.com'),
    (3, 'AM-1001', 'Amazon', '410 Terry Ave. North', 'Seattle', 'WA', '98109', '206-266-1000', 'amazon@amazon.com'),
    (4, 'ST-1001', 'Staples', '9550 Mason Montgomery Rd', 'Mason', 'OH', '45040', '513-754-0235', 'support@order.staples.com'),
    (5, 'MC-1001', 'Micro Center', '11755 Mosteller Rd', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');
    
insert into Product values
	(1, 1, 'ME280LL', 'iPad Mini 2', 296.99, null, null),
    (2, 2, 'ME280LL', 'iPad Mini 2', 299.99, null, null),
	(3, 3, '105810', 'Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap', 8.99, '1 Ream / 500 Sheets', null),
    (4, 4, '122374', 'Hammermill copy Plus Copy Paper, 8 1/2 x 11", Case', 29.99, '1 Case, 10 Reams, 500 Sheets per ream', null),
    (5, 4, '784551', 'Logitech M325 Wireless Optical Mouse, Ambidextrous, Black', 14.99, null, null),
    (6, 4, '382955', 'Staples Mouse Pad, Black', 2.99, null, null),
    (7, 4, '2122178', 'AOC 24-Inch Class LED Monitor', 99.99, null, null),
    (8, 4, '2460649', 'Laptop HP Notebook 15-AY163NR', 529.99, null, null),
    (9, 4, '2256788', 'Laptop Dell 13552-3240BLK 15.6"', 239.99, null, null),
    (10, 4, 'IM12M9520', 'Laptop Acer Acer Aspire One Cloudbook 14"', 224.99, null, null),
    (11, 4, '940600', 'Canon imageCLASS Copier (D530)', 99.99, null, null),
    (12, 5, '228148', 'Acer Aspire ATC-780A-UR12 Desktop Computer', 399.99, NULL, '/images/AcerAspireDesktop.jpg'),
    (13, 5, '279364', 'Lenovo IdeaCentre All-In-One Desktop', 349.99, NULL, '/images/LenovoIdeaCenter.jpg');