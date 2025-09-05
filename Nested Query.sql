SELECT Name
FROM Students
WHERE ID = (SELECT StudentID FROM Orders WHERE OrderID = 1);
