package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.AdminVO;

public interface AdminDAO {

	AdminVO selectAdminById(String adminId) throws SQLException;
	void insertAdmin(AdminVO admin) throws SQLException;
	String selectId(AdminVO admin) throws SQLException;
	String selectPwdById(String adminId) throws SQLException;
	AdminVO selectQuest(AdminVO admin) throws SQLException;
	String selectPwd(AdminVO admin) throws SQLException;
	void updateState(String adminId) throws SQLException;
}
