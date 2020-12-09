package com.young.eun.post;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class FileUpload {
	public  PostVO uploadPhoto(HttpServletRequest request) {
		String filename = "";  // 업로드되는 파일이름 저장용 
		int sizeLimit = 15 * 1024 * 1024;  // 파일크기 (15MB)
		
		// 실제로 서버에 저장되는 path를 upload로 정한다.
		String realPath = request.getSession().getServletContext().getRealPath("upload");
		//System.out.println(realPath);
		
		// 	혹시 저장될 경로가 없으면 생성한다.
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();

		PostVO vo = null;
		MultipartRequest multipartRequest = null;
		try {
			// 파일 업로드 처리하는 과정 
			// 파라미터 : request, 파일저장경로, 최대용량, 인코딩, 중복파일명에 대한 정책
			// DefaultFileRenamePolicy() - 중복된 이름이 존재할 경우의 처리방법 - 뒤에 숫자붙임
			multipartRequest = new MultipartRequest(request, realPath, 
					sizeLimit, "utf-8",new DefaultFileRenamePolicy());

			// "photo"라는 이름으로 전송되어 업로드된 파일 이름을 가져옴 
			filename = multipartRequest.getFilesystemName("photo");
			vo= new PostVO();	
			vo.setGoalM(Integer.parseInt(multipartRequest.getParameter("goalM")));
			vo.setPriceM(Integer.parseInt(multipartRequest.getParameter("priceM")));
			vo.setTitle(multipartRequest.getParameter("title"));
			vo.setContent(multipartRequest.getParameter("content"));
			
			String stringDate=multipartRequest.getParameter("stringDate");
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
			Date date2 = null;
			try {
				date2 = dateFormat.parse(stringDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}

			System.out.println("this is input date2: " + date2);
			vo.setMagam(date2);
			System.out.println("this is input filename: "+filename);
			vo.setPhoto(filename);
			System.out.println("this is from postvo" + vo.getPhoto());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public static void deleteFile(HttpServletRequest request, String filename) {
		String filePath = request.getSession().getServletContext().getRealPath("upload");
		
		File f = new File(filePath + "/" + filename); 
		if( f.exists()) f.delete(); 
	}
	
	public static String uploadFile(HttpServletRequest request) {
		String filename = "";
		int sizeLimit = 15 * 1024 * 1024;
		
		String realPath = request.getSession().getServletContext().getRealPath("upload");
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();
				
		MultipartRequest multpartRequest = null;
		try {
			multpartRequest = new MultipartRequest(request, realPath, 
					sizeLimit, "utf-8",new DefaultFileRenamePolicy());
		
			filename = multpartRequest.getFilesystemName("photo");
			if (filename == null) filename="";
		} catch (IOException e) {
			e.printStackTrace();
		}
		return filename;
	}		
}//end of class
