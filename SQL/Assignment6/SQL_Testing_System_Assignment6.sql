-- Question 1: Nguoi dung nhap vao ten department va in ra acc thuoc department do

DROP PROCEDURE IF EXISTS	NAME_in_DEPARTMENT;
DELIMITER $$
CREATE PROCEDURE NAME_in_DEPARTMENT (IN `TEXT` VARCHAR(50))
			BEGIN 	
					SELECT 	*
                    FROM 	department D 
					JOIN 	testingsystem.account A ON D.DepartmentID = A.DepartmentID ;
			END$$
DELIMITER ;

CALL 		NAME_in_DEPARTMENT ('G');


-- Question 2: in ra so luong acc trong moi group

DROP PROCEDURE IF EXISTS	amount_acc_in_groups;
DELIMITER $$
CREATE PROCEDURE amount_acc_in_groups (IN GROUPName VARCHAR(50) )
			BEGIN 	
				SELECT 	G.GroupID, G.GroupName, COUNT(GA.AccountID) AS SOLUONG_ACC
				FROM 	testingsystem.group  G
				JOIN 	groupaccount GA ON G.GroupID = GA.GroupID
				WHERE	G.GroupName = GROUPName ;
			END$$
DELIMITER ;

CALL 	amount_acc_in_groups('VTI Sale 01')	;



-- Question 3:

DROP PROCEDURE IF EXISTS	AMOUNT_Q_IN_EACH_TYPEQ_OFMONTH;
DELIMITER $$
CREATE PROCEDURE 			AMOUNT_Q_IN_EACH_TYPEQ_OFMONTH  (IN TYPE_QUESTION_ID TINYINT UNSIGNED)
		BEGIN 
				SELECT  	Q.TypeID, COUNT(Q.QuestionID)
                FROM		question Q 
                WHERE		month(CreateDate) = month(now())
			    GROUP BY 	Q.TypeID;
		END$$
DELIMITER ;

CALL AMOUNT_Q_IN_EACH_TYPEQ_OFMONTH(4);


-- Question 4:

DROP PROCEDURE IF EXISTS	ID_TYPEQUESTION_MAXQ ;
DELIMITER $$
CREATE PROCEDURE 			ID_TYPEQUESTION_MAXQ  (IN TYPE_QUESTION_ID TINYINT UNSIGNED)
		BEGIN	
				SELECT 		Q.TypeID,  COUNT(Q.QuestionID)
                FROM		question Q
                GROUP BY	Q.TypeID 
                HAVING		count(Q.QuestionID) = ( SELECT	max(SOLUONG)	AS			 SOLUONGLONNHAT
													FROM	(	SELECT 		count(Q.QuestionID)	AS SOLUONG	
																FROM		question Q
																GROUP BY    Q.TypeID 						)	AS SOLUONG	);

END$$
DELIMITER ;

CALL		 ID_TYPEQUESTION_MAXQ (2);

-- Question 5: Tu q4 tim ra name cua tyoequestion
DROP PROCEDURE IF EXISTS	ID_TYPEQUESTION_MAXQ ;
SELECT 	*
FROM	ID_TYPEQUESTION_MAXQ ;


