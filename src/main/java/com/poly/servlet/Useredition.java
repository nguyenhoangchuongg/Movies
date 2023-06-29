package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.bean.User;
import com.poly.utils.UserDAO;

@WebServlet({ "/user/index","/user/create" ,"/user/delete", "/user/update","/user/edit/*" })
public class Useredition extends HttpServlet{
	@Override
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		User user = new User();
		
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
				req.setAttribute("message", "Update successfully!!");
			}catch (Exception e) {
				req.setAttribute("message", "Update unsuccessfully!");
				System.out.println(e);
			}
		}else if(uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Remove successfully!");
			}catch (Exception e) {
				req.setAttribute("message", "Remove unsuccessfully!");
				System.out.println(e);
			}
		}
		String indexStr = req.getParameter("index");
//		int index = Integer.parseInt(indexStr);
		int index = 1;
		req.setAttribute("isActive", index);
		req.setAttribute("form", user);
		req.setAttribute("items", dao.findAll());
		try {
			req.setAttribute("items", dao.findAl(0, 5));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		req.getRequestDispatcher("/view/useredition.jsp").forward(req, resp);
	}
	protected void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		String indexStr = request.getParameter("index");
		if(indexStr==null) {
			indexStr ="1";
		}
		
//		int index = Integer.parseInt(indexStr);
		int index = 5;
		long count = dao.getTotalOrder();
		long endPage = count/5;
		if(count%5!=0) {
			endPage++;
		}
		request.setAttribute("isActive", index);
		request.setAttribute("endPage", endPage);
		request.setAttribute("total", count);
		
		try {
			request.setAttribute("items", dao.findAl(index,5));
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("viewAdmin","/view//orders.jsp");
		request.getRequestDispatcher("/views/useredition.jsp").forward(request, response);
	}
}
