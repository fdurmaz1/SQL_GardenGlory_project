
CREATE DATABASE GardenGlory;
GO

USE GardenGlory;
GO

CREATE TABLE OWNERR(
OwnerID					Int			NOT NULL IDENTITY (1,1),
OwnerName				Char(50)	NOT NULL,
OwnerEmailAddress		Char(100)	NOT NULL,
OwnerType				Char(50)	NOT NULL,
CONSTRAINT				OWNERR_PK	PRIMARY KEY(OwnerID)
);

CREATE TABLE OWNED_PROPERTY(
PropertyID				Int					NOT NULL IDENTITY (1,1),
PropertyName			Char(50)			NOT NULL,
PropertyType			Char(50)			NOT NULL,
Street					Char(50)			NOT NULL,
City					Char(50)			NOT NULL,
States					Char(2)				NOT NULL,
Zip						Char(10)			NOT NULL,
OwnerID					Int					NOT NULL,
CONSTRAINT				OWNED_PROPERTY_PK	PRIMARY KEY(PropertyID),
CONSTRAINT 				OWNED_OWNERR_FK		FOREIGN KEY (OwnerID)
											REFERENCES OWNERR(OwnerID)
											ON UPDATE CASCADE
											ON DELETE NO ACTION,
);

CREATE TABLE GG_SERVICE(
ServiceID				Int					NOT NULL IDENTITY (1,1),
ServiceDescription		Char(100)			NOT NULL,
CostPerHour				Numeric(6,2)		NULL,
CONSTRAINT				GG_SERVICE_PK		PRIMARY KEY(ServiceID)
);

CREATE TABLE EMPLOYEE(
EmployeeID				Int					NOT NULL IDENTITY (1,1),
LastName				Char(25)			NOT NULL,
FirstName				Char(25)			NOT NULL,
CellPhone				Char(12)			NOT NULL,
ExperienceLevel			Char(15)			NOT NULL,
CONSTRAINT				EMPLOYEE_PK			PRIMARY KEY(EmployeeID)
);

CREATE TABLE PROPERTY_SERVICE(
PropertyServiceID		Int					NOT NULL IDENTITY (1,1),
PropertyID				Int					NOT NULL,
ServiceID				Int					NOT NULL,
ServiceDate				Date	 			NOT NULL,
EmployeeID				Int					NOT NULL,
HoursWorked				Numeric(4,2)		NULL,
CONSTRAINT				PROPERTY_SERVICE_PK		PRIMARY KEY(PropertyServiceID,PropertyID),
CONSTRAINT 				PROPSERV_OWNEDPROP_FK	FOREIGN KEY (PropertyID)
												REFERENCES OWNED_PROPERTY(PropertyID)
												ON UPDATE CASCADE
												ON DELETE NO ACTION,
CONSTRAINT 				PROPSERV_GGSERV_FK		FOREIGN KEY (ServiceID)
												REFERENCES GG_SERVICE(ServiceID)
												ON UPDATE CASCADE
												ON DELETE NO ACTION,
CONSTRAINT 				PROPSERV_EMP_FK			FOREIGN KEY (EmployeeID)
												REFERENCES EMPLOYEE(EmployeeID)
												ON UPDATE CASCADE
												ON DELETE NO ACTION,
);