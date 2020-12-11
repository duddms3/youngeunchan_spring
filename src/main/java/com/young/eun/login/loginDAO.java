package com.young.eun.login;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class loginDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	public loginVO getLogin(loginVO vo) {
		return sqlSession.selectOne("login.getLogin",vo);
	}
}
