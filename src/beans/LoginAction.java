package beans;

import org.apache.commons.lang.StringUtils;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import model.User;
import service.LoginValidate;

public class LoginAction extends ActionSupport implements ModelDriven<User> {

	
	
	User user=new User();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void validate()
	{
		if(StringUtils.isEmpty(user.getUserid()))
		{
			addFieldError("userid", "User Id Cannot be Blank");
		}
		if(StringUtils.isEmpty(user.getPassword()))
		{
			addFieldError("password", "Password Cannot be Blank");
		}
	}
	public String execute()
	{
		LoginValidate validate=new LoginValidate();
		if(validate.verifyUser(user))
		{
			return SUCCESS;
		}
		return LOGIN;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	
}
