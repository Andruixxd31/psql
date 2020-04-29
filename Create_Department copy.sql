 CREATE TABLE EMPLOYEE (
    SSN NUMBER(9),
    FName varchar(15),
    LName varchar(15),
    BDate date,
    Address varchar(300),
    Sex char(1),
    Salary decimal(7,2), 
    SuperSSN number(9),
    DNO number(10),
    Primary key(SSN),
    Foreign key(DNO) References DEPARTMENT
);

CREATE TABLE DEPARTMENT (
    DNumber NUMBER(10),
    DName varchar(100),
    MGRNSS Number(9), 
    MGRStartDate date, 
    Primary KEY (DNumber), 
    FOREIGN KEY (MGRSSN) References EMPLOYEE
);

CREATE TABLE DEP_LOCATIONS (
    DNumber NUMBER(10),
    DLocations varchar(100), 
    Primary KEY (DLocations, DNumber), 
    FOREIGN KEY (DNumber) References DEPARTMENT
);

CREATE TABLE PROJECTS (
    PNumber NUMBER(30),
    PName varchar(100), 
    PLocation varchar(100), 
    DNumber NUMBER(10),
    Primary KEY (PNumber), 
    FOREIGN KEY (DNumber) References DEPARTMENT
);

CREATE TABLE Dependent(
    SSN char(9) not null,
    Dependent_name  varchar(15) not null,
    Sex  char,
    BDate  date,
    Relationship  varchar(8),
    CONSTRAINT PKdependent PRIMARY KEY (SSN, Dependent_name),
    CONSTRAINT FKssn FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    CONSTRAINT sex_check2 CHECK(Sex in ('M', 'F'))
);
       
ALTER TABLE Department
ADD (mgrstartDate  date,
     mgrSSN char(9),
     CONSTRAINT MGRSSN FOREIGN KEY (MGTRSSN) REFERENCES Employee(SSN)
);
    
ALTER TABLE EMPLOYEE
ADD (DNO int,
    superSSN char(9),
    CONSTRAINT SuperSSN FOREIGN KEY (SuperSSN) REFERENCES Employee(SSN)
);
    
ALTER TABLE PROJECTS
ADD (dNum int not null,
    CONSTRAINT DNum FOREIGN KEY (DNum) REFERENCES Department(DNumber)
);
    
CREATE TABLE WORKS_ON(
    PNO int not null,
    ESSN char(9) not null,
    hours decimal(1,3),
    CONSTRAINT pkWorks_on PRIMARY KEY (PNO, ESSN),
    CONSTRAINT PNO FOREIGN KEY (PNO) REFERENCES Project(Pnumber),
    CONSTRAINT ESSN FOREIGN KEY (ESSN) REFERENCES Employee(SSN)
);

CREATE TABLE DEPT_LOCATIONS(
    DNumber int not null,
    DLocations varchar(15) not null,
    CONSTRAINT PlDepts_locations PRIMARY KEY (DNumber, DLocations),
    CONSTRAINT DepNumber FOREIGN KEY (DNumber) REFERENCES Department(DNumber)
);