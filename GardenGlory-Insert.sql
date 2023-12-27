
USE GardenGlory;
GO

/*****OWNER DATA*****/

INSERT INTO OWNERR VALUES(
		'Mary Jones', 'Mary.Jones@somewhere.com', 'Individual'
);
INSERT INTO OWNERR VALUES(
		'DT Enterprises', 'DTE@dte.com', 'Corporation'
);
INSERT INTO OWNERR VALUES(
		'Sam Douglas', 'Sam.Douglas@somewhere.com', 'Individual'
);
INSERT INTO OWNERR VALUES(
		'UNY Enterprises', 'UNYE@unye.com', 'Corporation'
);
INSERT INTO OWNERR VALUES(
		'Doug Samuels', 'Doug.Samuels@somewhere.com', 'Individual'
);

/*****OWNED_PROPERTY DATA*****/

INSERT INTO OWNED_PROPERTY VALUES(
		'Eastlake Building', 'Office', '123 Eastlake', 'Seattle', 'WA','98119', 2
);
INSERT INTO OWNED_PROPERTY VALUES(
		'Elm St Apts', 'Apartments', '4 East Elm', 'Lynwood', 'WA','98223', 1
);
INSERT INTO OWNED_PROPERTY VALUES(
		 'Jefferson Hill', 'Office', '42 West 7th St', 'Bellevue', 'WA','98007', 2
);
INSERT INTO OWNED_PROPERTY VALUES(
		 'Lake View Apts', 'Apartments', '1265 32nd Avenue', 'Redmond', 'WA','98052', 3
);
INSERT INTO OWNED_PROPERTY VALUES(
		 'Kodak Heights Apts', 'Apartments', '65 32nd Avenue', 'Redmond', 'WA','98052', 4
);
INSERT INTO OWNED_PROPERTY VALUES(
		 'Jones House', 'Private Residence', '1456 48th St', 'Bellevue', 'WA','98007', 1
);
INSERT INTO OWNED_PROPERTY VALUES(
		 'Douglas House', 'Private Residence', '1567 51st St', 'Bellevue', 'WA','98007', 3
);
INSERT INTO OWNED_PROPERTY VALUES(
		 'Samuels House', 'Private Residence', '567 151st St', 'Redmond', 'WA','98052', 5
);

/*****GG_SERVICE*****/
INSERT INTO GG_SERVICE VALUES( 'Mow Lawn', 25.00);
INSERT INTO GG_SERVICE VALUES( 'Plant Annuals', 25.00);
INSERT INTO GG_SERVICE VALUES( 'Weed Garden', 30.00);
INSERT INTO GG_SERVICE VALUES( 'Trim Hedge', 45.00);
INSERT INTO GG_SERVICE VALUES( 'Prune Small Tree', 60.00);
INSERT INTO GG_SERVICE VALUES( 'Trim Medium Tree', 100.00);
INSERT INTO GG_SERVICE VALUES( 'Trim Large Tree', 125.00);

/*****EMPLOYEE*****/
INSERT INTO EMPLOYEE VALUES(
		 'Smith', 'Sam', '206-254-1234', 'Master' 
);
INSERT INTO EMPLOYEE VALUES(
		 'John', 'Evanston', '206-254-2345', 'Senior' 
);
INSERT INTO EMPLOYEE VALUES(
		 'Murray', 'Dale', '206-254-3456', 'Junior'
);
INSERT INTO EMPLOYEE VALUES(
		 'Murphy', 'Jerry', '585-545-8765', 'Master'
);
INSERT INTO EMPLOYEE VALUES(
		 'Fontaine', 'Joan', '206-254-4567', 'Senior'
);

/*****PROPERTY_SERVICE*****/

INSERT INTO PROPERTY_SERVICE VALUES( 1, 2, '2017-05-05', 1, 4.50);
INSERT INTO PROPERTY_SERVICE VALUES( 3, 2, '2017-05-08', 3, 4.50);
INSERT INTO PROPERTY_SERVICE VALUES( 2, 1, '2017-05-08', 2, 2.75);
INSERT INTO PROPERTY_SERVICE VALUES( 6, 1, '2017-05-10', 5, 2.50);
INSERT INTO PROPERTY_SERVICE VALUES( 5, 4, '2017-05-12', 4, 7.50);
INSERT INTO PROPERTY_SERVICE VALUES( 8, 1, '2017-05-15', 4, 2.75);
INSERT INTO PROPERTY_SERVICE VALUES( 4, 4, '2017-05-19', 1, 1.00);
INSERT INTO PROPERTY_SERVICE VALUES( 7, 1, '2017-05-21', 2, 2.50);
INSERT INTO PROPERTY_SERVICE VALUES( 6, 3, '2017-06-03', 5, 2.50);
INSERT INTO PROPERTY_SERVICE VALUES( 5, 7, '2017-06-08', 4, 10.50);
INSERT INTO PROPERTY_SERVICE VALUES( 8, 3, '2017-06-12', 4, 2.75);
INSERT INTO PROPERTY_SERVICE VALUES( 4, 5, '2017-06-15', 1, 5.00);
INSERT INTO PROPERTY_SERVICE VALUES( 7, 3, '2017-06-19', 2, 4.00);
