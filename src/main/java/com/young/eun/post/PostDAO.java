package com.young.eun.post;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertPost(PostVO vo) {
		System.out.println("postDAO insertpost");
		sqlSession.insert("PostDAO.insertPost", vo);
	}
	
	public List<PostVO> getPostList(){
		System.out.println("postDAO getPostList");
		return sqlSession.selectList("PostDAO.getPostList");
	}
}
