USE CMS
GO

--Table1
CREATE TABLE Semesters
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	Year INT NOT NULL,
	Part INT NOT NULL
)

--Table2
CREATE TABLE Subjects
(
	ID INT PRIMARY KEY UNIQUE,
	Name VARCHAR(50) NOT NULL
)

--Table3
CREATE TABLE Class
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(15) NOT NULL
)

--Table 4
CREATE TABLE Teacher
(
	ID INT PRIMARY KEY IDENTITY,
	FullName NVARCHAR(50) NOT NULL,
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table5
CREATE TABLE Courses
(
	ID INT PRIMARY KEY IDENTITY,
	SemesterID INT NOT NULL,
	ClassID INT NOT NULL,
	SubjectID INT NOT NULL,
	TeacherID INT NOT NULL,
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
	FirstName NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(50),
	LastName NVARCHAR(50) NOT NULL,
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table7
CREATE TABLE CourseStudent
(
	ID INT PRIMARY KEY IDENTITY,
	StudentID INT NOT NULL,
	CourseID INT NOT NULL,
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
	CourseStudentID INT NOT NULL,
	Grade FLOAT NOT NULL,
	Feedback VARCHAR(50),
	CONSTRAINT FK_CourseStudent_Grade
	FOREIGN KEY (CourseStudentID)
	REFERENCES dbo.CourseStudent(ID)
)

DROP TABLE dbo.Class
DROP TABLE dbo.Teacher
DROP TABLE dbo.Semesters
DROP TABLE dbo.Courses
DROP TABLE dbo.Students
DROP TABLE dbo.CourseStudent
DROP TABLE dbo.Grades

