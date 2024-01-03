package com.spring.service;

import java.sql.SQLException;

import com.spring.dto.AdminVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;

public interface AdminService {

	void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException;
	AdminVO getAdmin(String id) throws SQLException;
	
	String findId(AdminVO admin) throws SQLException;
	AdminVO findPwdQuest(AdminVO admin) throws SQLException;
	String findPwd(AdminVO admin) throws SQLException;
	
	void join(AdminVO admin) throws SQLException;
	
	String getPwd(String adminId) throws SQLException;
	void exit(String adminId) throws SQLException;
}
