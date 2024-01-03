package com.spring.service;

import java.sql.SQLException;

import com.spring.dao.AdminDAO;
import com.spring.dto.AdminVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;

public class AdminServiceImpl implements AdminService {

	private AdminDAO adminDAO;
	
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	@Override
	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
		AdminVO admin = adminDAO.selectAdminById(id);
		if (admin == null) throw new NotFoundIdException();
		if (!pwd.equals(admin.getAdminPwd())) throw new InvalidPasswordException();
	}

	@Override
	public AdminVO getAdmin(String id) throws SQLException {
		AdminVO admin = adminDAO.selectAdminById(id);
		return admin;
	}

	@Override
	public void join(AdminVO admin) throws SQLException {
		adminDAO.insertAdmin(admin);
	}

	@Override
	public String findId(AdminVO admin) throws SQLException {
		String adminId = adminDAO.selectId(admin);
		return adminId;
	}

	@Override
	public String findPwd(AdminVO admin) throws SQLException {
		String adminPwd = adminDAO.selectPwd(admin);
		return adminPwd;
	}

	@Override
	public AdminVO findPwdQuest(AdminVO admin) throws SQLException {
		AdminVO adminQuest = adminDAO.selectQuest(admin);
		return adminQuest;
	}

	@Override
	public void exit(String adminId) throws SQLException {
		adminDAO.updateState(adminId);
	}

	@Override
	public String getPwd(String adminId) throws SQLException {
		String adminPwd = adminDAO.selectPwdById(adminId);
		return adminPwd;
	}

}
