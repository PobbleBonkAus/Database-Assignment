/*
CREATE TABLE CUSTOMER (
    CustomerID INT PRIMARY KEY, -- Assuming you want a unique identifier
    _Name VARCHAR(100),
    ContactNumber VARCHAR(15)
);
CREATE TABLE SUPPLIER (
    SupplierID INT PRIMARY KEY, -- Unique identifier for supplier
    _Name VARCHAR(100),
    ContactNumber VARCHAR(15)
);
CREATE TABLE _ORDER (
    OrderID INT PRIMARY KEY,
    CustomerID INT, -- FK to CUSTOMER
    Amount DECIMAL(10, 2),
    Currency VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
);

CREATE TABLE WAREHOUSE (
    WarehouseID INT PRIMARY KEY,
    _Location VARCHAR(100),
    ContactNumber VARCHAR(15)
);

CREATE TABLE ITEM (
    ItemID INT PRIMARY KEY,
    Brand VARCHAR(50),
    Cost DECIMAL(10, 2),
    Currency VARCHAR(10),
    _Weight DECIMAL(10, 2), -- Assuming weight is in kg or lbs
    Age INT,
    WarehouseID INT, -- FK to WAREHOUSE
    FOREIGN KEY (WarehouseID) REFERENCES WAREHOUSE(WarehouseID)
);

CREATE TABLE EMPLOYEE (
    EmployeeID INT PRIMARY KEY, -- Assuming a unique identifier for employees
    _Name VARCHAR(100),
    Age INT,
    _Role VARCHAR(50),
    ContactNumber VARCHAR(15),
    WarehouseID INT, -- FK to WAREHOUSE
    FOREIGN KEY (WarehouseID) REFERENCES WAREHOUSE(WarehouseID)
);
CREATE TABLE INVOICE (
    InvoiceID INT PRIMARY KEY,
    SupplierID INT, -- FK to SUPPLIER
    Amount DECIMAL(10, 2),
    Currency VARCHAR(10),
    FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID)
);
CREATE TABLE OrderItem (
    OrderID INT, -- FK to ORDER
    ItemID INT,  -- FK to ITEM
    Quantity INT,
    PRIMARY KEY (OrderID, ItemID),
    FOREIGN KEY (OrderID) REFERENCES _ORDER(OrderID),
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
);
CREATE TABLE InvoiceItem (
    InvoiceID INT, -- FK to INVOICE
    ItemID INT,    -- FK to ITEM
    Quantity INT,
    PRIMARY KEY (InvoiceID, ItemID),
    FOREIGN KEY (InvoiceID) REFERENCES INVOICE(InvoiceID),
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
);


INSERT INTO CUSTOMER (CustomerID, _Name, ContactNumber)
VALUES
(101, 'Alice Smith', '555-1234'),
(102, 'Bob Johnson', '555-5678'),
(103, 'Charlie Davis', '555-8765'),
(104, 'Diane Harris', '555-3456'),
(105, 'Eve Walker', '555-4321');

INSERT INTO SUPPLIER (SupplierID, _Name, ContactNumber)
VALUES
(201, 'Adidas', '555-1111'),
(202, 'Puma', '555-2222'),
(203, 'Nike', '555-3333'),
(204, 'Under Armour', '555-4444'),
(205, 'Reebok', '555-5555');

INSERT INTO _ORDER (OrderID, CustomerID, Amount, Currency)
VALUES
(301, 101, 150.00, 'USD'),
(302, 102, 200.00, 'USD'),
(303, 103, 250.00, 'USD'),
(304, 104, 300.00, 'USD'),
(305, 105, 350.00, 'USD');

INSERT INTO WAREHOUSE (WarehouseID, _Location, ContactNumber)
VALUES
(501, 'New York', '555-9999'),
(502, 'Los Angeles', '555-8888'),
(503, 'Chicago', '555-7777'),
(504, 'Houston', '555-6666'),
(505, 'Phoenix', '555-5555');

INSERT INTO ITEM (ItemID, Brand, Cost, Currency, _Weight, Age, WarehouseID)
VALUES
(401, 'Adidas', 50.00, 'USD', 1.2, 2, 501),
(402, 'Puma', 75.00, 'USD', 2.0, 3, 502),
(403, 'Nike', 100.00, 'USD', 1.5, 1, 503),
(404, 'Under Armour', 120.00, 'USD', 1.3, 4, 504),
(405, 'Reebok', 130.00, 'USD', 2.3, 5, 505);

INSERT INTO EMPLOYEE (EmployeeID, _Name, Age, _Role, ContactNumber, WarehouseID)
VALUES
(601, 'John Doe', 30, 'Manager', '555-1234', 501),
(602, 'Jane Smith', 28, 'Technician', '555-5678', 502),
(603, 'Samuel Davis', 35, 'Operator', '555-8765', 503),
(604, 'Robert Harris', 40, 'Supervisor', '555-3456', 504),
(605, 'Sarah Walker', 32, 'Technician', '555-4321', 505);

INSERT INTO INVOICE (InvoiceID, SupplierID, Amount, Currency)
VALUES
(701, 201, 200.00, 'USD'),
(702, 202, 300.00, 'USD'),
(703, 203, 250.00, 'USD'),
(704, 204, 400.00, 'USD'),
(705, 205, 350.00, 'USD');
 
INSERT INTO OrderItem (OrderID, ItemID, Quantity)
VALUES
(301, 401, 2),
(302, 402, 1),
(303, 403, 4),
(304, 404, 3),
(305, 405, 5);

INSERT INTO InvoiceItem (InvoiceID, ItemID, Quantity)
VALUES
(701, 401, 5),
(702, 402, 2),
(703, 403, 8),
(704, 404, 3),
(705, 405, 6);
*/