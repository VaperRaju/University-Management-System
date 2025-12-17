🎓 University Management System (MySQL)

A relational database system designed using MySQL to manage university operations such as departments, students, professors, courses, enrollments, and course schedules.
This project demonstrates proper database design, use of primary keys, foreign keys, and referential integrity, and follows normalization principles.

📌 Features

🏫 Department management

👨‍🎓 Student records with department linkage

👨‍🏫 Professor management

📚 Course management with credits

📝 Student enrollments with grades

🗓️ Course scheduling by semester and year

🔗 Strong relationships using foreign keys

🛠️ Technologies Used

MySQL

SQL concepts:

DDL (CREATE, USE)

DML (INSERT)

Primary Key & Foreign Key

Constraints (NOT NULL, UNIQUE)

Referential Integrity

🗂️ Database Schema Overview
Tables Included:

Departments

Students

Professors

Courses

Enrollments

Course_Schedule

Each table is linked appropriately to avoid redundancy and maintain data consistency.

🧩 Entity Relationships

One Department → Many Students

One Department → Many Professors

One Department → Many Courses

One Student → Many Enrollments

One Course → Many Enrollments

One Course → One Professor per schedule

🚀 How to Run the Project

Open MySQL Workbench or any MySQL client

Copy the SQL script into a new query window

Run the script step by step or all at once

CREATE DATABASE University_Management_System;
USE University_Management_System;


Tables and sample data will be created automatically

📂 Project Structure
University-Management-System/
│
├── university_management_system.sql
└── README.md

📊 Sample Data Included

5 Departments

5 Students

5 Professors

10 Courses

10 Enrollments

10 Course Schedules

This allows immediate testing of queries and joins.

🧠 Learning Objectives

This project was created to:

Understand relational database design

Practice foreign key relationships

Apply normalization concepts (1NF, 2NF, 3NF)

Gain hands-on experience with SQL queries

Build a real-world academic database system

🎯 Suitable For

Database Management System (DBMS) assignments

University / college projects

SQL practice & exams

Learning relational database design

📄 License

This project is open for educational and learning purposes.

✍️ Author

Navil Islam
Database Management System Project🎓 University Management System (MySQL)

A relational database system designed using MySQL to manage university operations such as departments, students, professors, courses, enrollments, and course schedules.
This project demonstrates proper database design, use of primary keys, foreign keys, and referential integrity, and follows normalization principles.

📌 Features

🏫 Department management

👨‍🎓 Student records with department linkage

👨‍🏫 Professor management

📚 Course management with credits

📝 Student enrollments with grades

🗓️ Course scheduling by semester and year

🔗 Strong relationships using foreign keys

🛠️ Technologies Used

MySQL

SQL concepts:

DDL (CREATE, USE)

DML (INSERT)

Primary Key & Foreign Key

Constraints (NOT NULL, UNIQUE)

Referential Integrity

🗂️ Database Schema Overview
Tables Included:

Departments

Students

Professors

Courses

Enrollments

Course_Schedule

Each table is linked appropriately to avoid redundancy and maintain data consistency.

🧩 Entity Relationships

One Department → Many Students

One Department → Many Professors

One Department → Many Courses

One Student → Many Enrollments

One Course → Many Enrollments

One Course → One Professor per schedule

🚀 How to Run the Project

Open MySQL Workbench or any MySQL client

Copy the SQL script into a new query window

Run the script step by step or all at once

CREATE DATABASE University_Management_System;
USE University_Management_System;


Tables and sample data will be created automatically

📂 Project Structure
University-Management-System/
│
├── university_management_system.sql
└── README.md

📊 Sample Data Included

5 Departments

5 Students

5 Professors

10 Courses

10 Enrollments

10 Course Schedules

This allows immediate testing of queries and joins.

🧠 Learning Objectives

This project was created to:

Understand relational database design

Practice foreign key relationships

Apply normalization concepts (1NF, 2NF, 3NF)

Gain hands-on experience with SQL queries

Build a real-world academic database system

🎯 Suitable For

Database Management System (DBMS) assignments

University / college projects

SQL practice & exams

Learning relational database design

📄 License

This project is open for educational and learning purposes.

✍️ Author

Navil Islam
Database Management System Project
