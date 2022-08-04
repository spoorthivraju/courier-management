drop database courier_system;
create database courier_system;
\c courier_system

CREATE TABLE Branch
(Branch_ID INT NOT NULL,
States VARCHAR(20),
City VARCHAR(25),
Area VARCHAR(30),
Pin_Code CHAR(6) UNIQUE,
PRIMARY KEY(Branch_ID));

CREATE TABLE Employee
(E_name VARCHAR(10),
E_phno CHAR(10) NOT NULL,
E_ID VARCHAR(5) NOT NULL,
DOB DATE,
Gender varchar(6),
EBranch_ID INT NOT NULL,
Supervisor_ID VARCHAR(5),
 Designation VARCHAR(15),
 PRIMARY KEY(E_ID),
 FOREIGN KEY (Supervisor_ID) REFERENCES Employee(E_ID),
 FOREIGN KEY (EBranch_ID) REFERENCES Branch(Branch_ID));

CREATE TABLE Sender
(S_ID VARCHAR(3) NOT NULL,
S_Name VARCHAR(15),
S_phno CHAR(10),
Package_ID CHAR(5) UNIQUE,
House_no CHAR(5),
Street_no INT,
SBranch_ID INT NOT NULL,
 PRIMARY KEY(S_ID));

CREATE TABLE Receiver
(R_ID VARCHAR(3) NOT NULL,
R_Name VARCHAR(15),
R_phno CHAR(10),
Package_ID CHAR(5) UNIQUE,
House_no CHAR(5),
Street_no INT,
RBranch_ID INT NOT NULL,
PRIMARY KEY(R_ID));

CREATE TABLE Rates 
(weight_range decimal(3,1) NOT NULL,
Cost Decimal(5,2),Tax Decimal(4,2),
PRIMARY KEY(weight_range));

CREATE TABLE Packages
(Package_ID CHAR(5) NOT NULL,
C_ID VARCHAR(5),
status VARCHAR(16),
Weight decimal(3,1) CHECK(Weight > 00.0 AND Weight< 50.0),
PS_ID CHAR(3),
PR_ID CHAR(3),
PBranch_ID INT,
Pickup_date TIMESTAMP,
Delivered_date TIMESTAMP,
Total_cost DECIMAL(5,2),
PRIMARY KEY(Package_ID),
FOREIGN KEY(PS_ID) REFERENCES Sender(S_ID),
FOREIGN KEY(PR_ID) REFERENCES Receiver(R_ID),
FOREIGN KEY(C_ID) REFERENCES Employee(E_ID),
FOREIGN KEY(Weight) REFERENCES Rates(weight_range));

CREATE TABLE Courier
(CBranch_ID INT NOT NULL,
CE_ID VARCHAR(5),
FOREIGN KEY (CE_ID) REFERENCES Employee(E_ID));




