package tw.brad.apis;

import java.io.Serializable;

public class Bike implements Serializable{
	protected double  speed;
	public String owner;
	
	//建構式/子/方法
	public Bike(String name) {
		System.out.println("Bike(String)");
		owner = name;

		
	}
	
	public void upSpeed() {
		speed = speed<1 ? 1:speed*1.2;
		
	}
	
	public void downSpeed() {
		speed = speed <1 ? 0 : speed*0.5;
		
	}
	
	public double getSpeed() {
		return speed;
		
	}
	
	
	public String toString() {
		return "My speed is "+speed;
	}

}