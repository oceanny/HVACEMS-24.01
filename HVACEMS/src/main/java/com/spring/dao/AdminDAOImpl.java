package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.AdminVO;

public class AdminDAOImpl implements AdminDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public AdminVO selectAdminById(String adminId) throws SQLException {
		AdminVO admin = sqlSession.selectOne("Admin-Mapper.selectAdminById", adminId);
		return admin;
	}

	@Override
	public void insertAdmin(AdminVO admin) throws SQLException {
		sqlSession.insert("Admin-Mapper.insertAdmin", admin);
	}

	@Override
	public String selectId(AdminVO admin) throws SQLException {
		String adminId = sqlSession.selectOne("Admin-Mapper.selectId", admin);
		return adminId;
	}

	@Override
	public String selectPwd(AdminVO admin) throws SQLException {
		String adminPwd = sqlSession.selectOne("Admin-Mapper.selectPwd", admin);
		return adminPwd;
	}

	@Override
	public AdminVO selectQuest(AdminVO admin) throws SQLException {
		AdminVO adminQuest = sqlSession.selectOne("Admin-Mapper.selectQuest", admin);
		return adminQuest;
	}

	@Override
	public void updateState(String adminId) throws SQLException {
		sqlSession.update("Admin-Mapper.updateState", adminId);
	}

	@Override
	public String selectPwdById(String adminId) throws SQLException {
		String adminPwd = sqlSession.selectOne("Admin-Mapper.selectPwdById", adminId);
		return adminPwd;
	}

}
