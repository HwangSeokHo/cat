package run;

import ai.pythonAi;

public class run {

	public static void main(String[] args) {
		pythonAi ai = new pythonAi();
		
		String value = ai.aiValue().trim(); //trim() : 공백 제거
		String result = null;
		
		if(value.equals("0")==true) {
			result = "정상입니다.";
		}
		else if(value.equals("1")==true){
			result = "비만입니다.";
		}
		else {
			result = "오류.";
		}
		System.out.println(result);
	}

}
