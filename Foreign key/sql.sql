CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Insert a customer
INSERT INTO Customers (CustomerID, Name, Email)
VALUES (1, 'rakib', 'rakib@example.com');

-- Insert an order for Alice
INSERT INTO Orders (OrderID, OrderDate, Amount, CustomerID)
VALUES (101, '2025-05-14', 250.00, 1);            
