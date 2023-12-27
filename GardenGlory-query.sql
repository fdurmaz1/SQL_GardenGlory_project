
USE GardenGlory;
GO

/*****Write the SQL query to display LastName, FirstName, and CellPhone for all
employees having an experience level of Master and FirstName that begins
with the letter J.*****/

SELECT		LastName, FirstName, CellPhone
FROM		EMPLOYEE
WHERE		ExperienceLevel = 'Master'
AND			FirstName LIKE 'J%';


/*****Write the SQL query to display LastName, FirstName, and CellPhone for
employees who have worked on a property in Seattle.*****/

SELECT	LastName, FirstName, CellPhone 
FROM	EMPLOYEE JOIN PROPERTY_SERVICE ON EMPLOYEE.EmployeeID = PROPERTY_SERVICE.EmployeeID
				 JOIN OWNED_PROPERTY ON PROPERTY_SERVICE.PropertyID = OWNED_PROPERTY.PropertyID
WHERE City= 'Seattle';

/** or we can do subquery... **/

SELECT	LastName, FirstName, CellPhone 
FROM	EMPLOYEE
WHERE	EmployeeID IN (SELECT	EmployeeID
					   FROM		PROPERTY_SERVICE
					   WHERE	PropertyID IN (SELECT PropertyID
											   FROM   OWNED_PROPERTY
											   WHERE  City = 'Seattle'));


/*****Write the SQL query to display LastName, FirstName, and CellPhone for
employees who have worked on a property owned by a corporation. *****/

SELECT DISTINCT LastName, FirstName, CellPhone 
FROM   EMPLOYEE JOIN PROPERTY_SERVICE ON EMPLOYEE.EmployeeID = PROPERTY_SERVICE.EmployeeID
			    JOIN OWNED_PROPERTY ON PROPERTY_SERVICE.PropertyID = OWNED_PROPERTY.PropertyID
			    JOIN OWNERR ON OWNED_PROPERTY.OwnerID = OWNERR.OwnerID
WHERE OwnerType= 'Corporation'

/** or we can do subquery... **/

SELECT LastName, FirstName, CellPhone 
FROM   EMPLOYEE
WHERE  EmployeeID IN (SELECT EmployeeID
					  FROM	 PROPERTY_SERVICE
					  WHERE	 PropertyID IN (SELECT PropertyID
											FROM   OWNED_PROPERTY
											WHERE  OwnerID IN (SELECT OwnerID
															   FROM	  OWNERR
															   WHERE  OwnerType = 'Corporation')));


/*****Write an SQL statement to show the LastName, FirstName, CellPhone, and sum
of hours worked for each employee.*****/

SELECT		EM.LastName, EM.FirstName, EM.CellPhone,
			SUM(PS.HoursWorked) AS TotalHoursWorked
FROM		PROPERTY_SERVICE AS PS JOIN EMPLOYEE AS EM ON EM.EmployeeID = PS.EmployeeID
GROUP BY	EM.LastName, EM.FirstName,EM.Cellphone
ORDER BY	EM.LastName, EM.FirstName;







