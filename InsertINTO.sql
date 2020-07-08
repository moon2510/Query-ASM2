USE CMS
GO

--Tb1
INSERT INTO dbo.Semesters
(
    Name,[Year],Part
)
VALUES
('Spring',2017,1),('Spring',2017,2),('Fall',2017,1),
('Fall',2017,2),('Summer', 2017,1),('Summer', 2017, 2),
('Spring',2018,1),('Spring',2018,2),('Fall',2018,1),
('Fall',2018,2),('Summer', 2018,1),('Summer', 2018, 2),
('Spring',2019,1),('Spring',2019,2),('Fall',2019,1),
('Fall',2019,2),('Summer', 2019,1),('Summer', 2019, 2),
('Spring',2020,1),('Spring',2020,2),('Fall',2020,1),('Fall',2020,2),('Summer', 2020,1),('Summer', 2020, 2)

--Tb2
INSERT INTO dbo.Subjects
(ID, Name)
VALUES
(485,'Business and the Business Environment'),
(486,'Marketing Essentials'),
(487,'Human Resource Management'),
(489,'Management Accounting'),
(1618,'Programming'),(1619,'Networking'),
(1620,'Professional Practice'),
(1622,'Database Design and Development'),(1623,'Security'),
(1625,'Managing a Successful Computing Project'),
(1631,'Software Development Life Cycle')

--Tb3
INSERT INTO dbo.Class
(
    Name
)
VALUES
( 'GCD1945' ),( 'GCD1946' ),( 'GCD1947' ),
( 'GCD1948' ),( 'GCD0803' ),( 'GCD0805' ),
( 'GCD0702' ),( 'GCD0705' ),( 'GCD0826' ),
( 'GCD0815' ),( 'GBD0814' ),( 'GBD0816' ),
( 'GBD0605' ),( 'GBD0602' ),( 'GBD0601' ),
( 'GBD0603' ),( 'GBD0715' )

--Tb4
INSERT INTO dbo.Teacher
(
    --ID - column value is auto-generated
    FullName,
    DateOfbirth,
    Gender
)
VALUES
(N'Nguyễn Lâm ','4/14/1986','M'),
(N'Võ Văn Việt','8/15/1981','M'),
(N'Bùi  Minh Quang','10/25/1988','M'),
(N'Trần Thành Đạt','7/22/1985','M'),
(N'Nguyễn Thùy Trang','6/30/1992','F'),
(N'Trần Thanh Thảo','2/18/1990','F'),
(N'Hoàng Quang Trung','10/26/1991','M'),
(N'Lê Phương Duyên','7/22/1989','F'),
(N'Nguyễn Minh Hiếu','8/9/1985','M'),
(N'Nguyễn Hoàng Lâm','3/9/1986','M')


--ALTER TABLE dbo.Teacher
--ALTER COLUMN FullName NVARCHAR(30)

--Tb5
INSERT INTO dbo.Courses
(
	[SemesterID],
	[ClassID],
	[SubjectID],
	[TeacherID]
) 

VALUES
(20,6,1618,1),(20,6,1619,1),
(20,9,1619,2),(20,9,1620,2),
(20,13,485,6),(20,13,486,7),
(20,15,487,6),(20,15,489,7),
(22,6,1623,3),(22,6,1625,3),
(22,9,1631,4),(22,9,1633,4),
(22,13,522,8),(22,13,574,8),
(22,15,570,9),(22,15,525,10);

--Tb6
INSERT INTO dbo.Students
(
    --ID - column value is auto-generated
    FirstName,
    MiddleName,
    LastName,
    DateOfbirth,
    Gender
)
VALUES
(N'Bùi',N'Thị Minh', N'Nguyệt', '10/25/1999', 'F'),
(N'Nguyễn',N'Phan Hoàng',N'Lâm','4/16/1999','M'),
(N'Võ',N'Ngọc',N'Thành','10/5/1998','M'),
(N'Trần',N'Ngọc',N'Đạt','5/4/1998','M'),
(N'Nguyễn',N'Minh',N'Nhật','6/19/1999','M'),
(N'Hoàng',N'Thu', N'Trang', '10/25/1999', 'F'),
(N'Nguyễn',N'Đức',N'Hoàng','8/29/1999','M'),
(N'Nguyễn',N'Minh',N'Hiếu','5/15/1998','M'),
(N'Phạm',N'Mai', N'Phương', '1/3/1999', 'F'),
(N'Nguyễn',N'Thành',N'Luân','1/9/1998','M')

--Tb7
INSERT INTO dbo.CourseStudent
([StudentID],
[CourseID]) 
VALUES
(1,2),(1,3),(1,5),(1,7),(1,10),(1,8),(1,9),(1,1),(1,4),(1,6),
(2,2),(2,3),(2,5),(2,7),(2,10),(2,8),(2,9),(2,1),(2,4),(2,6),
(9,2),(9,3),(9,5),(9,7),(,10),(2,8),(2,9),(2,1),(2,4),(2,6),


INSERT INTO dbo.CourseStudent([StudentID],[CourseID]) VALUES(1,27),(3,18),(2,30),(3,23),(1,25),(2,27),(3,30),(2,29),(1,30),(1,19);
INSERT INTO dbo.CourseStudent([StudentID],[CourseID]) VALUES(4,19),(1,20),(4,30),(1,29),(1,16),(1,18),(4,20),(4,16),(2,18),(3,19);
INSERT INTO dbo.CourseStudent([StudentID],[CourseID]) VALUES(8,39),(9,42),(10,40),(7,42),(5,35),(9,43),(10,35),(7,40),(5,35),(9,43);

--Tb8
INSERT INTO dbo.Grades([CourseStudentID],[Grade]) VALUES(18,3),(14,0),(26,1),(40,5.5),(47,8.5),(27,4.3),(47,8.7);
INSERT INTO dbo.Grades([CourseStudentID],[Grade]) VALUES(22,9),(50,3),(40,7.5),(21,10),(17,10),(36,1.5);
INSERT INTO dbo.Grades([CourseStudentID],[Grade]) VALUES(37,6),(14,6),(45,9),(27,5),(43,1.5),(44,9.5);
