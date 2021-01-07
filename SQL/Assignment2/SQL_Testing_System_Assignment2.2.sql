DROP DATABASE IF EXISTS Testing_system_assignment1;
CREATE DATABASE Testing_system_assignment1;
USE Testing_system_assignment1;

CREATE TABLE Department(
	DepartmentID		SMALLINT UNSIGNED PRIMARY KEY,
    DapartmentName		VARCHAR(20) UNIQUE KEY
);

CREATE TABLE `Position`(
	PositionID			SMALLINT UNSIGNED PRIMARY KEY,
    PositionName		ENUM ('Dev', 'Test', 'Scrum Master', 'PM') UNIQUE KEY
);

CREATE TABLE `Account`(
	AccountID			SMALLINT UNSIGNED PRIMARY KEY,
    Email				VARCHAR(50) UNIQUE KEY,
    Username			VARCHAR(20) UNIQUE KEY,
    FullName			VARCHAR(50),
    DepartmentID		SMALLINT UNSIGNED,
    PositionID			SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

CREATE TABLE `Group`(
	GroupID				SMALLINT UNSIGNED PRIMARY KEY,
    GroupName			VARCHAR(50) UNIQUE KEY,
    CreatorID			SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

CREATE TABLE GroupAccount(
	GroupID				SMALLINT UNSIGNED,
    AccountID			SMALLINT UNSIGNED,
    JoinDate			DATETIME,
    PRIMARY KEY (GroupID, AccountID)
);

CREATE TABLE TypeQuestion(
	TypeID				INT UNSIGNED PRIMARY KEY,
    TypeName			ENUM ('Essay', 'Multiple-Choice') UNIQUE KEY
);

CREATE TABLE CategoryQuestion(
	CategoryID			SMALLINT UNSIGNED PRIMARY KEY,
    CategoryName		VARCHAR(50) UNIQUE KEY
);

CREATE TABLE Question(
	QuestionID		SMALLINT UNSIGNED PRIMARY KEY,
    Content			VARCHAR(100),
    CategoryID		SMALLINT UNSIGNED,
    TypeID			SMALLINT UNSIGNED,
    CreatorID		SMALLINT UNSIGNED,
    CreateDate		DATETIME
);

CREATE TABLE Answer(
	AnswerID		SMALLINT UNSIGNED PRIMARY KEY,
    Content			VARCHAR(100),
    QuestionID		SMALLINT UNSIGNED,
    isCorrect		ENUM ('Right', 'Wrong') 
);

CREATE TABLE Exam(
	ExamID			SMALLINT UNSIGNED PRIMARY KEY,
    `Code`			VARCHAR(10) UNIQUE KEY,
    Title			VARCHAR(10),
    CategoryID		SMALLINT UNSIGNED,
    Duration		SMALLINT UNSIGNED,
    CreatorID		SMALLINT UNSIGNED,
    CreateDate		DATETIME
);
CREATE TABLE ExamQuestion(
	ExamID			SMALLINT UNSIGNED,
	QuestionID		SMALLINT UNSIGNED,
    PRIMARY KEY (ExamID, QuestionID)
);








