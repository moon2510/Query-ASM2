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

--Table4
CREATE TABLE Class
(
	ID INT PRIMARY KEY ,
	MajorCode VARCHAR(3),
        CONSTRAINT FK_Class_Major
	FOREIGN KEY (MajorCode)
	REFERENCES Majors(Code)
)

--Table3
CREATE TABLE Majors
(
	Code VARCHAR (3) PRIMARY KEY,
	Name VARCHAR(50)
)

--Table2
CREATE TABLE Subjects
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50)
)

--Table5
CREATE TABLE Teacher
(
	ID INT PRIMARY KEY IDENTITY,
	FullName VARCHAR(50),
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table6
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
	FOREIGN KEY (SubjectID)
	REFERENCES dbo.Teacher (ID)
)

--Table7
CREATE TABLE Students
(
	ID INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50),
	MiddleName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table8
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

--Table9
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

--Tb4
INSERT INTO dbo.Class
(
    MajorCode, ID
)
VALUES
( 'GED',1945 ),( 'GED',1946 ),( 'GED',1947 ),( 'GED',1948 ),( 'GCD',0803 ),( 'GCD',0804 ),( 'GCD,0805 ),
( 'GCD',0806 ),( 'GCD',0807 ),( 'GCD',0820 ),( 'GBD',0715 ),( 'GBD',0716 ),( 'GBD',0717 ),( 'GBD',0718 ),
( 'GBD',0719 ),( 'GBD',0720 )

--Tb2
INSERT INTO dbo.Subjects
(
    
)
