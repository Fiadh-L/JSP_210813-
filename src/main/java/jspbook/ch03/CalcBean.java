package jspbook.ch03;

public class CalcBean {

	private int num2, num1;
	private String operator="";
	private int result;
	
	//계산기능 구현
	public void calculate() {
		
		if(operator.equals("+")){
			result=num1+num2;
		}
		else if(operator.equals("-")){
			result=num1-num2;
		}
		else if(operator.equals("*")){
			result=num1*num2;
		}
		else if(operator.equals("/")){
			result=num1/num2;
		}
		
	}
	
	//set 메서드
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	//get 메서드
	public int getResult() {
		return result;
	}
	
	
}
