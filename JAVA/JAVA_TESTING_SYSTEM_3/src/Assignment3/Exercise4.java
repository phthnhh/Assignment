package Assignment3;

import java.util.Scanner;

public class Exercise4 {
	
	public static void main(String[] args) {
		//question1();
		//question2();
		//question3();
		//question4();
		//question5();
		//question6();
		//question7();
		//question8();
		//question9();
		//question10();
		//question11();
		//question12();
		//question13();
		//question14();
		//question15();
		//question16();
		
	}
	
//Question1:
	public static void question1() {
		
		System.out.println("Mời nhập chuỗi :");
		
		Scanner input = new Scanner(System.in);
		String a = input.next();
		
		String[] words = a.split("");
		System.out.println("Số lượng kí tự là: " + words.length);
		
		input.close();

	}
	
//Question2:
	public static void question2() {
		
		Scanner input = new Scanner(System.in);
		String s1 = input.nextLine();
		System.out.println("Xin mời nhập chuỗi1 :");
		
		String s2 = input.nextLine();
		System.out.println("Xin mời nhập chuỗi2 :");
		
		System.out.println("Hai chuỗi được nối với nhau là:" + s1.concat(s2));

		input.close();
    }

//Question3:
	public static void question3() {
	
		Scanner input = new Scanner(System.in);
		String name = input.next();
		System.out.println("Xin mời nhập tên");
		
		String firstChar = name.substring(0,1).toUpperCase();
		
		String leftChar = name.substring(1);
		
		name = firstChar + leftChar;
		
		System.out.println(name);
		
		input.close();
	}	
	
//Question4:
	public static void question4() {
		
		Scanner input = new Scanner(System.in);
		String name = input.next();
		name = name.toUpperCase();
		
		for(int i=0; i< name.length(); i++) {
			System.out.println("Output = " + i + name.charAt(i));
		}
		
		input.close();
	}
		
//Question5:
	public static void question5() {
		Scanner input = new Scanner(System.in);
		String firstName = input.next();
		String lastName = input.next();
		
		System.out.println("Họ là:");
		System.out.println("Tên là:");
		System.out.println("Họ và tên là: "+ firstName.concat(lastName));
		
		input.close();
	}
		
//Question6:
	public static void question6() {
		
	}
		
		
		
		
		
		
	
	
	
	
	
	
}