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
		System.out.println("postservice imple insertpost");
		postDAO.insertPost(vo);
	}
	
	@Override
	public List<PostVO> getPostList() {
		System.out.println("postservice imple getPostList");
		return postDAO.getPostList();
	}

	@Override
	public PostVO getPost(int seq) {
		System.out.println("postservice imple getPost");
		return postDAO.getPost(seq);
	}

	@Override
	public int updatePost(PostVO vo) {
		System.out.println("postservice imple updatepost");
		return postDAO.updatePost(vo);
	}

	@Override
	public int deletePost(int seq) {
		System.out.println("postservice imple deletepost");
		return postDAO.deletePost(seq);
	}
}
