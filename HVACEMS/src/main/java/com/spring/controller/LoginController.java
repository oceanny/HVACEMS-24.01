package com.spring.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.AdminVO;
import com.spring.service.AdminService;

@Controller
@RequestMapping("/common")
public class LoginController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/joinForm")
	public String joinForm() throws Exception{
		String url = "/security/joinForm";
		
		return url;
	}
	
	@PostMapping("/join")
	public String join(AdminVO admin) throws Exception {
		String url = "/security/join_success";
		
		adminService.join(admin);
		
		return url;
	}
	
	@GetMapping("/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String adminId) throws Exception {
		ResponseEntity<String> entity = null;
		
		AdminVO regAdmin = adminService.getAdmin(adminId);
		
		if (regAdmin != null) {
			entity = new ResponseEntity<String>("exist", HttpStatus.OK);
		}
		else {
			entity = new ResponseEntity<String>("", HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping("/findForm")
	public String findForm()throws SQLException{
		String url="/security/findForm";
		
		return url;
	}
	
	@PostMapping("/findId")
	public ModelAndView findId(AdminVO admin, ModelAndView mnv) throws Exception {
		String url = "/security/findId";
		
		mnv.addObject("adminId", adminService.findId(admin));
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping("/findPwdQuest")
	public ModelAndView findPwdQuest(AdminVO admin, ModelAndView mnv) throws Exception {
		String url = "/security/findPwdQuest";
		
		mnv.addObject("admin", adminService.findPwdQuest(admin));
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping("/findPwd")
	public ModelAndView findPwd(AdminVO admin, ModelAndView mnv) throws Exception {
		String url = "/security/findPwd";
		
		mnv.addObject("adminPwd", adminService.findPwd(admin));
		mnv.setViewName(url);
		
		return mnv;
	}
}
