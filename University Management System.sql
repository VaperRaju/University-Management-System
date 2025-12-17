# Creating the database
CREATE DATABASE University_Management_System;

# Using the database
USE University_Management_System;

# Creating the department table in the database
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique numeric identifier for each department
    Department_Name VARCHAR(100) NOT NULL         -- Department name cannot be empty
);

# Creating the Student table in the database
CREATE TABLE Students (                        
    Student_ID INT PRIMARY KEY AUTO_INCREMENT,     -- Auto-generated unique student ID
    First_Name VARCHAR(20) NOT NULL,               -- Names cannot be empty
    Last_Name VARCHAR(20) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,          -- Email must be unique
    Date_Of_Birth DATE NOT NULL,
    Department_ID INT,                        -- Links students with departments
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

# Creating the professor table in the database
CREATE TABLE Professors (
    Professor_ID INT PRIMARY KEY AUTO_INCREMENT,   -- Auto-generated unique Professor_ID
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Department_ID INT,                            -- Links professors with departments
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

# Creating the course table in the database
CREATE TABLE Courses (							          
    Course_ID INT PRIMARY KEY AUTO_INCREMENT,   -- Auto-generated unique Course_ID  
    Course_Name VARCHAR(50) NOT NULL,
    Credit INT NOT NULL,
    Department_ID INT NOT NULL,                 -- Links courses with departments
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

# Creating the enrollment table in the database
CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY AUTO_INCREMENT,    -- Auto-generated unique Enrollment_ID
    Student_ID INT NOT NULL,                         -- Links students with enrollments
    Course_ID INT NOT NULL,                          -- Links courses with enrollments
    Enrollment_Date DATE NOT NULL,
    Grade CHAR(1),                                 -- Data type used CHAR
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

# Creating the course_schedule table in the database
CREATE TABLE Course_Schedule (                    
    Schedule_ID INT PRIMARY KEY AUTO_INCREMENT,       -- Auto-generated unique Schedule_ID
    Course_ID INT NOT NULL,                          -- Links courses with Course_Schedule
    Professor_ID INT NOT NULL,                       -- Links professors with Course_Schedule
    Semester VARCHAR(20) NOT NULL,
    Year YEAR NOT NULL,
    Class_Time TIME NOT NULL,                       -- Used time as the data type
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID),
    FOREIGN KEY (Professor_ID) REFERENCES Professors(Professor_ID)
);

# Inserting data in Department table
INSERT INTO Departments (Department_Name)
VALUES
('Computer Science'),
('Business Administration'),
('Psychology'),
('Hospitality Management'),
('Mass Communication');

# Inserting data in Students table
INSERT INTO Students (First_Name, Last_Name, Email, Date_Of_Birth, Department_ID)
VALUES
('Navil', 'Islam', 'navil.islam@gmail.com', '2004-07-16', 1),
('Sara', 'Rahman', 'sara.rahman@yahoo.com', '2003-11-22', 2),
('Aisha', 'Khan', 'aisha.khan@gmail.com', '2005-02-10', 3),
('David', 'Miller', 'david.miller@hotmail.com', '2004-05-05', 1),
('Lina', 'Karim', 'lina.karim@gmail.com', '2003-09-15', 4);

# Inserting data in Professors table
INSERT INTO Professors (First_Name, Last_Name, Email, Department_ID)
VALUES
('John', 'Smith', 'john.smith@university.edu', 1),
('Emily', 'Johnson', 'emily.johnson@university.edu', 2),
('Michael', 'Brown', 'michael.brown@university.edu', 3),
('Sophia', 'Davis', 'sophia.davis@university.edu', 1),
('Robert', 'Wilson', 'robert.wilson@university.edu', 4);

# Inserting data in Courses table
INSERT INTO Courses (Course_Name, Credit, Department_ID)
VALUES
('Database Systems', 3, 1),
('Operating Systems', 3, 1),
('Marketing Basics', 3, 2),
('Business Finance', 3, 2),
('Cognitive Psychology', 3, 3),
('Clinical Psychology', 3, 3),
('Food & Beverage Management', 4, 4),
('Front Office Operations', 3, 4),
('Media Studies', 3, 5),
('Digital Journalism', 3, 5);

# Inserting data in Enrollments table
INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date, Grade)
VALUES
(1, 1, '2025-01-10', 'A'),
(1, 2, '2025-01-10', 'B'),
(2, 3, '2025-01-12', 'A'),
(2, 4, '2025-01-12', 'C'),
(3, 5, '2025-01-15', 'B'),
(3, 6, '2025-01-15', 'A'),
(4, 1, '2025-01-10', 'A'),
(4, 2, '2025-01-10', 'A'),
(5, 7, '2025-01-11', 'B'),
(5, 8, '2025-01-11', 'A');

# Inserting data in Course_Schedule table
INSERT INTO Course_Schedule (Course_ID, Professor_ID, Semester, Year, Class_Time)
VALUES
(1, 1, 'Spring', 2025, '09:00:00'),
(2, 4, 'Spring', 2025, '11:00:00'),
(3, 2, 'Summer', 2025, '10:00:00'),
(4, 2, 'Fall', 2025, '14:00:00'),
(5, 3, 'Spring', 2025, '13:00:00'),
(6, 3, 'Summer', 2025, '15:00:00'),
(7, 5, 'Spring', 2025, '08:00:00'),
(8, 5, 'Fall', 2025, '12:00:00'),
(9, 1, 'Summer', 2025, '10:30:00'),
(10, 4, 'Fall', 2025, '16:00:00');