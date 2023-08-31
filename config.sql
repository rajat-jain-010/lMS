CREATE DATABASE library;
USE library;

CREATE TABLE IF NOT EXISTS `LIB_USERS` (
    USERNAME varchar(20) NOT NULL UNIQUE KEY,
    PASSWORD varchar(64) NOT NULL UNIQUE KEY
);
 
INSERT INTO `LIB_USERS` VALUES('root','ce5ca673d13b36118d54a7cf13aeb0ca012383bf771e713421b4d1fd841f539a');



CREATE TABLE IF NOT EXISTS `BOOKS` (
  BOOK_ID int NOT NULL,
  BOOK_NAME varchar(40) NOT NULL UNIQUE KEY,
  AUTHOR_NAME varchar(40) NOT NULL,
  BOOK_PRICE int,
  QTY int default 1
);

CREATE TABLE IF NOT EXISTS `ISSUED_BOOKS` (
  STUDENT_ID int NOT NULL,
  STUDENT_NAME varchar(40) NOT NULL,
  CLASS varchar(3) NOT NULL,
  SECTION varchar(1) NOT NULL,
  ROLL_NO int NOT NULL,
  BOOK_ID int NOT NULL,
  BOOK_PRICE int,
  ISSUE_DATE date NOT NULL,
  RETURN_DATE date,
  FINE int
);

CREATE TABLE IF NOT EXISTS `TELEBOT` (
  STUDENT_ID int NOT NULL
);