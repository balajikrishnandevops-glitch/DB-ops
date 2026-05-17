CREATE TABLE Products (
   ProductID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each product
   Name VARCHAR(255) NOT NULL, -- Name of the product
   CategoryID INT, -- Foreign key to a Categories table
   Price DECIMAL(10, 2) NOT NULL, -- Price of the product
   Stock INT DEFAULT 0, -- Quantity available in stock
   CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP -- Timestamp of creation
);