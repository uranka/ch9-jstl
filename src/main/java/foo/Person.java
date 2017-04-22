package foo; 

public class Person {
	
	private String name;
	private Dog[] dogs;
	
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	public void setDogs(Dog[] dogs) {
		this.dogs = dogs;
	}
	public Dog[] getDogs() {
		return dogs;
	}
}