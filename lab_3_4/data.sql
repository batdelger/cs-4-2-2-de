-- Employee
insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('James', 'Adams', null, '1978-12-12', 'M', null, 1);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Susan', 'Boil', null, '1965-01-01', 'F', null, 1);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Britney', 'Spears', null, '1981-12-02', 'F', null, 1);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values('Keanu', 'Reeves', null, '1964-09-02', 'M', null, 2);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Adam', 'Sandler', null, '1966-09-09', 'M', null, 2);

insert into Employee (fName,lName,address,DOB,sex,position,deptNo)
values ('Alicia', 'Keys', null, '1981-01-25', 'F', null, 2);


-- Department
insert into Department (deptName, mgrEmpID)
values ('IT', 1);

insert into Department (deptName, mgrEmpID)
values ('HR', 2);


-- Project
insert into Project (projName, deptNo)
values ('Automation Test Implementation', 1);

insert into Project (projName, deptNo)
values ('Move to AWS', 1);

insert into Project (projName, deptNo)
values ('Trainig Newbies'), 2);

insert into Project (projName, deptNo)
values ('Hiring'), 2);

-- WorksOn
insert into WorksOn (empID, projNo, hoursWorked)
values (1, 1, 300);

insert into WorksOn (empID, projNo, hoursWorked)
values (1, 2, 330);

insert into WorksOn (empID, projNo, hoursWorked)
values (2, 2, 7000);

insert into WorksOn (empID, projNo, hoursWorked)
values (3, 1, 1350);

insert into WorksOn (empID, projNo, hoursWorked)
values (4, 3, 139);

insert into WorksOn (empID, projNo, hoursWorked)
values (4, 4, 450);

insert into WorksOn (empID, projNo, hoursWorked)
values (5, 4, 1890);