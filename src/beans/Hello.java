package beans;

import com.deep.json.JsonHelper;
import com.opensymphony.xwork2.Action;

import model.User;
import service.Business;

public class Hello implements Action {
	
	
	private String bus;
	private String lang;

	public String execute()
	{
		
		Business b=new Business();
		setBus(b.bus(getLang()));
		System.out.println(getLang());
		
		System.out.println("Execute method");
		return SUCCESS;
	}
	
	public String index()
	{
		System.out.println("Index method executed");
		return SUCCESS;
	}
	
    public void angularHello(){
    	User u=new User();
    	u.setUserid("111");
    	u.setPassword("deep");
    	System.out.println("Hello ");
    	String str=JsonHelper.convertJavaToJson(u);
    	System.out.println(str);
    }
	public void getResult(){
		String res=new String();
		res="Hello Json 2 ";
		System.out.println(res);
		String result=JsonHelper.convertJavaToJson(res);
		System.out.println(result);
	}
	public String stdList(){
		System.out.println("List");
		return SUCCESS;
	}
	public String getBus() {
		return bus;
	}
	public void setBus(String bus) {
		this.bus = bus;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	

}
