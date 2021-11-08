-- Employee
insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Batdelger', 'Otgonbaatar', null, '1996-12-23', 'M', null, 1);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Munkh-Undral', 'Erdenebayar', null, '1985-03-03', 'F', null, 1);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Bayarbat', 'Batbayar', null, '1986-04-04', 'M', null, 1);


insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values('Michael', 'Smith', null, '1981-01-01', 'M', null, 2);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('John', 'Doe', null, '1972-02-02', 'M', null, 2);


-- Department
insert into Department (deptName, mgrEmpID)
values ('IT', 1);

insert into Department (deptName, mgrEmpID)
values ('Sales', 2);

-- Project
insert into Project (projName, deptNo)
values ('Loan Module Phase 1', 1);

insert into Project (projName, deptNo)
values ('Kubernates Upgrade', 1);

insert into Project (projName, deptNo)
values ('Happy summer sale'), 2);

insert into Project (projName, deptNo)
values ('Winter is coming sale'), 2);

-- WorksOn
insert into WorksOn (empID, projNo, hoursWorked)
values (1, 1, 30);

insert into WorksOn (empID, projNo, hoursWorked)
values (1, 2, 30);

insert into WorksOn (empID, projNo, hoursWorked)
values (2, 2, 70);

insert into WorksOn (empID, projNo, hoursWorked)
values (3, 1, 70);

insert into WorksOn (empID, projNo, hoursWorked)
values (4, 3, 20);

insert into WorksOn (empID, projNo, hoursWorked)
values (4, 4, 40);

insert into WorksOn (empID, projNo, hoursWorked)
values (5, 4, 180);