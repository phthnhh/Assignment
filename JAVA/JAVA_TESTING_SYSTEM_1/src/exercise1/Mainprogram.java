package exercise1;

import java.util.Date;

public class Mainprogram {
	public static void main(String[] args) {

		// create department
		Department department1 = new Department();
		department1.departmentId = 11;
		department1.departmentName = "Sale";

		Department department2 = new Department();
		department2.departmentId = 12;
		department2.departmentName = "Maketing";

		Department department3 = new Department();
		department3.departmentId = 13;
		department3.departmentName = "Management";

		// create position
		Position position1 = new Position();
		position1.positionId = 21;
		position1.positionName = PositionName.DEV;

		Position position2 = new Position();
		position2.positionId = 22;
		position2.positionName = PositionName.PM;

		Position position3 = new Position();
		position3.positionId = 23;
		position3.positionName = PositionName.DEV;

		//
		Account account1 = new Account();
		account1.accountId = 31;
		account1.userName = "nguyenvananh31";
		account1.fullName = "Nguyen Van Anh";
		account1.email = "nguyenvananh11@gmail.com";
		account1.department = department2;
		account1.position = position2;
		account1.createDate = new Date("2020/12/02");

		Account account2 = new Account();
		account2.accountId = 32;
		account2.userName = "phanquanganh32";
		account2.fullName = "Phan Quang Anh";
		account2.email = "phanquanganh32@gmail.com";
		account2.department = department1;
		account2.position = position1;
		account2.createDate = new Date("2019/10/25");

		Account account3 = new Account();
		account3.accountId = 33;
		account3.userName = "trannhuha33";
		account3.fullName = "Tran Nhu Ha";
		account3.email = "trannhuha33@gmail.com";
		account3.department = department2;
		account3.position = position2;
		account3.createDate = new Date("2020/10/12");

		// create group
		Group groupA = new Group();
		groupA.groupId = 41;
		groupA.groupName = "Nhom A";
		groupA.creator = account1;
		groupA.createDate = new Date("2020/01/01");

		Group groupB = new Group();
		groupB.groupId = 42;
		groupB.groupName = "Nhom B";
		groupB.creator = account2;
		groupB.createDate = new Date("2018/21/01");

		Group groupC = new Group();
		groupC.groupId = 43;
		groupC.groupName = "Nhom C";
		groupC.creator = account3;
		groupC.createDate = new Date("2019/03/01");

		Group[] groupAccount1 = { groupA, groupB, groupC };
		account1.groups = groupAccount1;

		Group[] groupAccount2 = { groupA, groupC };
		account2.groups = groupAccount2;

		Group[] groupAccount3 = { groupC };
		account3.groups = groupAccount3;

		//
		TypeQuestion typeQuestion1 = new TypeQuestion();
		typeQuestion1.typeId = 61;
		typeQuestion1.typeName = TypeName.ESSAY;

		TypeQuestion typeQuestion2 = new TypeQuestion();
		typeQuestion2.typeId = 62;
		typeQuestion2.typeName = TypeName.MULTIPLECHOICE;

		//
		CategoryQuestion categoryQuestion1 = new CategoryQuestion();
		categoryQuestion1.categoryId = 71;
		categoryQuestion1.categoryName = "JAVA";

		CategoryQuestion categoryQuestion2 = new CategoryQuestion();
		categoryQuestion2.categoryId = 72;
		categoryQuestion2.categoryName = "C#";

		//
		Question question1 = new Question();
		question1.questionId = 81;
		question1.content = "Ngon ngu C# ra doi nam nao?";
		question1.categoryQuestion = categoryQuestion2;
		question1.typeQuestion = typeQuestion1;
		question1.creator = account2;
		question1.createDate = new Date("2020/12/12");

		Question question2 = new Question();
		question2.questionId = 82;
		question2.content = "Ngon ngu C++ ra doi nam nao?";
		question2.categoryQuestion = categoryQuestion2;
		question2.typeQuestion = typeQuestion1;
		question2.creator = account2;
		question2.createDate = new Date("2020/10/12");

		Question question3 = new Question();
		question3.questionId = 83;
		question3.content = "Ngon ngu JAVA ra doi nam nao?";
		question3.categoryQuestion = categoryQuestion2;
		question3.typeQuestion = typeQuestion1;
		question3.creator = account2;
		question3.createDate = new Date("2020/09/13");

		//
		Answer answer1 = new Answer();
		answer1.answerId = 91;
		answer1.content = "Nam 2000";
		answer1.isCorrect = true;

		Answer answer2 = new Answer();
		answer2.answerId = 92;
		answer2.content = "Nam 1988";
		answer2.isCorrect = false;

		Answer answer3 = new Answer();
		answer3.answerId = 93;
		answer3.content = "Nam 1995";
		answer3.isCorrect = true;

		//
		Exam exam1 = new Exam();
		exam1.examId = 101;
		exam1.code = 1001;
		exam1.title = "Bai kiem tra so 1";
		exam1.categoryQuestion = categoryQuestion2;
		exam1.duration = 90;
		exam1.creator = account1;
		exam1.createDate = new Date("2020/12/12");

		Question[] examQuestion1 = { question1, question3 };
		exam1.questions = examQuestion1;

		Exam exam2 = new Exam();
		exam2.examId = 102;
		exam2.code = 1002;
		exam2.title = "Bai kiem tra so 2";
		exam2.categoryQuestion = categoryQuestion2;
		exam2.duration = 90;
		exam1.creator = account1;
		exam2.createDate = new Date("2020/12/12");

		Question[] examQuestion2 = { question2, question3 };
		exam2.questions = examQuestion2;

		Exam exam3 = new Exam();
		exam3.examId = 103;
		exam3.code = 1003;
		exam3.title = "Bai kiem tra so 3";
		exam3.categoryQuestion = categoryQuestion2;
		exam3.duration = 90;
		exam1.creator = account1;
		exam3.createDate = new Date("2020/12/12");

		Question[] examQuestion3 = { question1, question2 };
		exam3.questions = examQuestion3;

		////

		System.out.println("Thong tin phong ban 1: ");

		System.out.println("ID:" + department1.departmentId);
		System.out.println("Name:" + department1.departmentName);

		System.out.println("Thong tin chuc vu nhan vien 2");

		System.out.println("ID:" + position2.positionId);
		System.out.println("Name:" + position2.positionName);

		System.out.println("Thong tin ve account 3");

		System.out.println("ID				  :" + account3.accountId);
		System.out.println("Email			  :" + account3.email);
		System.out.println("Username		  :" + account3.userName);
		System.out.println("Ho va ten		  :" + account3.fullName);
		System.out.println("Phong ban		  :" + account3.department.departmentId);
		System.out.println("Chuc vu			  :" + account3.position.positionId);
		System.out.println("Ngay tao tai khoan	 :" + account3.createDate);

	}
}