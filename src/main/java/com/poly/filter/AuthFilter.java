package com.poly.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.bean.User;

//@WebFilter({"/*"})
//public class AuthFilter implements HttpFilter {
//	@Override
//	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
//			throws IOException, ServletException {
//		// TODO Auto-generated method stub
//		String uri = req.getRequestURI();
//		User user = (User)req.getSession().getAttribute("email");
//		String error="";
//		if(user==null) {//chua dang nhap
//			error = resp.encodeURL("Vui long dang nhap");
//		}else if(!user.getAdmin() && uri.contains("/admin/")){//kg phai admin
//			error = resp.encodeURL("Vui long dang nhap voi vai tro admin");
//		}
//		
//		if(!error.isEmpty()) {// truy cap kg hop le
//			req.getSession().setAttribute("securi", uri);
//			resp.sendRedirect("/ASM/login.jsp?error="+resp.encodeURL(error));
//		}else {//truy cap hop le
//			chain.doFilter(req, resp);
//		}
//				
//	}
//}
