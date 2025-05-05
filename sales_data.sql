
-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Region VARCHAR(50)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create Sales_Reps table
CREATE TABLE Sales_Reps (
    RepID INT PRIMARY KEY,
    RepName VARCHAR(100),
    Region VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    RepID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RepID) REFERENCES Sales_Reps(RepID)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert dummy data into Customers
INSERT INTO Customers VALUES 
(1, 'Alice Corp', 'North'),
(2, 'Beta LLC', 'South'),
(3, 'Gamma Inc', 'East'),
(4, 'Delta Co', 'West');

-- Insert dummy data into Products
INSERT INTO Products VALUES 
(1, 'Laptop', 'Electronics', 800),
(2, 'Smartphone', 'Electronics', 500),
(3, 'Office Chair', 'Furniture', 120),
(4, 'Notebook', 'Stationery', 5);

-- Insert dummy data into Sales_Reps
INSERT INTO Sales_Reps VALUES 
(1, 'John Smith', 'North'),
(2, 'Emily Davis', 'South'),
(3, 'Michael Brown', 'East'),
(4, 'Laura Wilson', 'West');

-- Insert dummy data into Orders
INSERT INTO Orders VALUES 
(1001, 1, 1, '2023-12-01'),
(1002, 2, 2, '2024-01-15'),
(1003, 3, 3, '2024-02-20'),
(1004, 4, 4, '2024-03-05');

-- Insert dummy data into OrderDetails
INSERT INTO OrderDetails VALUES 
(1, 1001, 1, 2),
(2, 1001, 4, 10),
(3, 1002, 2, 3),
(4, 1003, 3, 4),
(5, 1004, 2, 1),
(6, 1004, 3, 2);
