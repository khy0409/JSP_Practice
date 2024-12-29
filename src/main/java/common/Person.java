package common;

//자바 빈즈 생성
//빈즈 생성 시 규약
/*1. 기본 패키지 이외의 패키지
  2. 멤버 변수의 접근 지정자는 private
  3. 기본 생성자가 있어야함
  4. getter/setter 메서드 있어야함
  5. 메서드 접근 지정자는 public*/
public class Person {
	private String name;
	private int age;
	
	public Person() {}
	
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
