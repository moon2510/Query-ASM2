USE CMS
GO
--UserStory5
CREATE PROC udp_findStudentByID (@idStudent int)
AS
SELECT s.* FROM dbo.Students s WHERE s.ID = @idStudent

EXEC dbo.udp_findStudentByID 2


--UserStory2
UPDATE dbo.Teacher
SET
    dbo.Teacher.FullName = N'Bùi Minh Moon', 
    dbo.Teacher.DateOfbirth = '10/25/1988' ,
    dbo.Teacher.Gender = 'F'
WHERE ID = 3;
