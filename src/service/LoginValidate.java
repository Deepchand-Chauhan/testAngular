package service;

import model.User;

public class LoginValidate {

	public boolean verifyUser(User user)
	{
		if(user.getUserid().equals("deep")&& user.getPassword().equals("deep"))
		{
			return true;
		}
		return false;
	}
	
}
