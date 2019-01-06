package com.zhou.webAjaxAndJosn;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhou.Dao.UserDao;
import com.zhou.model.User;

import net.sf.json.JSONObject;

public class LoginServlet extends HttpServlet {

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
		this.checkUserName(req, resp);
	}

	private void checkUserName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pWriter = resp.getWriter();
		String userName = req.getParameter("userName");
		User user = new User(userName);
		JSONObject resultJosn = new JSONObject();
		UserDao ud = new UserDao();
		String checkResult = ud.checkName(user);
		System.out.println(checkResult);
		if ("yes".equals(checkResult)) {
			resultJosn.put("info", true);
		} else if("no".equals(checkResult)){
			resultJosn.put("info", false);
		}

		pWriter.println(resultJosn);
		pWriter.flush();
		pWriter.close();

	}

}
