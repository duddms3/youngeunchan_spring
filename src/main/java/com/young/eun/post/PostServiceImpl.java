package com.young.eun.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService {
	@Autowired
	PostDAO postDAO;

	@Override
	public void insertPost(PostVO vo) {
		System.out.println("insertpost imple");
		postDAO.insertPost(vo);
	}
	
	@Override
	public List<PostVO> getPostList() {
		System.out.println("getPostList imple");
		return postDAO.getPostList();
	}
}
