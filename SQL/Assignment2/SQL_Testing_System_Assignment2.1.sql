DROP DATABASE IF EXISTS Testing_system_assignment1;
CREATE DATABASE Testing_system_assignment1;
USE Testing_system_assignment1;

CREATE TABLE Department(
	DepartmentID		SMALLINT UNSIGNED,
    DapartmentName		VARCHAR(20)
);

CREATE TABLE `Position`(
	PositionID			SMALLINT UNSIGNED,
    PositionName		ENUM ('Dev', 'Test', 'Scrum Master', 'PM')
);

CREATE TABLE `Account`(
	AccountID			SMALLINT UNSIGNED,
    Email				VARCHAR(50),
    Username			VARCHAR(20),
    FullName			VARCHAR(50),
    DepartmentID		SMALLINT UNSIGNED,
    PositionID			SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

CREATE TABLE `Group`(
	GroupID				SMALLINT UNSIGNED,
    GroupName			VARCHAR(50),
    CreatorID			SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

CREATE TABLE GroupAccount(
	GroupID				SMALLINT UNSIGNED,
    AccountID			SMALLINT UNSIGNED,
    JoinDate			DATETIME
);

CREATE TABLE TypeQuestion(
	TypeID				INT UNSIGNED,
    TypeName			ENUM ('Essay', 'Multiple-Choice')
);

CREATE TABLE CategoryQuestion(
	CategoryID			SMALLINT UNSIGNED,
    CategoryName		VARCHAR(50)
);

CREATE TABLE Question(
	QuestionID		SMALLINT UNSIGNED,
    Content			VARCHAR(100),
    CategoryID		SMALLINT UNSIGNED,
    TypeID			SMALLINT UNSIGNED,
    CreatorID		SMALLINT UNSIGNED,
    CreateDate		DATETIME
);

CREATE TABLE Answer(
	AnswerID		SMALLINT UNSIGNED,
    Content			VARCHAR(100),
    QuestionID		SMALLINT UNSIGNED,
    isCorrect		ENUM ('Right', 'Wrong')
);

CREATE TABLE Exam(
	ExamID			SMALLINT UNSIGNED,
    `Code`			VARCHAR(10),
    Title			VARCHAR(10),
    CategoryID		SMALLINT UNSIGNED,
    Duration		SMALLINT UNSIGNED,
    CreatorID		SMALLINT UNSIGNED,
    CreateDate		DATETIME
);

CREATE TABLE ExamQuestion(
	ExamID			SMALLINT UNSIGNED,
	QuestionID		SMALLINT UNSIGNED
);








