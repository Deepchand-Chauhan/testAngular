package com.deep.json;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

public class JsonHelper {

	private static ObjectMapper mapper;

	static{
		mapper=new ObjectMapper();
		
	}
	
	
	public static String convertJavaToJson(Object object){
		System.out.println("json Method Invoked ");
		String jsonResult="";
			try {
				jsonResult = mapper.writeValueAsString(object);
			} catch (JsonGenerationException e) {
			    System.out.println("Json generate Exception -->"+e.getMessage());
				e.printStackTrace();
			} catch (JsonMappingException e) {
				System.out.println("Json mapping Exception -->"+e.getMessage());
				e.printStackTrace();
			} catch (IOException e) {
				System.out.println("Json IO  Exception -->"+e.getMessage());
				e.printStackTrace();
			}
	
		
		return jsonResult;
	}

/*	
	public static void generateJson(Object object) {
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpServletResponse res = ServletActionContext.getResponse();
		String header = req.getHeader("Accept");
		Gson gson = new Gson();
		String output = new String();
		try {
			output = gson.toJson(object);
			PrintWriter out = res.getWriter();
			out.print(output);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	
	
	
public static <T> T convertJsonToJava(String json, Class<T> cls){
	
	T javaResult=null;
	try {
		javaResult= mapper.readValue(json, cls);
	} catch (JsonParseException e) {
	    System.out.println("Json Parse Exception->> "+e.getMessage());
	} catch (JsonMappingException e) {
		System.out.println("Json Mapping Exception->> "+e.getMessage());
	} catch (IOException e) {
		System.out.println("Json IO Exception->> "+e.getMessage());
	}
	
	return javaResult;
}
	
}
