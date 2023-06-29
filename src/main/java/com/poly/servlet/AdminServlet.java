//package com.poly.servlet;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.apache.commons.beanutils.BeanUtils;
//
//import com.poly.bean.User;
//import com.poly.utils.UserDAO;
//
//@WebServlet({ "/asm/admin", "asm/admin/video", "/asm/admin/video/create", "/asm/admin/video/delete",
//		"/asm/admin/video/update", "/asm/admin/video/reset", "/asm/admin/video/edit", "asm/admin/user", "/asm/admin/user/delete", "/asm/admin/user/update",
//		"/asm/admin/user/edit", "asm/admin/report", "asm/admin/report/fa", "asm/admin/report/fau",
//		"asm/admin/report/share" })
//public class AdminServlet extends HttpServlet {
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String uri = req.getRequestURI();
//		if (uri.contains("/asm/admin/user")) {
//			this.doUser(req, resp);
////		} else if (uri.contains("sign-up")) {
////			this.doSignUp(req, resp);
////		} else if (uri.contains("sign-out")) {
////			   this.doSignOut(req, resp);
////		} else if (uri.contains("forgot-password")) {
////		} else if (uri.contains("change-password")) {
////			this.doChangePassword(req, resp);
////		} else if (uri.contains("edit-profile")) {
////			this.doEditProfile(req, resp);
////		}
////		else if (uri.contains("favorite")) {
////			this.doFavorite(req, resp);
//		}
//	}
//	private void doUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String method = req.getMethod();
//		if (method.equalsIgnoreCase("POST")) {
//// TODO: ĐĂNG KÝ
//			UserDAO dao = new UserDAO();
//			User user = new User();
//			
//			String uri = req.getRequestURI();
//			
//			if(uri.contains("user/edit")) {
//				
//				String id = uri.substring(uri.lastIndexOf("/")+1);
//				System.out.print("edit:"+ id);
//				user = dao.findById(id);
//				
//			}else if(uri.contains("user/create")) {
//				try {
//					req.setCharacterEncoding("utf-8");
//					resp.setCharacterEncoding("utf-8");	
//					BeanUtils.populate(user, req.getParameterMap());				
//					dao.create(user);
//					req.setAttribute("message", "Them moi thanh cong");
//				}catch (Exception e) {
//					req.setAttribute("message", "Them moi that bai");
//				}
//			}else if(uri.contains("user/update")) {
//				try {
//					req.setCharacterEncoding("utf-8");
//					resp.setCharacterEncoding("utf-8");	
//					BeanUtils.populate(user, req.getParameterMap());
//					dao.update(user);
//					req.setAttribute("message", "Update thanh cong");
//				}catch (Exception e) {
//					req.setAttribute("message", "Update that bai");
//				}
//			}else if(uri.contains("user/delete")) {
//				try {
//					String id = req.getParameter("id");
//					dao.remove(id);
//					req.setAttribute("message", "Xoa thanh cong");
//				}catch (Exception e) {
//					req.setAttribute("message", "Xoa that bai");
//				}
//			}
//			
//			req.setAttribute("form", user);
//			req.setAttribute("items", dao.findAll());		
//			req.getRequestDispatcher("/view/useredition.jsp").forward(req, resp);
//		}
//	}
//}
