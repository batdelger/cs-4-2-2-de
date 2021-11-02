create table Employee (
    empID int primary key identity(1,1),
    fName varchar(100) not null,
    lName varchar(100) not null,
    address varchar(500) null,
    DOB date not null,
    sex char(1) not null,
    position varchar(100) null,
    deptNo int null
);

create table Department (
    deptNo int primary key identity(1,1),
    deptName varchar(100),
    mgrEmpID int not null foreign key references Employee(empID)
);

create table Project (
    projNo int primary key identity(1,1),
    projName varchar(100) not null,
    deptNo int not null foreign key references Department(deptNo)
);

create table WorksOn (
    empID int not null foreign key references Employee(empID),
    projNo int not null foreign key references Project(projNo),
    hoursWorked float not null,

    primary key (empID, projNo)
);