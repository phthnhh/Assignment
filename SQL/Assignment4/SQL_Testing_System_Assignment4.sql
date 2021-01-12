-- Exercise 1: Join

-- Question 1 :
SELECT 		*
FROM		`Account` a
INNER JOIN  Department d ON a.DepartmentID = d.DepartmentID
;

-- Question 2 :
SELECT 		*
FROM		`Account` a
WHERE		CreateDate > '2010_12_20'
;

-- Question 3 :
SELECT		*
FROM		`Account` a
INNER JOIN 	Position p ON a.PositionID = p.PositionID
WHERE PositionName = 'Dev'
;

-- Question 4 :
SELECT 		*,  count(a.DepartmentID) AS 'so luong'
FROM		`Account` a
INNER JOIN 	Department d ON a.DepartmentID = d.DepartmentID
GROUP BY 	a.DepartmentID 
HAVING	    count(a.DepartmentID) >= 3
;

-- Question 5 :
SELECT		*
FROM		Question q
INNER JOIN	Examquestion eq ON q.QuestionID = eq.QuestionID
GROUP BY	q.Content
HAVING		count(q.Content) = (SELECT		max(SOCAU) AS SOCAUNHIEUNHAT
								FROM		(SELECT		count(q.QuestionID) AS SOCAU
											FROM		Question q
											INNER JOIN	Examquestion eq ON q.QuestionID = eq.QuestionID
											GROUP BY	q.QuestionID) AS SOCAU)
;

-- Question 6 :
SELECT  	*, COUNT(Q.questionid)
FROM		CategoryQuestion CQ
LEFT JOIN	Question Q ON CQ.CategoryID = Q.CategoryID
GROUP BY	CQ.CategoryID
ORDER BY	CQ.CategoryID ASC
;

-- Question 7 :
SELECT		q.QuestionID , count(eq.ExamID)
FROM		question q
LEFT JOIN	ExamQuestion eq ON eq.QuestionID = q.QuestionID
GROUP BY	q.QuestionID 
ORDER BY	q.QuestionID ASC
;

-- Question 8 :
SELECT		Q.QuestionID, Q.Content, COUNT(A.QuestionID) AS 'SO LUONG'
FROM		question Q
INNER JOIN 	Answer A ON Q.QuestionID = A.QuestionID
GROUP BY	A.QuestionID
HAVING		count(A.QuestionID) = (
									SELECT		max(SOCAU) 
									FROM		(
													SELECT		count(A.QuestionID) AS SOCAU
													FROM		question Q
													INNER JOIN 	Answer A ON Q.QuestionID = A.QuestionID
													GROUP BY	A.QuestionID							) AS SOCAU )
;

 -- Question 9 :
 SELECT 		GroupID, GroupName, AccountID  ,count(A.AccountID)
 FROM 			`Group` G
 LEFT JOIN 		`Account` A ON G.CreatorID = A.AccountID 
 GROUP BY		A.AccountID
 ORDER BY		count(A.AccountID) ASC
 ;
 
 -- Question 10 :
 SELECT			AccountID,FullName,PositionName , COUNT(P.PositionID)
 FROM 			`Account` A
 INNER JOIN 	position P ON A.PositionID = P.PositionID
 GROUP BY		P.PositionID
 HAVING 		COUNT(P.PositionID) = ( SELECT	MIN(SONGUOI) AS 'SO NGUOI IT NHAT LA'
										FROM 				(SELECT			COUNT(P.PositionID) AS SONGUOI
															FROM 			`Account` A
															INNER JOIN 		position P ON A.PositionID = P.PositionID
															GROUP BY		P.PositionID) 								AS SONGUOI)
;

-- Question 11 :
-- Question 12 :
SELECT 			Q.CreatorID AS 'ID NGUOI TAO CAU HOI' , Q.QuestionID AS 'ID CAU HOI', Q.Content AS 'NOI DUNG CAU HOI' , CQ.CategoryName AS 'CHU DE CAU HOI', TQ.TypeName AS 'LOAI CAU HOI', A.Content AS 'NOI DUNG CAU TRA LOI'
FROM			Question Q
INNER JOIN 		Answer A ON Q.QuestionID = A.QuestionID 
INNER JOIN 		TypeQuestion TQ ON Q.TypeID = TQ.TypeID
INNER JOIN 		CategoryQuestion CQ ON Q.CategoryID = CQ.CategoryID
;

-- Question 13 :
SELECT 			*, COUNT(Q.TypeID) AS 'SO LUONG CAU HOI'
FROM			Question Q
INNER JOIN 		TypeQuestion TQ ON Q.TypeID = TQ.TypeID
GROUP BY		Q.TypeID
;

-- Question 14 15 : 
SELECT 		G.GroupID AS 'ID CUA GROUP', G.GroupName AS 'TEN NHOM'
FROM		`Group` G
LEFT JOIN 	`GroupAccount` GA ON G.GroupID = GA.GroupID
WHERE 		GA.AccountID IS NULL
;

-- Question 16 :
SELECT 		*
FROM		Question q
LEFT JOIN 	Answer a ON q.QuestionID = a.QuestionID
WHERE 		a.AnswerID IS NULL
;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 








