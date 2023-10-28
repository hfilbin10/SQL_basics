-- Schema
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
  id          serial PRIMARY KEY,
  line_1      VARCHAR(50),
  city        VARCHAR(30),
  state       VARCHAR(20),
  zipcode     CHAR(5)
);

DROP TABLE IF Exists classes;
CREATE TABLE classes (
  id          serial PRIMARY KEY,
  name        VARCHAR(30),
  credits     integer
);

DROP TABLE IF EXISTS enrollments;
CREATE TABLE enrollments (
  id          serial PRIMARY KEY,
  student_id  integer,
  class_id    integer,
  grade       CHAR(1)
);



