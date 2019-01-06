package com.zhou.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zhou.Util.DbUtil;
import com.zhou.model.User;

public class UserDao {
	public String checkName(User user) {
		String result=null;
		String sql="select name from tb_user where name=?";
		PreparedStatement pStatement;
		try {
			pStatement=DbUtil.getConnection().prepareStatement(sql);
			pStatement.setString(1, user.getUserName());
			ResultSet rs = pStatement.executeQuery();
			if (rs.next()) {
				result = "yes";
			}else {
				result = "no";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}
}
