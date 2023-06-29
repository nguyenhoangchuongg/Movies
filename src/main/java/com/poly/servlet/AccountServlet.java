package com.poly.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.bean.User;
import com.poly.cookies.Cookies;
import com.poly.utils.UserDAO;



@WebServlet({"/asm","/asm/sign-in", "/asm/sign-up", "/asm/sign-out", "/asm/forgot-password",
		"/asm/change-password", "/asm/edit-profile","/asm/favorite" })
public class AccountServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("sign-in")) {
			this.doSignIn(req, resp);
		} else if (uri.contains("sign-up")) {
			this.doSignUp(req, resp);
		} else if (uri.contains("sign-out")) {
			   this.doSignOut(req, resp);
		} else if (uri.contains("forgot-password")) {
			this.doForot(req, resp);
		} else if (uri.contains("change-password")) {
			this.doChangePassword(req, resp);
		} else if (uri.contains("edit-profile")) {
			this.doEditProfile(req, resp);
		}
		else if (uri.contains("favorite")) {
			this.doFavorite(req, resp);
		}
	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if(method.equalsIgnoreCase("GET")) {
			String email = Cookies.get("email", req);
			String password = Cookies.get("password", req);
			// chuyển sang login.jsp để hiển thị lên form
			req.setAttribute("email", email);
			req.setAttribute("password", password);
		}
		if (method.equalsIgnoreCase("POST")) {
// TODO: ĐĂNG NHẬP
			String email = req.getParameter("email");
			String pw = req.getParameter("password");
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findUserByEmail(email);
				if (!user.getPassword().equals(pw)) {
					req.setAttribute("message", "Invalid password!");
				} else if(user.getAdmin()) {
					req.setAttribute("message", "Login successful!!!!");
					req.getSession().setAttribute("user", user);
					req.getRequestDispatcher("/view/layoutadmin.jsp").forward(req, resp);
				}else {
					req.setAttribute("message", "Login successful!");
					req.getSession().setAttribute("user", user);
				}
			} catch (Exception e) {
				req.setAttribute("message", "Invalid username!");
			}
		
//		doEditProfile(req, resp);
		String password = req.getParameter("password");
		String remember = req.getParameter("remember");

			// ghi nhớ hoặc xóa tài khoản đã ghi nhớ bằng cookie
			int hours = (remember == null) ? 0 : 60*60*24; // 0 = xóa
			Cookies.add("email", email, hours, resp);
			Cookies.add("password", password, hours, resp);
		}	
		req.getRequestDispatcher("/view/login.jsp").forward(req, resp);
		
	}
	private void doForot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/forgot.jsp").forward(request, response);
//				try {
//			request.setCharacterEncoding("utf-8");
//			response.setCharacterEncoding("utf-8");
//	
//			UserDAO dao = new UserDAO();
//			String emailFrom = "taivtps21094@fpt.edu.vn";
//			String passForm = "yvhzluhceiisqazh";
//			String emailTo = request.getParameter("email");
////			User user = dao.findByEmail(emailTo);
//			String username = request.getParameter("name");
//			User user = dao.findByUserEmail(username, emailTo);
//			if (user == null) {
//				request.setAttribute("error", "Username or email are incorrect");
//				
//			} else {
//				Email email = new Email();
//				email.setFrom(emailFrom);
//				email.setFromPassword(passForm);
//				email.setTo(emailTo);
//				email.setSubject("Forgot Password | PS21094");
//				String msg = "Dear, " + username
//						+ "<br/>You are used the forgot password function.<br/>Your password is <b>"
//						+ user.getPassword() + "</b><br/>Regards<br/>Administrator";
//				email.setContent(msg);
//				EmailUtils.send(email);
//				request.setAttribute("message", "Email has been sent! Please check and get your password.");
//			
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			request.setAttribute("", "Error: " + e.getMessage());
//		}
	}
	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
// TODO: ĐĂNG KÝ
			try {
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.create(entity);
				req.setAttribute("message", "Sign up successful!");
			} catch (Exception e) {
				
				req.setAttribute("message", e);
				System.out.println(e);
			}
		}
		req.getRequestDispatcher("/view/signup.jsp").forward(req, resp);
	}

	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		if (user == null) {
			req.setAttribute("message", "You have not logged in yet!");
			doSignIn(req, resp);
			return;
		}
		
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
// TODO: CẬP NHẬT
			try {
				BeanUtils.populate(user, req.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.update(user);
				req.setAttribute("message", "Your account information has been updated successfully!");
			} catch (Exception e) {
				req.setAttribute("message", "Update account failed!");
			}
		}
		req.getRequestDispatcher("/view/edit.jsp").forward(req, resp);
	}
	private void doFavorite(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		if (user == null) {
			req.setAttribute("message", "You have not logged in yet!");
			doSignIn(req, resp);
			return;
		}
		
		String method = req.getMethod();
		req.getRequestDispatcher("/view/favorite.jsp").forward(req, resp);
	}
	private void doSignOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // Xóa thông tin người dùng khỏi session
		User user = (User) req.getSession().getAttribute("user");
		if (user != null) {
			 req.getSession().removeAttribute("user");
				req.setAttribute("message", "Logged out successfully!");
			    // Điều hướng về trang đăng nhập
				req.getRequestDispatcher("/home/index").forward(req, resp);
		}
		req.getRequestDispatcher("/home/index").forward(req, resp);
	}
	
	private void doChangePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Xác thực người dùng
		User user = (User) req.getSession().getAttribute("user");
		if (user == null) {
			req.setAttribute("message", "You have not logged in yet!");
			doSignIn(req, resp);
			return;
		}
		req.setAttribute("id", user.getId());
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// Lấy thông tin mật khẩu mới
			String oldPassword = req.getParameter("oldPassword");
			String newPassword = req.getParameter("newPassword");
			String confirmNewPassword = req.getParameter("confirmNewPassword");

			// Kiểm tra thông tin mật khẩu
			if (!user.getPassword().equals(oldPassword)) {
				req.setAttribute("message", "Old password is incorrect!");
				req.getRequestDispatcher("/view/change.jsp").forward(req, resp);
				return;
			}

			if (!newPassword.equals(confirmNewPassword)) {
				req.setAttribute("message", "Password confirmation does not match!");
				req.getRequestDispatcher("/view/change.jsp").forward(req, resp);
				return;
			}

			// Cập nhật mật khẩu mới
			try {
				user.setPassword(newPassword);
				UserDAO dao = new UserDAO();
				dao.update(user);
				req.setAttribute("message", "Password changed successfully!");
				req.getSession().setAttribute("user", user);
				req.getRequestDispatcher("/view/change.jsp").forward(req, resp);
				return;
			} catch (Exception e) {
				req.setAttribute("message", "Error changing password!");
			}
		}

		req.getRequestDispatcher("/view/change.jsp").forward(req, resp);
	}


}