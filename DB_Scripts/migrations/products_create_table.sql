IF OBJECT_ID('dbo.Products', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Products;
END
GO

CREATE TABLE dbo.Products
(
    ProductId INT IDENTITY(1,1) NOT NULL,
    ProductName NVARCHAR(200) NOT NULL,
    Price DECIMAL(18,2) NOT NULL,
    StockQuantity INT NOT NULL CONSTRAINT CK_Products_StockQuantity_NonNegative CHECK (StockQuantity >= 0),
    Category NVARCHAR(100) NULL,
    IsActive BIT NOT NULL CONSTRAINT DF_Products_IsActive DEFAULT (1),
    CreatedAt DATETIME2(3) NOT NULL CONSTRAINT DF_Products_CreatedAt DEFAULT (SYSUTCDATETIME()),

    CONSTRAINT PK_Products PRIMARY KEY CLUSTERED (ProductId)
);
GO

-- Optional index for faster lookups by name
CREATE INDEX IX_Products_ProductName ON dbo.Products(ProductName);
GO

