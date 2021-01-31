-- vd 2: bao loi
DROP TRIGGER IF EXISTS		trigger_create_time;
DELIMITER $$
		CREATE TRIGGER 		trigger_create_time
        BEFORE INSERT ON `question`
        FOR EACH ROW 
        BEGIN 
			
				IF NEW.`CreateDate` > NOW() 	THEN
					SIGNAL SQLSTATE '12345' 
                    SET MESSAGE_TEXT = 'FIELD CREATEDATE MUST BE LESS THAN NOW';
				END IF;
                
		END$$
DELIMITER ;

INSERT INTO `question` 	(Content			, CategoryID, TypeID		, CreatorID	, CreateDate)
VALUE 					 ( 'Hỏi về C++'		,	8		,   '1'			,   '8'		,'2019-04-07');

-- vd1: nhap date
DROP TRIGGER IF EXISTS		trigger_create_time;
DELIMITER $$
		CREATE TRIGGER 		trigger_create_time
        BEFORE INSERT ON `question`
        FOR EACH ROW 
        BEGIN 
			
				IF NEW.`CreateDate` > NOW() 	THEN
					SET NEW. `CreateDate` = NOW();
				END IF;
                
		END$$
DELIMITER ;


-- Question 5: 

-- insert them data
INSERT INTO `Account`(Email	, Username, FullName, DepartmentID	, PositionID, CreateDate)
VALUES 					 ('admin@gmail.com', 'vtiaccademy1','vti1'	, '9', '1','2021-01-09');

-- Tao Trigger
DROP TRIGGER IF EXISTS		question5 ;
DELIMITER $$
		CREATE TRIGGER 		question5
        BEFORE DELETE ON 	`account` 
        FOR EACH ROW 
        BEGIN 
				IF OLD. `Email` LIKE 'admin@gmail.com'	THEN
					SIGNAL SQLSTATE '78789' 
                    SET MESSAGE_TEXT = 'KHONG DUOC XOA';
				END IF;
		END$$
DELIMITER ;

-- checking
DELETE 
FROM 		testingsystem.account A
WHERE		A.Email = 'admin@gmail.com' ;


