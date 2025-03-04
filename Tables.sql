CREATE TABLE DimCustomer (
	CustomerID int NOT NULL PRIMARY KEY,
	CompanyName varchar(50) NOT NULL,
	ContactName varchar(50) NOT NULL,
	City varchar(50),
	Region varchar(50),
	PostalCode varchar(50),
	Country varchar(50)
)

CREATE TABLE DimProduct	(
	ProductID int NOT NULL PRIMARY KEY,
	ProductName varchar(50) NOT NULL,
	SupplierName varchar(50),
	CategoryName varchar(50),
	QuantityPerUnit varchar(50)
)

CREATE TABLE DimTime (
	TimeID INT NOT NULL PRIMARY KEY,
	_year int NOT NULL,
	_month int NOT NULL,
	_day int NOT NULL
)

CREATE TABLE DimSubOrder (
	OrderID int not null primary key 
)

CREATE TABLE FactOrder (
	OrderID int not null primary key ,
	ProductID int Null,
	CustomerID nchar(10),
	EmployeeID int,
	OrderDate date,
	TimeID int,
	Qty int,
	UnitPrice money,
	Discount money,
	TotalLine money,
	ContarOrden float
)

--CREATE TABLE DimSubEntrada  (
    --EntradaID 
--)

--CREATE TABLE DimSubSalida (
    --SalidaID
--)

--TODO CREAR FACT TABLES 