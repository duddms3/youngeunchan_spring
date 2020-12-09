package com.young.eun.post;

import java.util.List;

public interface PostService {
	public void insertPost(PostVO vo);
	public List<PostVO> getPostList();
	public PostVO getPost(int seq);
	public int updatePost(PostVO vo);
	public int deletePost(int seq);
}
