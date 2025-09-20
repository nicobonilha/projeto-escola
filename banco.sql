CREATE DATABASE school_db;
USE school_db;
 
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE,
  password VARCHAR(50),
  name VARCHAR(100),
  role ENUM('admin','teacher','student')
);
 
CREATE TABLE classes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  teacherId INT
);
 
CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  classId INT
);
 
CREATE TABLE teachers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);
 
CREATE TABLE attendances (
  id INT AUTO_INCREMENT PRIMARY KEY,
  studentId INT,
  classId INT,
  date DATE,
  present BOOLEAN
);
 
CREATE TABLE grades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  studentId INT,
  classId INT,
  type ENUM('nota1','nota2'),
  value DECIMAL(4,2)
);