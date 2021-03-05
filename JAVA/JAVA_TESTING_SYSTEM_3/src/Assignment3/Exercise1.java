package Assignment3;

import java.util.Random;
import java.util.Scanner;

public class Exercise1 {
	public static void main(String[] args) {
//question1();
//question231();
//question232();
//question4();
}
	
//Question1:
public static void question1() {

	float Salary1;
	float Salary2;
	
	System.out.println("Question1: ");
	
	Salary1= (float) 5240.5;
	Salary2= (float) 10970.055;
	System.out.println("Salary1: " + Salary1 + " ; " + "Salary2: " + Salary2);
	
	int roundSalary1 = (int) Salary1;
	int roundSalary2 = (int) Salary2;
	System.out.println("Luong lam tron 1 la: " + roundSalary1+ " ; " + "Luong lam tron 2 la: " + roundSalary2);
	}

//Question23:

//Cách 1:
public static void question231()	{
	
	int min = 0;
	int max = 99999;
	int a = (int) (Math.random() * max) + min;
	while (a < 10000) {
		a = a* 10;
	}
	System.out.println("Question2  " );
	System.out.println("Random number: " + a);

	System.out.println("Question3 ");
	String b = String.valueOf(a);
	System.out.println("Hai so cuoi la:" + b.substring(3));
}

//Cách 2:
public static void question232()	{
	
	for (int i=0; i<1; i++) {
		Random random = new Random();
		int a = random.nextInt(99999) + 0;
		System.out.println("Question2  " );
		System.out.println("Random Number is: " + a);
		
		System.out.println("Question3 ");
		String b = String.valueOf(a);
		System.out.println("Hai so cuoi la:" + b.substring(3));
	}
	
}
//Question4:
public static void question4()  {
	
	Scanner input = new Scanner(System.in);
	int a = input.nextInt();
	System.out.println("Số a = ");
	
	
	int b = input.nextInt();
	if (b == 0) {
				System.out.println("Xin mời nhập lại giá trị b khác 0");
	}
	input.close();
	
	System.out.println("Thương số cần tìm là " + (float) a / (float) b);
	}	
}




