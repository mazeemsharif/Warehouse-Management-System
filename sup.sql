-- Table: Warehouse
CREATE TABLE Warehouse (
    WarehouseID SERIAL PRIMARY KEY,
    WarehouseName VARCHAR(50) NOT NULL,
    WarehouseLocation VARCHAR(100) NOT NULL,
    WarehouseType VARCHAR(50),
    StorageCapacity INT CHECK (StorageCapacity >= 0),
    AvailableSpace INT DEFAULT 0 CHECK (AvailableSpace >= 0),
    ContactInformation VARCHAR(20)
);
INSERT INTO Warehouse (WarehouseName, WarehouseLocation, WarehouseType, StorageCapacity, AvailableSpace, ContactInformation) VALUES
  ('Central Lahore', 'Lahore', 'Electronics', 5000, 3000, '042-1111111'),
  ('North Karachi', 'Karachi', 'Textile', 6000, 4000, '021-2222222'),
  ('Islamabad Hub', 'Islamabad', 'Cold Storage', 4000, 2500, '051-3333333'),
  ('Multan Storage', 'Multan', 'General', 5500, 3300, '061-4444444'),
  ('Peshawar Depot', 'Peshawar', 'Furniture', 7000, 5000, '091-5555555'),
  ('Faisalabad Distribution', 'Faisalabad', 'Books', 4500, 2700, '041-6666666'),
  ('Rawalpindi Warehouse', 'Rawalpindi', 'Machinery', 5000, 3100, '051-7777777'),
  ('Hyderabad Store', 'Hyderabad', 'Groceries', 3800, 2400, '022-8888888'),
  ('Quetta Storage', 'Quetta', 'Clothing', 4200, 2800, '081-9999999'),
  ('Sialkot Base', 'Sialkot', 'Accessories', 3600, 2000, '052-1010101'),
  ('Bahawalpur Point', 'Bahawalpur', 'Spare Parts', 4700, 3200, '062-1111112'),
  ('Sargodha Center', 'Sargodha', 'Pharmacy', 5200, 4100, '048-1212121'),
  ('Sukkur Facility', 'Sukkur', 'Hardware', 4300, 3000, '071-1313131'),
  ('Larkana Point', 'Larkana', 'Software', 4900, 2900, '074-1414141'),
  ('Abbottabad Unit', 'Abbottabad', 'Medical', 3700, 2300, '099-1515151'),
  ('Mirpur Store', 'Mirpur', 'Books', 3400, 2000, '058-1616161'),
  ('Muzaffarabad Depot', 'Muzaffarabad', 'Textile', 3300, 1800, '058-1717171'),
  ('Gilgit Facility', 'Gilgit', 'Machinery', 3100, 1600, '058-1818181'),
  ('Skardu Hub', 'Skardu', 'Frozen Goods', 3000, 1500, '058-1919191'),
  ('Kohat Storage', 'Kohat', 'Stationery', 3200, 1700, '092-2020202'),
  ('D.G. Khan Store', 'D.G. Khan', 'Grocery', 4400, 3100, '064-2121212'),
  ('Rahim Yar Khan Center', 'Rahim Yar Khan', 'Electronics', 4100, 2800, '068-2222222'),
  ('Gujranwala Unit', 'Gujranwala', 'Fashion', 4700, 3500, '055-2323232'),
  ('Jhelum Warehouse', 'Jhelum', 'Glassware', 3500, 2100, '054-2424242'),
  ('Nawabshah Depot', 'Nawabshah', 'Wood', 3800, 2600, '024-2525252');

-- Table: Supplier
CREATE TABLE Supplier (
    SupplierID SERIAL PRIMARY KEY,
    SupplierName VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    ContactPerson VARCHAR(30),
    PhoneNumber VARCHAR(20) UNIQUE
);
INSERT INTO Supplier (SupplierName, Address, ContactPerson, PhoneNumber) VALUES
  ('ElectroMart', 'Lahore, Punjab', 'Ali Khan', '0300-1111111'),
  ('TechnoHub', 'Karachi, Sindh', 'Sara Ahmed', '0311-2222222'),
  ('SuperTextiles', 'Faisalabad, Punjab', 'Kamran Malik', '0322-3333333'),
  ('AgroEquip', 'Multan, Punjab', 'Zara Ali', '0333-4444444'),
  ('SteelGiant', 'Peshawar, KPK', 'Hamid Khan', '0344-5555555'),
  ('PaperPoint', 'Sialkot, Punjab', 'Rida Yousuf', '0355-6666666'),
  ('CoolChain', 'Islamabad', 'Bilal Sheikh', '0366-7777777'),
  ('FreshFoods', 'Quetta, Balochistan', 'Fatima Zahra', '0377-8888888'),
  ('AutoWorks', 'Hyderabad, Sindh', 'Adeel Hashmi', '0388-9999999'),
  ('FashionWare', 'Lahore, Punjab', 'Saba Khan', '0399-1010101'),
  ('ModernMed', 'Abbottabad, KPK', 'Dr. Shahnaz', '0301-1212121'),
  ('ABC Supplies', 'Gilgit, GB', 'Tariq Mehmood', '0302-1313131'),
  ('Books&More', 'Mirpur, AJK', 'Kiran Nasir', '0303-1414141'),
  ('ConstructCo', 'D.G. Khan, Punjab', 'Majid Rafiq', '0304-1515151'),
  ('SteelCore', 'Sukkur, Sindh', 'Afshan Iqbal', '0305-1616161'),
  ('PowerPack', 'Rawalpindi, Punjab', 'Junaid Haroon', '0306-1717171'),
  ('HomeEssentials', 'Bahawalpur, Punjab', 'Mehwish Naeem', '0307-1818181'),
  ('WoodWorks', 'Sargodha, Punjab', 'Usman Tariq', '0308-1919191'),
  ('AutoCare', 'Gujranwala, Punjab', 'Nabeel Qureshi', '0309-2020202'),
  ('SmartFoods', 'Rahim Yar Khan, Punjab', 'Rubina Nisar', '0310-2121212'),
  ('GlobalTextiles', 'Muzaffarabad, AJK', 'Arslan Qureshi', '0311-2222233'),
  ('IceSolutions', 'Skardu, GB', 'Javeria Iqbal', '0312-2323232'),
  ('ITPro', 'Larkana, Sindh', 'Zohaib Aslam', '0313-2424242'),
  ('HealthyLife', 'Nawabshah, Sindh', 'Madiha Rauf', '0314-2525252'),
  ('KitchenMart', 'Jhelum, Punjab', 'Faizan Saleem', '0315-2626262');

-- Table: Product
CREATE TABLE Product (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    SKU INT UNIQUE NOT NULL,
    ProductDescription VARCHAR(50),
    Category VARCHAR(30),
    Manufacturer VARCHAR(40),
    SupplierID INT NOT NULL REFERENCES Supplier(SupplierID),
    BarcodeValue BIGINT UNIQUE
);
INSERT INTO Product (ProductName, SKU, ProductDescription, Category, Manufacturer, SupplierID, BarcodeValue) VALUES
  ('Laptop', 1001, 'Gaming Laptop', 'Electronics', 'Dell', 1, 789012345001),
  ('T-Shirt', 1002, 'Cotton T-Shirt', 'Textile', 'Gul Ahmed', 2, 789012345002),
  ('Tractor', 1003, 'Farm Tractor', 'Agriculture', 'Millat', 4, 789012345003),
  ('Sofa Set', 1004, 'Wooden Sofa', 'Furniture', 'Interwood', 5, 789012345004),
  ('Notebook', 1005, 'College Notebook', 'Stationery', 'A-One Papers', 6, 789012345005),
  ('Cold Storage Box', 1006, 'Insulated Storage Box', 'Cold Storage', 'CoolTech', 7, 789012345006),
  ('Organic Apples', 1007, 'Fresh Apples', 'Food', 'FreshFarms', 8, 789012345007),
  ('Car Engine', 1008, '1.8L Petrol Engine', 'Automotive', 'Suzuki', 9, 789012345008),
  ('Jeans', 1009, 'Slim Fit Jeans', 'Clothing', 'Outfitters', 10, 789012345009),
  ('Medical Kit', 1010, 'First Aid Kit', 'Medical', 'MediPak', 11, 789012345010),
  ('Textbook', 1011, 'Biology Textbook', 'Books', 'Oxford', 12, 789012345011),
  ('Cement Bag', 1012, '50kg Cement', 'Construction', 'BestCement', 13, 789012345012),
  ('Steel Rods', 1013, '10mm Rods', 'Construction', 'SteelCorp', 14, 789012345013),
  ('Power Bank', 1014, '10000mAh Power Bank', 'Electronics', 'Mi', 15, 789012345014),
  ('Cooking Set', 1015, 'Non-stick Set', 'Kitchenware', 'HomeChefs', 16, 789012345015),
  ('Wooden Chair', 1016, 'Dining Chair', 'Furniture', 'WoodWorks', 17, 789012345016),
  ('Car Polish', 1017, 'Gloss Finish', 'Automotive', 'AutoCare', 18, 789012345017),
  ('Peanut Butter', 1018, 'Organic Spread', 'Food', 'NaturalFoods', 19, 789012345018),
  ('Denim Jacket', 1019, 'Winter Jacket', 'Clothing', 'DenimCo', 20, 789012345019),
  ('Textile Roll', 1020, 'Lawn Fabric', 'Textile', 'TextilePro', 21, 789012345020),
  ('Ice Pack', 1021, 'Reusable Ice Gel Pack', 'Cold Storage', 'IcePak', 22, 789012345021),
  ('Router', 1022, 'Wi-Fi 6 Router', 'Electronics', 'TP-Link', 23, 789012345022),
  ('Vitamin C', 1023, '500mg Tablets', 'Medical', 'HealTech', 24, 789012345023),
  ('Non-stick Pan', 1024, 'Cooking Pan', 'Kitchenware', 'ChefPro', 25, 789012345024),
  ('Marker Set', 1025, 'Permanent Markers', 'Stationery', 'ColorPoint', 6, 789012345025);

-- Table: Employee
CREATE TABLE Employee (
    EmployeeID SERIAL PRIMARY KEY,
    EmpName VARCHAR(30) NOT NULL,
    PhoneNumber VARCHAR(20),
    JobTitle VARCHAR(20) NOT NULL
);
INSERT INTO Employee (EmpName, PhoneNumber, JobTitle) VALUES
  ('Ali Raza', '0301-1111111', 'Manager'),
  ('Sara Khan', '0302-2222222', 'Clerk'),
  ('Zeeshan Malik', '0303-3333333', 'Supervisor'),
  ('Ayesha Noor', '0304-4444444', 'Technician'),
  ('Bilal Ahmed', '0305-5555555', 'Manager'),
  ('Fatima Iqbal', '0306-6666666', 'Accountant'),
  ('Usman Tariq', '0307-7777777', 'Assistant'),
  ('Nida Saleem', '0308-8888888', 'Manager'),
  ('Hassan Shah', '0309-9999999', 'Sales'),
  ('Kiran Yasir', '0310-1010101', 'HR'),
  ('Imran Farooq', '0311-1212121', 'Engineer'),
  ('Hiba Rauf', '0312-1313131', 'Clerk'),
  ('Saad Mehmood', '0313-1414141', 'Admin'),
  ('Mehwish Zahra', '0314-1515151', 'Sales'),
  ('Junaid Haroon', '0315-1616161', 'Technician'),
  ('Zara Jamil', '0316-1717171', 'Receptionist'),
  ('Tariq Bashir', '0317-1818181', 'Driver'),
  ('Amna Asif', '0318-1919191', 'HR'),
  ('Nouman Qureshi', '0319-2020202', 'Engineer'),
  ('Rubina Aslam', '0320-2121212', 'Assistant'),
  ('Umer Khalid', '0321-2222233', 'Manager'),
  ('Shaista Yasmin', '0322-2323232', 'Admin'),
  ('Faizan Latif', '0323-2424242', 'Security'),
  ('Sana Shamsher', '0324-2525252', 'Clerk'),
  ('Zubair Zaki', '0325-2626262', 'Sales');

-- Add UUID column to link with Supabase Auth
ALTER TABLE Employee ADD COLUMN IF NOT EXISTS user_id UUID UNIQUE;

-- Table: WarehouseLocation
CREATE TABLE WarehouseLocation (
    WarehouseLocationID SERIAL PRIMARY KEY,
    WarehouseID INT NOT NULL REFERENCES Warehouse(WarehouseID),
    ProductLocationInWarehouse VARCHAR(100)
);
INSERT INTO WarehouseLocation (WarehouseID, ProductLocationInWarehouse) VALUES
  (1, 'Aisle 1 - Rack 3'),
  (2, 'Aisle 2 - Rack 1'),
  (3, 'Cold Zone - Shelf A'),
  (4, 'Section B - Row 4'),
  (5, 'Furniture Bay - Right'),
  (6, 'Books Corner - Left'),
  (7, 'Machinery Zone - B3'),
  (8, 'Dry Goods Aisle'),
  (9, 'Apparel Zone - Middle'),
  (10, 'Hardware Row - Near Door'),
  (11, 'Medical Section - Cabinet 2'),
  (12, 'Office Supplies Rack 1'),
  (13, 'Frozen Zone A - Right'),
  (14, 'Tool Zone Rack B'),
  (15, 'Decor Section - Center'),
  (16, 'Spare Parts Bay'),
  (17, 'Baby Care Aisle'),
  (18, 'Outerwear Rack 3'),
  (19, 'Raw Material Zone'),
  (20, 'Check-in Bay 1'),
  (21, 'Receiving Dock - Entry'),
  (22, 'Dispatch Lane - Exit'),
  (23, 'Seasonal Stock Zone'),
  (24, 'Glass Items Area'),
  (25, 'Wood Items Bay');

-- Table: Inventory
CREATE TABLE Inventory (
    InventoryID SERIAL PRIMARY KEY,
    WarehouseID INT NOT NULL REFERENCES Warehouse(WarehouseID),
    ProductID INT NOT NULL REFERENCES Product(ProductID),
    QuantityAvailable INT DEFAULT 0 CHECK (QuantityAvailable >= 0),
    ReorderLevel INT CHECK (ReorderLevel >= 0),
    WarehouseLocationID INT REFERENCES WarehouseLocation(WarehouseLocationID)
);
INSERT INTO Inventory (WarehouseID, ProductID, QuantityAvailable, ReorderLevel, WarehouseLocationID) VALUES
  (1, 1, 50, 20, 1),
  (2, 2, 150, 30, 2),
  (3, 3, 20, 5, 3),
  (4, 4, 15, 10, 4),
  (5, 5, 200, 50, 5),
  (6, 6, 70, 25, 6),
  (7, 7, 120, 60, 7),
  (8, 8, 10, 2, 8),
  (9, 9, 80, 30, 9),
  (10, 10, 55, 20, 10),
  (11, 11, 65, 15, 11),
  (12, 12, 300, 80, 12),
  (13, 13, 90, 40, 13),
  (14, 14, 45, 15, 14),
  (15, 15, 30, 10, 15),
  (16, 16, 75, 25, 16),
  (17, 17, 60, 20, 17),
  (18, 18, 110, 35, 18),
  (19, 19, 40, 12, 19),
  (20, 20, 95, 30, 20),
  (21, 21, 85, 22, 21),
  (22, 22, 130, 45, 22),
  (23, 23, 70, 30, 23),
  (24, 24, 90, 25, 24),
  (25, 25, 100, 35, 25);

-- Table: Customer
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(30) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    BillingAddress VARCHAR(100)
);
INSERT INTO Customer (CustomerName, PhoneNumber, BillingAddress) VALUES
  ('Areeba Malik', '0345-1234561', '123 Main Street, Lahore'),
  ('Hamza Yousaf', '0345-1234562', '245 Model Town, Lahore'),
  ('Asma Tariq', '0345-1234563', '15 Gulshan, Karachi'),
  ('Zahid Iqbal', '0345-1234564', '85 Satellite Town, Rawalpindi'),
  ('Sumaira Zia', '0345-1234565', '10 Bahria Town, Islamabad'),
  ('Waseem Akhtar', '0345-1234566', '49 Saddar, Peshawar'),
  ('Iqra Naveed', '0345-1234567', '202 Gulberg, Lahore'),
  ('Rehan Ahmad', '0345-1234568', '90 University Road, Quetta'),
  ('Sania Saeed', '0345-1234569', '301 DHA Phase 6, Karachi'),
  ('Bilal Khan', '0345-1234570', '71 Garden Town, Multan'),
  ('Nimra Javed', '0345-1234571', '19 Askari 10, Lahore'),
  ('Sajjad Bhatti', '0345-1234572', '114 F-10, Islamabad'),
  ('Mahnoor Butt', '0345-1234573', '78 G-13, Islamabad'),
  ('Farhan Siddiqui', '0345-1234574', '66 Clifton, Karachi'),
  ('Hina Jaleel', '0345-1234575', '133 Walton Road, Lahore'),
  ('Tariq Mahmood', '0345-1234576', '8 Jail Road, Lahore'),
  ('Mehwish Shahid', '0345-1234577', '222 North Nazimabad, Karachi'),
  ('Adnan Raza', '0345-1234578', '13 New City, Gujranwala'),
  ('Shiza Iqbal', '0345-1234579', '45 Satellite Town, Sargodha'),
  ('Kamran Bashir', '0345-1234580', '12 G-8, Islamabad'),
  ('Nashit Khan', '0345-1234581', '17 Chaklala Scheme, Rawalpindi'),
  ('Nida Khan', '0345-1234582', '59 Gulistan-e-Johar, Karachi'),
  ('Imran Tahir', '0345-1234583', '67 PECHS, Karachi'),
  ('Aleena Mehmood', '0345-1234584', '39 Faisal Town, Lahore'),
  ('Qasim Mehmood', '0345-1234585', '92 I-8, Islamabad');

-- Table: OrderP
CREATE TABLE OrderP (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    OrderDate DATE,
    OrderStatus VARCHAR(100),
    ShippingMethod VARCHAR(30),
    PaymentMethod VARCHAR(20),
    TotalAmount INT
);
INSERT INTO OrderP (CustomerID, OrderDate, OrderStatus, ShippingMethod, PaymentMethod, TotalAmount) VALUES
  (1, '2024-06-01', 'Shipped', 'Courier', 'Credit Card', 15000),
  (2, '2024-06-02', 'Delivered', 'Courier', 'Cash', 9500),
  (3, '2024-06-03', 'Cancelled', 'Self Pickup', 'Cash', 7800),
  (4, '2024-06-04', 'Processing', 'Courier', 'Bank Transfer', 11000),
  (5, '2024-06-05', 'Shipped', 'Courier', 'Credit Card', 13500),
  (6, '2024-06-06', 'Delivered', 'Courier', 'Cash', 9900),
  (7, '2024-06-07', 'Processing', 'Courier', 'Bank Transfer', 6700),
  (8, '2024-06-08', 'Delivered', 'Self Pickup', 'Credit Card', 14200),
  (9, '2024-06-09', 'Cancelled', 'Courier', 'Cash', 7300),
  (10, '2024-06-10', 'Shipped', 'Courier', 'Credit Card', 8700),
  (11, '2024-06-11', 'Delivered', 'Courier', 'Cash', 12500),
  (12, '2024-06-12', 'Processing', 'Courier', 'Credit Card', 9200),
  (13, '2024-06-13', 'Delivered', 'Courier', 'Cash', 13500),
  (14, '2024-06-14', 'Processing', 'Courier', 'Credit Card', 10100),
  (15, '2024-06-15', 'Delivered', 'Courier', 'Cash', 8500),
  (16, '2024-06-16', 'Shipped', 'Courier', 'Bank Transfer', 11800),
  (17, '2024-06-17', 'Delivered', 'Courier', 'Cash', 9900),
  (18, '2024-06-18', 'Cancelled', 'Self Pickup', 'Cash', 6600),
  (19, '2024-06-19', 'Shipped', 'Courier', 'Credit Card', 13300),
  (20, '2024-06-20', 'Delivered', 'Courier', 'Cash', 10700),
  (21, '2024-06-21', 'Processing', 'Courier', 'Bank Transfer', 8800),
  (22, '2024-06-22', 'Delivered', 'Courier', 'Cash', 11900),
  (23, '2024-06-23', 'Shipped', 'Courier', 'Credit Card', 14700),
  (24, '2024-06-24', 'Processing', 'Courier', 'Cash', 8900),
  (25, '2024-06-25', 'Delivered', 'Self Pickup', 'Bank Transfer', 10500);

-- Table: OrderLine
CREATE TABLE OrderLine (
    OrderLineID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES OrderP(OrderID),
    ProductID INT REFERENCES Product(ProductID),
    QuantityOrdered INT NOT NULL,
    UnitPrice INT,
    TotalPrice INT
);
INSERT INTO OrderLine (OrderID, ProductID, QuantityOrdered, UnitPrice) VALUES
  (1, 1, 2, 500),
  (2, 2, 1, 9500),
  (3, 3, 2, 3900),
  (4, 4, 5, 2200),
  (5, 5, 3, 4500),
  (6, 6, 4, 2475),
  (7, 7, 1, 6700),
  (8, 8, 2, 7100),
  (9, 9, 1, 7300),
  (10, 10, 2, 4350),
  (11, 11, 2, 6250),
  (12, 12, 2, 4600),
  (13, 13, 3, 4500),
  (14, 14, 2, 5050),
  (15, 15, 1, 8500),
  (16, 16, 2, 5900),
  (17, 17, 2, 4950),
  (18, 18, 1, 6600),
  (19, 19, 3, 4433),
  (20, 20, 2, 5350),
  (21, 21, 2, 4400),
  (22, 22, 3, 3966),
  (23, 23, 2, 7350),
  (24, 24, 1, 8900),
  (25, 25, 2, 5250);

-- Table: Shipment
CREATE TABLE Shipment (
    ShipmentID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES OrderP(OrderID),
    WarehouseID INT REFERENCES Warehouse(WarehouseID),
    ShipmentDate DATE,
    Destination VARCHAR(100),
    ShipmentStatus VARCHAR(100),
    TrackingNumber VARCHAR(30),
    EstimatedArrival TIME
);
INSERT INTO Shipment (OrderID, WarehouseID, ShipmentDate, Destination, ShipmentStatus, TrackingNumber, EstimatedArrival) VALUES
  (1, 1, '2024-06-02', 'Lahore', 'In Transit', 'TRK001', '10:00:00'),
  (2, 2, '2024-06-03', 'Karachi', 'Delivered', 'TRK002', '11:00:00'),
  (3, 3, '2024-06-04', 'Islamabad', 'Cancelled', 'TRK003', '12:00:00'),
  (4, 4, '2024-06-05', 'Rawalpindi', 'Delivered', 'TRK004', '13:00:00'),
  (5, 5, '2024-06-06', 'Multan', 'Pending', 'TRK005', '14:00:00'),
  (6, 6, '2024-06-07', 'Peshawar', 'Delivered', 'TRK006', '15:00:00'),
  (7, 7, '2024-06-08', 'Quetta', 'In Transit', 'TRK007', '16:00:00'),
  (8, 8, '2024-06-09', 'Faisalabad', 'Delivered', 'TRK008', '17:00:00'),
  (9, 9, '2024-06-10', 'Sialkot', 'Pending', 'TRK009', '18:00:00'),
  (10, 10, '2024-06-11', 'Gujranwala', 'Delivered', 'TRK010', '19:00:00'),
  (11, 11, '2024-06-12', 'Larkana', 'In Transit', 'TRK011', '10:30:00'),
  (12, 12, '2024-06-13', 'Sargodha', 'Delivered', 'TRK012', '11:30:00'),
  (13, 13, '2024-06-14', 'Hyderabad', 'Pending', 'TRK013', '12:30:00'),
  (14, 14, '2024-06-15', 'Mardan', 'In Transit', 'TRK014', '13:30:00'),
  (15, 15, '2024-06-16', 'Abbottabad', 'Delivered', 'TRK015', '14:30:00'),
  (16, 16, '2024-06-17', 'Dera Ghazi Khan', 'In Transit', 'TRK016', '15:30:00'),
  (17, 17, '2024-06-18', 'Sahiwal', 'Delivered', 'TRK017', '16:30:00'),
  (18, 18, '2024-06-19', 'Bahawalpur', 'Cancelled', 'TRK018', '17:30:00'),
  (19, 19, '2024-06-20', 'Okara', 'In Transit', 'TRK019', '18:30:00'),
  (20, 20, '2024-06-21', 'Jhelum', 'Delivered', 'TRK020', '19:30:00'),
  (21, 21, '2024-06-22', 'Rahim Yar Khan', 'Pending', 'TRK021', '20:00:00'),
  (22, 22, '2024-06-23', 'Mirpur', 'Delivered', 'TRK022', '20:30:00'),
  (23, 23, '2024-06-24', 'Kotli', 'In Transit', 'TRK023', '21:00:00'),
  (24, 24, '2024-06-25', 'Muzaffarabad', 'Delivered', 'TRK024', '21:30:00'),
  (25, 25, '2024-06-26', 'Gilgit', 'Pending', 'TRK025', '22:00:00');

-- Table: ReturnP
CREATE TABLE ReturnP (
    ReturnID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES OrderP(OrderID),
    ProductID INT REFERENCES Product(ProductID),
    ReturnDate DATE,
    QuantityReturned INT NOT NULL,
    ReasonForReturn VARCHAR(200)
);
INSERT INTO ReturnP (OrderID, ProductID, ReturnDate, QuantityReturned, ReasonForReturn) VALUES
  (1, 1, '2024-06-03', 1, 'Defective item'),
  (2, 2, '2024-06-04', 1, 'Wrong product'),
  (3, 3, '2024-06-05', 1, 'Changed mind'),
  (4, 4, '2024-06-06', 2, 'Size mismatch'),
  (5, 5, '2024-06-07', 1, 'Late delivery'),
  (6, 6, '2024-06-08', 1, 'Damaged packaging'),
  (7, 7, '2024-06-09', 1, 'Color not as expected'),
  (8, 8, '2024-06-10', 1, 'Duplicate order'),
  (9, 9, '2024-06-11', 1, 'Customer no longer needed'),
  (10, 10, '2024-06-12', 2, 'Did not match description'),
  (11, 11, '2024-06-13', 1, 'Received late'),
  (12, 12, '2024-06-14', 1, 'Wrong size'),
  (13, 13, '2024-06-15', 2, 'Better price elsewhere'),
  (14, 14, '2024-06-16', 1, 'Too big'),
  (15, 15, '2024-06-17', 1, 'Too small'),
  (16, 16, '2024-06-18', 1, 'Unwanted gift'),
  (17, 17, '2024-06-19', 2, 'Order error'),
  (18, 18, '2024-06-20', 1, 'Incorrect item received'),
  (19, 19, '2024-06-21', 2, 'Faulty product'),
  (20, 20, '2024-06-22', 1, 'Color discrepancy'),
  (21, 21, '2024-06-23', 1, 'Does not work'),
  (22, 22, '2024-06-24', 1, 'Incomplete item'),
  (23, 23, '2024-06-25', 2, 'Scratches on item'),
  (24, 24, '2024-06-26', 1, 'Item too heavy'),
  (25, 25, '2024-06-27', 1, 'Doesn’t match listing');

-- Table: InventoryTransaction
CREATE TABLE InventoryTransaction (
    TransactionID SERIAL PRIMARY KEY,
    InventoryID INT REFERENCES Inventory(InventoryID),
    TransactionDate DATE,
    TransactionType VARCHAR(20),
    Quantity INT,
    Reason VARCHAR(50)
);
INSERT INTO InventoryTransaction (InventoryID, TransactionDate, TransactionType, Quantity, Reason) VALUES
  (1, '2024-06-01', 'IN', 20, 'Restock'),
  (2, '2024-06-02', 'OUT', 10, 'Customer Order'),
  (3, '2024-06-03', 'IN', 15, 'New Stock Arrival'),
  (4, '2024-06-04', 'OUT', 5, 'Defective Return'),
  (5, '2024-06-05', 'IN', 30, 'Supplier Delivery'),
  (6, '2024-06-06', 'OUT', 25, 'Customer Order'),
  (7, '2024-06-07', 'IN', 10, 'Adjustment'),
  (8, '2024-06-08', 'OUT', 8, 'Damage'),
  (9, '2024-06-09', 'IN', 40, 'Restock'),
  (10, '2024-06-10', 'OUT', 12, 'Customer Order'),
  (11, '2024-06-11', 'IN', 10, 'Transfer'),
  (12, '2024-06-12', 'OUT', 6, 'Return'),
  (13, '2024-06-13', 'IN', 18, 'Reorder'),
  (14, '2024-06-14', 'OUT', 14, 'Customer Order'),
  (15, '2024-06-15', 'IN', 22, 'Supply'),
  (16, '2024-06-16', 'OUT', 11, 'Sale'),
  (17, '2024-06-17', 'IN', 16, 'Delivery'),
  (18, '2024-06-18', 'OUT', 7, 'Shortage'),
  (19, '2024-06-19', 'IN', 35, 'Restock'),
  (20, '2024-06-20', 'OUT', 13, 'Sale'),
  (21, '2024-06-21', 'IN', 50, 'Bulk Order'),
  (22, '2024-06-22', 'OUT', 20, 'Dispatch'),
  (23, '2024-06-23', 'IN', 45, 'Return Processed'),
  (24, '2024-06-24', 'OUT', 17, 'Shipped'),
  (25, '2024-06-25', 'IN', 38, 'Replenishment');

-- Table: PurchaseOrder
CREATE TABLE PurchaseOrder (
    PurchaseOrderID SERIAL PRIMARY KEY,
    SupplierID INT REFERENCES Supplier(SupplierID),
    OrderDate DATE,
    ExpectedDeliveryDate DATE,
    OrderStatus VARCHAR(50),
    TotalAmount INT
);
INSERT INTO PurchaseOrder (SupplierID, OrderDate, ExpectedDeliveryDate, OrderStatus, TotalAmount) VALUES
  (1, '2024-05-01', '2024-05-10', 'Delivered', 10000),
  (2, '2024-05-02', '2024-05-11', 'Delivered', 12000),
  (3, '2024-05-03', '2024-05-12', 'Pending', 13000),
  (4, '2024-05-04', '2024-05-13', 'Shipped', 9000),
  (5, '2024-05-05', '2024-05-14', 'Cancelled', 8000),
  (6, '2024-05-06', '2024-05-15', 'Delivered', 15000),
  (7, '2024-05-07', '2024-05-16', 'Pending', 7000),
  (8, '2024-05-08', '2024-05-17', 'Shipped', 11000),
  (9, '2024-05-09', '2024-05-18', 'Delivered', 16000),
  (10, '2024-05-10', '2024-05-19', 'Delivered', 14000),
  (11, '2024-05-11', '2024-05-20', 'Pending', 8500),
  (12, '2024-05-12', '2024-05-21', 'Shipped', 9100),
  (13, '2024-05-13', '2024-05-22', 'Delivered', 12500),
  (14, '2024-05-14', '2024-05-23', 'Delivered', 9900),
  (15, '2024-05-15', '2024-05-24', 'Pending', 9700),
  (16, '2024-05-16', '2024-05-25', 'Shipped', 8800),
  (17, '2024-05-17', '2024-05-26', 'Delivered', 11100),
  (18, '2024-05-18', '2024-05-27', 'Cancelled', 10300),
  (19, '2024-05-19', '2024-05-28', 'Delivered', 14400),
  (20, '2024-05-20', '2024-05-29', 'Pending', 15200),
  (21, '2024-05-21', '2024-05-30', 'Delivered', 13800),
  (22, '2024-05-22', '2024-05-31', 'Shipped', 12700),
  (23, '2024-05-23', '2024-06-01', 'Pending', 13900),
  (24, '2024-05-24', '2024-06-02', 'Delivered', 14300),
  (25, '2024-05-25', '2024-06-03', 'Cancelled', 10200);

-- Table: Payment
CREATE TABLE Payment (
    PaymentID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES OrderP(OrderID),
    PaymentAmount INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50)
);
INSERT INTO Payment (OrderID, PaymentAmount, PaymentDate, PaymentMethod) VALUES
  (1, 1000, '2024-06-01', 'Credit Card'),
  (2, 2000, '2024-06-02', 'Cash'),
  (3, 1500, '2024-06-03', 'Bank Transfer'),
  (4, 2500, '2024-06-04', 'Credit Card'),
  (5, 1800, '2024-06-05', 'Debit Card'),
  (6, 2200, '2024-06-06', 'Cash'),
  (7, 1700, '2024-06-07', 'PayPal'),
  (8, 3000, '2024-06-08', 'Cash'),
  (9, 3200, '2024-06-09', 'Bank Transfer'),
  (10, 2100, '2024-06-10', 'Credit Card'),
  (11, 2800, '2024-06-11', 'Cash'),
  (12, 1900, '2024-06-12', 'Debit Card'),
  (13, 2600, '2024-06-13', 'PayPal'),
  (14, 2300, '2024-06-14', 'Cash'),
  (15, 2400, '2024-06-15', 'Credit Card'),
  (16, 2700, '2024-06-16', 'Bank Transfer'),
  (17, 3100, '2024-06-17', 'Cash'),
  (18, 2900, '2024-06-18', 'Debit Card'),
  (19, 2000, '2024-06-19', 'PayPal'),
  (20, 3300, '2024-06-20', 'Credit Card'),
  (21, 3400, '2024-06-21', 'Bank Transfer'),
  (22, 3500, '2024-06-22', 'Cash'),
  (23, 3600, '2024-06-23', 'PayPal'),
  (24, 3700, '2024-06-24', 'Credit Card'),
  (25, 3800, '2024-06-25', 'Cash');

-- =============================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- =============================================

-- Enable RLS on all tables
ALTER TABLE Warehouse ENABLE ROW LEVEL SECURITY;
ALTER TABLE Supplier ENABLE ROW LEVEL SECURITY;
ALTER TABLE Product ENABLE ROW LEVEL SECURITY;
ALTER TABLE Employee ENABLE ROW LEVEL SECURITY;
ALTER TABLE Customer ENABLE ROW LEVEL SECURITY;
ALTER TABLE OrderP ENABLE ROW LEVEL SECURITY;
ALTER TABLE OrderLine ENABLE ROW LEVEL SECURITY;
ALTER TABLE Inventory ENABLE ROW LEVEL SECURITY;
ALTER TABLE Shipment ENABLE ROW LEVEL SECURITY;
ALTER TABLE ReturnP ENABLE ROW LEVEL SECURITY;
ALTER TABLE InventoryTransaction ENABLE ROW LEVEL SECURITY;
ALTER TABLE PurchaseOrder ENABLE ROW LEVEL SECURITY;
ALTER TABLE Payment ENABLE ROW LEVEL SECURITY;

-- Allow SELECT to authenticated users
CREATE POLICY "Allow authenticated select" ON Warehouse FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Supplier FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Product FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Employee FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Customer FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON OrderP FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON OrderLine FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Inventory FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Shipment FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON ReturnP FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON InventoryTransaction FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON PurchaseOrder FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Allow authenticated select" ON Payment FOR SELECT USING (auth.role() = 'authenticated');

-- Allow all operations (INSERT, UPDATE, DELETE) only for users with 'Manager' job title
-- The condition uses the UUID column 'user_id' in Employee table to match auth.uid()
DO $$
DECLARE
  t text;
BEGIN
  FOR t IN 
    SELECT tablename FROM pg_tables 
    WHERE schemaname = 'public' AND tablename IN (
      'warehouse','supplier','product','employee','customer','orderp',
      'orderline','inventory','shipment','returnp','inventorytransaction',
      'purchaseorder','payment'
    )
  LOOP
    EXECUTE format('
      CREATE POLICY "Allow admin full access" ON %I 
      FOR ALL USING (
        auth.role() = ''authenticated'' AND 
        EXISTS (SELECT 1 FROM Employee WHERE user_id = auth.uid() AND JobTitle = ''Manager'')
      )
    ', t);
  END LOOP;
END $$;

UPDATE Employee 
SET user_id = '94e3f04f-fd37-4170-af19-a845ccbcd711' 
WHERE EmployeeID = 1;   