USE CMS
GO

--Table1
CREATE TABLE Semesters
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50),
	Year INT,
	Part INT
)

--Table2
CREATE TABLE Subjects
(
	ID INT PRIMARY KEY ,
	Name VARCHAR(50)
)

--Table3
CREATE TABLE Class
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(15)
)

--Table 4
CREATE TABLE Teacher
(
	ID INT PRIMARY KEY IDENTITY,
	FullName NVARCHAR(50),
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table5
CREATE TABLE Courses
(
	ID INT PRIMARY KEY IDENTITY,
	SemesterID INT,
	ClassID INT,
	SubjectID INT,
	TeacherID INT,
	CONSTRAINT FK_Semester_Course
	FOREIGN KEY (SemesterID)
	REFERENCES dbo.Semesters(ID),
	CONSTRAINT FK_Class_Course
	FOREIGN KEY (ClassID)
	REFERENCES dbo.Class(ID),
	CONSTRAINT FK_Subject_Course
	FOREIGN KEY (SubjectID)
	REFERENCES dbo.Subjects(ID),
	CONSTRAINT FK_Teacher_Course
	FOREIGN KEY (TeacherID)
	REFERENCES dbo.Teacher (ID)
)

--Table6
CREATE TABLE Students
(
	ID INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50),
	MiddleName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table7
CREATE TABLE CourseStudent
(
	ID INT PRIMARY KEY IDENTITY,
	StudentID INT ,
	CourseID INT,
	CONSTRAINT FK_CourseStudent_Course
	FOREIGN KEY (CourseID)
	REFERENCES dbo.Courses(ID),
	CONSTRAINT FK_CourseStudent_Student
	FOREIGN KEY (StudentID)
	REFERENCES dbo.Students(ID)
)

--Table8
CREATE TABLE Grades
(
	ID INT PRIMARY KEY IDENTITY,
	CourseStudentID INT,
	GradeItem VARCHAR(50),
	Grade FLOAT,
	Feedback VARCHAR(50),
	CONSTRAINT FK_CourseStudent_Grade
	FOREIGN KEY (CourseStudentID)
	REFERENCES dbo.CourseStudent(ID)
)
DROP TABLE dbo.Class
DROP TABLE dbo.Grades
DROP TABLE dbo.CourseStudent
DROP TABLE dbo.Students
DROP TABLE dbo.Courses
DROP TABLE dbo.Teacher
--Đổ dữ liệu :))


--Tb1
INSERT INTO dbo.Semesters
(
    Name,[Year],Part
)
VALUES
('Spring',2017,1),('Spring',2017,2),('Fall',2017,1),('Fall',2017,2),('Summer', 2017,1),('Summer', 2017, 2),
('Spring',2018,1),('Spring',2018,2),('Fall',2018,1),('Fall',2018,2),('Summer', 2018,1),('Summer', 2018, 2),
('Spring',2019,1),('Spring',2019,2),('Fall',2019,1),('Fall',2019,2),('Summer', 2019,1),('Summer', 2019, 2),
('Spring',2020,1),('Spring',2020,2),('Fall',2020,1),('Fall',2020,2),('Summer', 2020,1),('Summer', 2020, 2)

--Tb2
INSERT INTO dbo.Subjects
(ID, Name)
VALUES
(1618,'Programming'),(1619,'Networking'),(1620,'Professional Practice'),(1622,'Database Design and Development'),
(1623,'Security'),(1625,'Managing a Successful Computing Project'),(1631,'Software Development Life Cycle'),
(485,'Business and the Business Environment'),(486,'Marketing Essentials'),(487,'Human Resource Management'),
(489,'Management Accounting'),(3532,'Printmaking'),(3515,'Techniques & Processes'),(3524,'Typography')

--Tb3
INSERT INTO dbo.Class
(
    Name
)
VALUES
( 'GCD1945' ),( 'GCD1946' ),( 'GCD1947' ),( 'GCD1948' ),( 'GCD0803' ),( 'GCD0805' ),( 'GCD0702' ),
( 'GCD0705' ),( 'GCD0826' ),( 'GCD0815' ),( 'GBD0814' ),( 'GBD0816' ),( 'GBD0605' ),( 'GBD0602' ),
( 'GBD0601' ),( 'GBD0603' ),( 'GBD0715' )

--Tb4
INSERT INTO dbo.Teacher
(
    --ID - column value is auto-generated
    FullName,
    DateOfbirth,
    Gender
)
VALUES
(N'Nguyễn Lâm ','4/14/1986','M'),(N'Võ Văn Việt','8/15/1981','M'),(N'Bùi  Minh Quang','10/25/1988','M'),
(N'Trần Thành Đạt','7/22/1985','M'),(N'Nguyễn Thùy Trang','6/30/1992','F'),(N'Trần Thanh Thảo','2/18/1990','F'),
(N'Hoàng Quang Trung','10/26/1991','M'),(N'Lê Phương Duyên','7/22/1989','F'),(N'Nguyễn Minh Hiếu','8/9/1985','M'),
(N'Nguyễn Hoàng Lâm','3/9/1986','M')
--ALTER TABLE dbo.Teacher
--ALTER COLUMN FullName NVARCHAR(30)

--Tb6
INSERT INTO dbo.Courses
(
    --ID - column value is auto-generated
    SemesterID,
    ClassID,
    SubjectID,
    TeacherID
)
VALUES
(
    -- ID - INT
    0, -- SemesterID - INT
    0, -- ClassID - INT
    0, -- SubjectID - INT
    0 -- TeacherID - INT
)

