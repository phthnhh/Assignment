
CREATE DATABASE Testing_system_assignment1;
USE Testing_system_assignment1;

CREATE TABLE Department(
	DepartmentID		INT,
    DapartmentName		VARCHAR(20)
);

CREATE TABLE `Position`(
	PositionID			INT,
    PositionName		VARCHAR(20)
);

CREATE TABLE `Account`(
	AccountID			INT,
    Email				VARCHAR(50),
    Username			VARCHAR(20),
    FullName			VARCHAR(50),
    DepartmentID		INT,
    PositionID			INT,
    CreateDate			DATE
);

CREATE TABLE `Group`(
	GroupID				INT,
    GroupName			VARCHAR(50),
    CreatorID			INT,
    CreateDate			DATE
);

CREATE TABLE GroupAccount(
	GroupID				INT,
    AccountID			INT,
    JoinDate			DATE
);

CREATE TABLE TypeQuestion(
	TypeID				INT,
    TypeName			VARCHAR(15)
);

CREATE TABLE CategoryQuestion(
	CategoryID			INT,
    CategoryName		VARCHAR(15)
);

CREATE TABLE Question(
	QuestionID		INT,
    Content			VARCHAR(100),
    CategoryID		INT,
    TypeID			INT,
    CreatorID		INT,
    CreateDate		DATE
);

CREATE TABLE Answer(
	AnswerID		INT,
    Content			VARCHAR(100),
    QuestionID		INT,
    isCorrect		VARCHAR(5)
);

CREATE TABLE Exam(
	ExamID			INT,
    `Code`			VARCHAR(10),
    Title			VARCHAR(10),
    CategoryID		INT,
    Duration		INT,
    CreatorID		INT,
    CreateDate		DATE
);

CREATE TABLE ExamQuestion(
	ExamID			INT,
	QuestionID		INT
);








