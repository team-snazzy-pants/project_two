CREATE TABLE StaffMember ( 
staffId VarChar2(10) 	PRIMARY KEY,
name VarChar2(100)	    NOT NULL,
email VarChar2(50)	    UNIQUE NOT NULL,
rating Number (1),	
salary Number (7, 2)	NOT NULL,
branchId VarChar2(10) 	
);

CREATE TABLE staffPhone (
staffId VarChar2(10)	REFERENCES StaffMember(staffId),
phone VarChar2(12)	    NOT NULL
);

CREATE TABLE staffAddress (
staffId VarChar2(10)	REFERENCES StaffMember(staffId),
street VarChar2(100), 	
city VarChar2(25),	
zipCode Number(5) 	
);

CREATE TABLE sellingAgent (
staffId VarChar2(10)	PRIMARY KEY REFERENCES StaffMember(staffId),
sellingAgentCommission Number (7, 2)	
);

CREATE TABLE listingAgent (
staffId VarChar2(10)	PRIMARY KEY REFERENCES StaffMember(staffId),
listingAgentCommission Number (7, 2)	
);

CREATE TABLE listedBy (
staffId VarChar2(10)	REFERENCES StaffMember(staffId),
propertyId VarChar2(10),
PRIMARY KEY (staffId, propertyID)
);

CREATE TABLE client
( clientId varchar2(10) PRIMARY KEY not null,
  email varchar2(50) not null,
  name varchar2(100),
  street varchar2(100),
  city varchar2(25),
  zipCode numeric(5)
);