SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
CREATE DATABASE IF NOT EXISTS `RelaxingKoala_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `RelaxingKoala_db`;

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
CREATE TABLE IF NOT EXISTS `Customer` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `Name`, `Email`, `Phone`) VALUES
(0, 'TestCustomer', 'test@customer.com', '0412345678'),
(1, 'TestCustomer2', 'test2@customer.com', '0423456789');
-- --------------------------------------------------------

--
-- Table structure for table `Deliveryperson`
--

DROP TABLE IF EXISTS `Deliveryperson`;
CREATE TABLE IF NOT EXISTS `Deliveryperson` (
  `StaffId` int(11) NOT NULL,
  `RegoNumber` varchar(20) DEFAULT NULL,
  `VehicleType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `FoodItem`
--

DROP TABLE IF EXISTS `FoodItem`;
CREATE TABLE IF NOT EXISTS `FoodItem` (
  `FoodID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `FoodItem`
--

INSERT INTO `FoodItem` (`FoodID`, `Name`, `Price`, `Category`) VALUES
(1, 'Chicken Fried Rice', 8.99, 'Rice'),
(2, 'Fish Fried Rice', 9.99, 'Rice'),
(3, 'Vegetable Fried Rice', 7.99, 'Rice'),
(4, 'Shrimp Fried Rice', 10.99, 'Rice'),
(5, 'Egg Fried Rice', 7.49, 'Rice'),
(6, 'Beef Fried Rice', 9.49, 'Rice'),
(7, 'Pork Fried Rice', 8.99, 'Rice'),
(8, 'Special Fried Rice', 11.99, 'Rice'),
(9, 'Mushroom Fried Rice', 8.49, 'Rice'),
(10, 'Basil Fried Rice', 9.29, 'Rice'),
(11, 'Chicken Noodles', 8.49, 'Noodles'),
(12, 'Beef Noodles', 9.49, 'Noodles'),
(13, 'Pork Noodles', 8.99, 'Noodles'),
(14, 'Vegetable Noodles', 7.49, 'Noodles'),
(15, 'Shrimp Noodles', 10.49, 'Noodles'),
(16, 'Egg Noodles', 7.29, 'Noodles'),
(17, 'Spicy Noodles', 8.99, 'Noodles'),
(18, 'Garlic Noodles', 7.99, 'Noodles'),
(19, 'Seafood Noodles', 11.49, 'Noodles'),
(20, 'Pad Thai', 9.99, 'Noodles'),
(21, 'Chicken Curry', 10.99, 'Curry'),
(22, 'Beef Curry', 11.99, 'Curry'),
(23, 'Pork Curry', 10.49, 'Curry'),
(24, 'Vegetable Curry', 9.99, 'Curry'),
(25, 'Fish Curry', 12.99, 'Curry'),
(26, 'Shrimp Curry', 13.49, 'Curry'),
(27, 'Lamb Curry', 14.99, 'Curry'),
(28, 'Paneer Curry', 9.49, 'Curry'),
(29, 'Tofu Curry', 9.49, 'Curry'),
(30, 'Egg Curry', 8.99, 'Curry'),
(31, 'Spring Rolls', 5.99, 'Appetizer'),
(32, 'Chicken Wings', 7.99, 'Appetizer'),
(33, 'Samosa', 4.99, 'Appetizer'),
(34, 'Garlic Bread', 3.99, 'Appetizer'),
(35, 'Bruschetta', 6.99, 'Appetizer'),
(36, 'Stuffed Mushrooms', 7.49, 'Appetizer'),
(37, 'Onion Rings', 4.49, 'Appetizer'),
(38, 'Mozzarella Sticks', 6.49, 'Appetizer'),
(39, 'Chicken Tenders', 7.99, 'Appetizer'),
(40, 'Nachos', 8.49, 'Appetizer'),
(51, 'Chocolate Cake', 5.99, 'Dessert'),
(52, 'Ice Cream', 3.99, 'Dessert'),
(53, 'Fruit Salad', 4.49, 'Dessert'),
(54, 'Cheesecake', 6.49, 'Dessert'),
(55, 'Brownies', 3.99, 'Dessert'),
(56, 'Pudding', 3.49, 'Dessert'),
(57, 'Cupcakes', 2.99, 'Dessert'),
(58, 'Tiramisu', 5.99, 'Dessert'),
(59, 'Apple Pie', 4.99, 'Dessert'),
(60, 'Pancakes', 5.49, 'Dessert'),
(61, 'Coca Cola', 1.99, 'Beverage'),
(62, 'Pepsi', 1.99, 'Beverage'),
(63, 'Orange Juice', 2.99, 'Beverage'),
(64, 'Apple Juice', 2.99, 'Beverage'),
(65, 'Lemonade', 2.49, 'Beverage'),
(66, 'Iced Tea', 2.49, 'Beverage'),
(67, 'Coffee', 1.99, 'Beverage'),
(68, 'Tea', 1.49, 'Beverage'),
(69, 'Milkshake', 3.49, 'Beverage'),
(70, 'Mineral Water', 1.49, 'Beverage'),
(71, 'Margherita Pizza', 8.99, 'Pizza'),
(72, 'Pepperoni Pizza', 9.99, 'Pizza'),
(73, 'BBQ Chicken Pizza', 10.49, 'Pizza'),
(74, 'Veggie Pizza', 9.49, 'Pizza'),
(75, 'Hawaiian Pizza', 10.99, 'Pizza'),
(76, 'Meat Lovers Pizza', 11.99, 'Pizza'),
(77, 'Cheese Pizza', 8.49, 'Pizza'),
(78, 'Mushroom Pizza', 9.49, 'Pizza'),
(79, 'Sausage Pizza', 10.49, 'Pizza'),
(80, 'Supreme Pizza', 11.99, 'Pizza'),
(81, 'Chicken Sandwich', 6.99, 'Sandwich'),
(82, 'Turkey Sandwich', 7.49, 'Sandwich'),
(83, 'Ham Sandwich', 6.49, 'Sandwich'),
(84, 'Veggie Sandwich', 5.99, 'Sandwich'),
(85, 'BLT Sandwich', 7.99, 'Sandwich'),
(86, 'Club Sandwich', 8.49, 'Sandwich'),
(87, 'Grilled Cheese Sandwich', 4.99, 'Sandwich'),
(88, 'Tuna Sandwich', 6.99, 'Sandwich'),
(89, 'Egg Salad Sandwich', 5.49, 'Sandwich'),
(90, 'Roast Beef Sandwich', 8.99, 'Sandwich');

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
CREATE TABLE IF NOT EXISTS `Inventory` (
  `InventoryID` int(11) NOT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ReorderLevel` int(11) DEFAULT NULL,
  `FoodID` int(11) DEFAULT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `FoodID` (`FoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Inventory`
--

INSERT INTO `Inventory` (`InventoryID`, `ItemName`, `Quantity`, `ReorderLevel`, `FoodID`) VALUES
(1, 'Eggs', 10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
CREATE TABLE IF NOT EXISTS `Orders` (
  `OrderID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `PaymentID` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
CREATE TABLE IF NOT EXISTS `Payment` (
  `PaymentID` int(11) NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Salesperson`
--

DROP TABLE IF EXISTS `Salesperson`;
CREATE TABLE IF NOT EXISTS `Salesperson` (
  `StaffId` int(11) NOT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SalesReport`
--

DROP TABLE IF EXISTS `SalesReport`;
CREATE TABLE IF NOT EXISTS `SalesReport` (
  `ReportID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `TotalSales` decimal(10,2) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `StaffID` (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tables`
--

DROP TABLE IF EXISTS `Tables`;
CREATE TABLE IF NOT EXISTS `Tables` (
  `TableID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TableID`),
  KEY `OrderID` (`OrderID`),
  KEY `CustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
CREATE TABLE IF NOT EXISTS `Users` (
  `StaffId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`StaffId`, `Name`, `DOB`, `Position`, `Address`, `Contact`, `Username`, `Password`) VALUES
(3, 'Staff0', '2000-01-01', 'Staff', '1 Example Street', '0455555555', 'staff', 'staff');
(1, 'Minh Nguyen', '2003-11-11', 'Staff', '22 John Street', '0455555555', 'minhnnguyen003', '111103');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Deliveryperson`
--
ALTER TABLE `Deliveryperson`
  ADD CONSTRAINT `Deliveryperson_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `Users` (`StaffId`);

--
-- Constraints for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD CONSTRAINT `Inventory_ibfk_1` FOREIGN KEY (`FoodID`) REFERENCES `FoodItem` (`FoodID`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`PaymentID`);

--
-- Constraints for table `Salesperson`
--
ALTER TABLE `Salesperson`
  ADD CONSTRAINT `Salesperson_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `Users` (`StaffId`);

--
-- Constraints for table `SalesReport`
--
ALTER TABLE `SalesReport`
  ADD CONSTRAINT `SalesReport_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `Users` (`StaffId`);

--
-- Constraints for table `Tables`
--
ALTER TABLE `Tables`
  ADD CONSTRAINT `Tables_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`),
  ADD CONSTRAINT `Tables_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;