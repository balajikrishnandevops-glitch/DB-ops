CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1), -- Automatically increments for each new row
    ProductID INT NOT NULL,               -- Links to your Products table
    CustomerID INT NOT NULL,              -- Links to your Customers table
    Quantity INT NOT NULL DEFAULT 1,      -- Number of items sold
    UnitPrice DECIMAL(18, 2) NOT NULL,    -- Price per item at the time of sale
    SaleDate DATETIME DEFAULT GETDATE(),  -- The date/time the sale occurred
    TotalAmount AS (Quantity * UnitPrice) -- A computed column for the total price
);
