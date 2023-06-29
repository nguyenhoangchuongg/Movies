package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;


import com.poly.bean.Video;

import com.poly.utils.VideoDAO;

@WebServlet({ "/video/index","/video/create" ,"/video/delete", "/video/update","/video/edit/*" })
public class Videoedition extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		Video user = new Video();
		
		String uri = req.getRequestURI();
		
		if(uri.contains("edit")) {
			
			String id = uri.substring(uri.lastIndexOf("/")+1);
			System.out.print("edit:"+ id);
			user = dao.findById(id);
			
		}else if(uri.contains("create")) {
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");	
				BeanUtils.populate(user, req.getParameterMap());				
				dao.create(user);
				req.setAttribute("message", "Add new successfully!");
			}catch (Exception e) {
				req.setAttribute("message", "Add new unsuccessfully!");
			}
		}else if(uri.contains("update")) {
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");	
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Update successfully!");
			}catch (Exception e) {
				req.setAttribute("message", "Update unsuccessfully!");
			}
		}else if(uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Remove successfully!");
			}catch (Exception e) {
				req.setAttribute("message", "Remove unsuccessfully!");
			}
		}

		req.setAttribute("form", user);
		req.setAttribute("items", dao.findAll());
		req.getRequestDispatcher("/view/videoedition.jsp").forward(req, resp);
	}

}
