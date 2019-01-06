package com.zhou.webAjaxAndJosn;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetAjaxInformServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		PrintWriter pWriter = resp.getWriter();
		//��̨���صĽ��������
		JSONObject objResult=new JSONObject();
		//���person������
		JSONArray personArry=new JSONArray();
		
		//person1
		JSONObject person1=new JSONObject();
		person1.put("name","����");
		person1.put("age", 20);
		//�ɼ�������Chinese��Math��English
		JSONObject score1=new JSONObject();
		score1.put("Chinese", 89);
		score1.put("Math", 78);
		score1.put("English", 90);
		person1.put("score", score1);
		//���person��������
		personArry.add(person1);
		
		//person2
		JSONObject person2=new JSONObject();
		person2.put("name","����");
		person2.put("age", 21);
		JSONObject score2=new JSONObject();
		score2.put("Chinese", 82);
		score2.put("Math", 89);
		score2.put("English", 60);
		person2.put("score", score2);
		personArry.add(person2);
		
		//person3
		JSONObject person3=new JSONObject();
		person3.put("name","����");
		person3.put("age", 22);
		JSONObject score3=new JSONObject();
		score3.put("Chinese", 66);
		score3.put("Math", 73);
		score3.put("English", 96);
		person3.put("score", score3);
		personArry.add(person3);
		
		//person��ӵ��������
		objResult.put("persons", personArry);
		//��̨���ؽ����
		pWriter.println(objResult);
		pWriter.flush();
		pWriter.close();
	}
	
	
}
