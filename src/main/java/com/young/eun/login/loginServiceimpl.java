package com.young.eun.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class loginServiceimpl {
	@Autowired
	loginDAO loginDAO;
	public loginVO getLogin(loginVO vo) {
		System.out.println("imple getlogin");
		return loginDAO.getLogin(vo);
	}
}
