package com.zhou.webAjaxAndJosn;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Ld_city extends HttpServlet {

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
		//设置服务器返回前台的编码格式
		resp.setCharacterEncoding("UTF-8");
		PrintWriter pWriter = resp.getWriter();
		String provinceId = req.getParameter("provinceId");  
		System.out.println(provinceId);
		JSONArray cityArry = new JSONArray();
		JSONObject reslutJson=new JSONObject();
		JSONObject temp;
		switch (Integer.parseInt(provinceId)) {
		case 1:
			temp = new JSONObject();temp.put("id", "1");temp.put("city", "茂名");cityArry.add(temp);
			temp = new JSONObject();temp.put("id", "2");temp.put("city", "广州");cityArry.add(temp);
			temp = new JSONObject();temp.put("id", "3");temp.put("city", "江门");cityArry.add(temp);
			break;
		case 2:
			temp = new JSONObject();temp.put("id", "1");temp.put("city", "南京");cityArry.add(temp);
			temp = new JSONObject();temp.put("id", "2");temp.put("city", "苏州");cityArry.add(temp);
			temp = new JSONObject();temp.put("id", "3");temp.put("city", "上海");cityArry.add(temp);
			break;
		case 3:

			temp = new JSONObject();temp.put("id", "1");temp.put("city", "合肥");cityArry.add(temp);
			temp = new JSONObject();temp.put("id", "2");temp.put("city", "蚌埠");cityArry.add(temp);
			temp = new JSONObject();temp.put("id", "3");temp.put("city", "埠阳");cityArry.add(temp);
			break;

		default:
			break;
		}
		reslutJson.put("result", cityArry);
		pWriter.println(reslutJson);
		pWriter.flush();
		pWriter.close();
	}

}
