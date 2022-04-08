package ai;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.ProcessBuilder;
import java.io.InputStreamReader;

public class pythonAi {

	public String aiValue() {
		String value = null;
		
		//이미지 경로
		String img_path = "C:/CatProject/AI_Python/img/";
		
		//이미지 명
		String img_name = "cat3.jpg";
		
		String img_path_name = img_path + img_name;

		//파이썬 인터프리터 경로 통일하세요
		//C:/ProgramData/Anaconda3/envs/AI(경로 폴더명 통일하세요)/python.exe
		String command = "C:/ProgramData/Anaconda3/envs/AI/python.exe";
		
		//파이썬 코드 경로
		String arg1 = "C:/CatProject/AI_Python/aiResult.py";
		
		try {
			ProcessBuilder builder = new ProcessBuilder(command, arg1, img_path_name);
			//System.out.println(">>>  1");
			Process process = builder.start();
			int exitVal = process.waitFor();
			BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream(), "euc-kr"));
			String line;
			
			//System.out.println(">>>  2" + br.readLine());
			while ((line = br.readLine()) != null) {
				System.out.println(">>>  " + line);
				value = line;
			}
			
			if(exitVal != 0) {
				System.out.println("error on process");
				System.out.println(exitVal);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("값 : "+ value);
		
		return value;
	}
}
