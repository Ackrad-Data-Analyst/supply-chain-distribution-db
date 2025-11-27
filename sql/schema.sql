CREATE TABLE DistributionCenter (
  DCID AUTOINCREMENT PRIMARY KEY,
  Name TEXT(255),
  Phone TEXT(50),
  StreetNumber TEXT(50),
  StreetName TEXT(255),
  City TEXT(100),
  State TEXT(100),
  Country TEXT(100),
  IsCityCenter YESNO
);
CREATE TABLE DeliveryOperator (
  OperatorID AUTOINCREMENT PRIMARY KEY,
  FullName TEXT(255),
  DCID LONG,
  Phone TEXT(50),
  Product TEXT(255),
  UnitPrice DOUBLE,
  Quantity LONG,
  TotalValue DOUBLE,
  FOREIGN KEY (DCID) REFERENCES DistributionCenter(DCID)
);
-- Query: Important operators
-- SELECT * FROM DeliveryOperator WHERE TotalValue > 100;