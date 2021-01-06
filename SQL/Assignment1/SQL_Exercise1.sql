
CREATE DATABASE Fresher_Training_Management;
USE Fresher_Training_Management;

CREATE TABLE Traniee(
	TraineeID			INT,
    Full_Name			VARCHAR(50),
    Birth_Date			DATE,
    Gender				VARCHAR(7),
    ET_IQ				INT,
    ET_Gmath			INT,
    ET_English			INT,
    Training_Class		VARCHAR(10),
    Evaluation_Notes	VARCHAR(20)
);