package Assignment3;

public class Exercise3 {
	
public static void main(String[] args) {
		//question1();
		//question2();
		question3();
}

//Question1:
public static void question1() {
	Integer salary = 5000;
	System.out.printf("%2.2f", (float) salary);
}

//Question2:
public static void question2() {
	String a = "1234567";
	Integer b = Integer.parseInt(a);
	System.out.println(b);
}

//Question3:
public static void question3() {
	Integer a = 1234567;
	int b = a.intValue();
	System.out.println(b);
}
}