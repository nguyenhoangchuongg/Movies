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

@WebServlet({ "/home/index/*","/home/create" ,"/home/delete", "/home/update","/home/edit" })
public class Home extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		Video user = new Video();
		
		String uri = req.getRequestURI();
		
		if(uri.contains("index")) {
			
			String id = uri.substring(uri.lastIndexOf("/")+1);
			System.out.print("edit:"+ id);
			user = dao.findById(id);
			
		}else if(uri.contains("create")) {
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");	
				BeanUtils.populate(user, req.getParameterMap());				
				dao.create(user);
				req.setAttribute("message", "Them moi thanh cong");
			}catch (Exception e) {
				req.setAttribute("message", "Them moi that bai");
			}
		}else if(uri.contains("update")) {
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");	
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Update thanh cong");
			}catch (Exception e) {
				req.setAttribute("message", "Update that bai");
			}
		}else if(uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xoa thanh cong");
			}catch (Exception e) {
				req.setAttribute("message", "Xoa that bai");
			}
		}
		
		req.setAttribute("form", user);
		req.setAttribute("items", dao.findAll());
		req.getRequestDispatcher("/view/layoutuser.jsp").forward(req, resp);
	}
}
