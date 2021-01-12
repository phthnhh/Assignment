
-- Question 2 :
SELECT		*
FROM 		department
;

-- Question 3 :
SELECT		DepartmentID, DepartmentName
FROM 		department
WHERE 		DepartmentName = 'Sale'
;

-- Question 4 : (Having ko co function)
SELECT 		*, char_length(FullName)
FROM		`Account`
WHERE 		char_length(FullName) = (SELECT max(char_length(FullName)) FROM	`Account`)
;

SELECT 		*, char_length(FullName)
FROM 		`Account`
GROUP BY	FullName
HAVING		char_length(FullName) = (SELECT max(char_length(FullName)) FROM	`Account`)
;

-- Question 5 :
SELECT		*, char_length(FullName) AS 'do dai lon nhat'
FROM 		`Account` 
WHERE		departmentID = 3
AND 		char_length(FullName) = (SELECT	max(char_length(FullName))FROM 	`Account` )
;

-- Question 6 :
SELECT		*
FROM 		`Group`
WHERE		CreateDate < '2019_12_20'
;

-- Question 7 :
SELECT		*, QuestionID, (COUNT(QuestionID)) AS 'so luong'
FROM 		answer
GROUP BY	QuestionID
HAVING 		COUNT(QuestionID) >= 4
;

-- Question 8 :
SELECT 		*
FROM		exam 
WHERE		(CreateDate < '2019_12_20') AND (Duration >= 60)
;

-- Question 9 :
SELECT		*
FROM		`Group`
ORDER BY	CreateDate DESC 
LIMIT 		5
;

-- Question 10 : (Select * ko in het ten 2 nhan vien)
SELECT		*, COUNT(1) AS 'SO NHAN VIEN'
FROM		`Account`
WHERE		(DepartmentID = 2) 
;

-- Question 11 :
SELECT		*
FROM 		`Account`
WHERE		FullName LIKE 'D%o'
;

-- Question 12 : (Khong chay duoc)
DELETE	
FROM 		exam
WHERE  		CreateDate < '2019_12_20'
;

-- Question 13: (Khong chay duoc)
DELETE 		
FROM		Question
WHERE 		Content LIKE 'Cauhoi%'
;

-- Question 14 : 
UPDATE		`Account`
SET 	
			FullName='Nguyen Ba Loc',
			Email='loc.nguyenba@vti.com.vn'
WHERE 		AccountID=5
;

-- Question 15 :
UPDATE 		`GroupAccount`
SET			AccountID = 5
WHERE		GroupID = 4
;















