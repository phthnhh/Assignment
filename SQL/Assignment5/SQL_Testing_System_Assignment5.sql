-- EXERCISE 1 :

-- QUESTION 1 : Tao view chua danh sach nhan vien thuoc phong ban sale:

DROP VIEW IF EXISTS 		LIST_OF_STAFFS_SALE ;
CREATE	VIEW				LIST_OF_STAFFS_SALE AS
SELECT				a.AccountID, a.Username, a.Fullname 
FROM				testingsystem.account A
WHERE				A.DepartmentID = ( 			SELECT	D.DepartmentID 
												FROM 	department D
												WHERE	D.DepartmentName = 'Sale'	 );		

SELECT 				* 
FROM 				LIST_OF_STAFFS_SALE;






-- Question 2 : Tao view chua account tham gia vao nhieu group nhat:

DROP VIEW IF EXISTS 		SOLUONGACC;
CREATE	VIEW 				SOLUONGACC AS
SELECT				COUNT(GA.AccountID) AS SOLUONG
FROM				testingsystem.groupaccount GA
GROUP BY 			GA.AccountID ;
	-- C1 
SELECT 				*, COUNT(GA.AccountID) 
FROM 				testingsystem.groupaccount GA
GROUP BY			GA.AccountID
HAVING 				COUNT(GA.AccountID)	= (			SELECT	MAX(SOLUONG) AS SOLUONGLONNHAT	
													FROM 	SOLUONGACC 						);
	-- C2
SELECT 				*
FROM				SOLUONGACC
WHERE  				SOLUONG = ( 	SELECT			max(SOLUONG) 
									FROM 			SOLUONGACC 		);






-- Question 3: Question co content > 30 từ và deleted 
DROP VIEW IF EXISTS		 	LONG_QUESTION_CONTENT ;
CREATE VIEW  				LONG_QUESTION_CONTENT AS
SELECT					*
FROM					testingsystem.question Q
WHERE					length(CONTENT) > 30 ;

SELECT					*
FROM 					LONG_QUESTION_CONTENT ;






-- Question 4: Cac phong ban co nhieu nhan vien nhat  

DROP VIEW IF EXISTS 		AMOUNT_ACC;
CREATE VIEW 				AMOUNT_ACC AS (
SELECT 					COUNT(A.DepartmentID) AS SOLUONG, A.DepartmentID	
FROM 					testingsystem.account A
GROUP BY				A.DepartmentID		 );	 

SELECT		*
FROM		AMOUNT_ACC 
WHERE		SOLUONG = (		SELECT MAX(SOLUONG) AS SOLUONGLONNHAT
							FROM	AMOUNT_ACC ); 
							





-- Question 5: Tao view chua tat ca cau hoi do user ho Nguyen tao

DROP VIEW IF EXISTS 		QUESTIONS_OF_NGUYEN;
CREATE VIEW 				QUESTIONS_OF_NGUYEN		 AS (
SELECT					A.AccountID, A.FullName, A.Username, Q.QuestionID, Q.Content
FROM					testingsystem.account A
JOIN					testingsystem.question Q ON A.AccountID = Q.CreatorID 
WHERE					A.FullName LIKE ('Nguyen%') 			);

SELECT 		* 
FROM		QUESTIONS_OF_NGUYEN ;






