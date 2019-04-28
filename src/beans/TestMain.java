package beans;

import com.deep.json.JsonHelper;

import model.User;

public class TestMain {

	public static void main(String args[]){
		User u=new User();
		u.setUserid("101");
		u.setPassword("deep");
		String str=JsonHelper.convertJavaToJson(u);
		System.out.println(str);
		
	}
}
