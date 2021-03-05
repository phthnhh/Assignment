package Assignment3;

import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;


public class Exercise2 {

public static void main (String[] args){
	Account [] accounts = new Account[5];
	
	for (int i=0; i<5; i++) {
		Account account = new Account();
		account.email = "Email" + (i+1);
		account.userName = "Username" + (i+1);
		account.fullName = "Fullname" + (i+1);
		account.createDate =  new Date();
			
		accounts[i] = account;
	}
	
	for (Account account : accounts) {
		System.out.println(account.email);
		System.out.println(account.userName);
		System.out.println(account.fullName);
		System.out.println(account.createDate);
	}
	
}
}
