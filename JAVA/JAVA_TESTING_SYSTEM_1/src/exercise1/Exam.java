package exercise1;

import java.time.LocalDate;
import java.util.Date;

public class Exam {

	public int examId;

	public int code;

	public String title;

	public int duration;

	public Date createDate;

	public Account creator;

	CategoryQuestion categoryQuestion;

	Question[] questions;

}
