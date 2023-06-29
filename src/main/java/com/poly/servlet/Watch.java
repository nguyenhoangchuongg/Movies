package com.poly.servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.bean.Share;
import com.poly.bean.Video;
import com.poly.utils.ShareDAO;
import com.poly.utils.VideoDAO;
@MultipartConfig
@WebServlet({ "/watch/index/*", "/watch/create", "/watch/delete", "/watch/update", "/watch/edit","/watch/sendd"})
public class Watch extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		Video user = new Video();
		ShareDAO sharedao= new ShareDAO();
		Share share = new Share();

		String uri = req.getRequestURI();

		if (uri.contains("index")) {

			String id = uri.substring(uri.lastIndexOf("/") + 1);
			System.out.print("edit:" + id);
			user = dao.findById(id);

		} else if (uri.contains("create")) {
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");
				BeanUtils.populate(user, req.getParameterMap());
				dao.create(user);
				req.setAttribute("message", "Them moi thanh cong");
			} catch (Exception e) {
				req.setAttribute("message", "Them moi that bai");
			}
		} else if (uri.contains("update")) {
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Update thanh cong");
			} catch (Exception e) {
				req.setAttribute("message", "Update that bai");
			}
		} else if (uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xoa thanh cong");
			} catch (Exception e) {
				req.setAttribute("message", "Xoa that bai");
			}
			
		} else if (uri.contains("send")) {
			try {
			
			req.setCharacterEncoding("utf-8");
			resp.setCharacterEncoding("utf-8");
			//Thong so ket noi SMTP Server
            Properties p = new Properties();
            p.put("mail.smtp.auth", "true");
            p.put("mail.smtp.starttls.enable", "true");
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.put("mail.smtp.port", "587");
            p.put("mail.smtp.ssl.protocols", "TLSv1.2");
                        
            //Ket noi SMTP Server
            Session s = Session.getInstance(p, new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                        	String username = "hoangchuong.nguyen2811@gmail.com";
                            String password = "hwfuiqlrbwzkvhaq"; //
                            return new PasswordAuthentication(username,password );
                        }});          
            
            String from = req.getParameter("email");	
    		String to = req.getParameter("emailr");	
//    		String cc = req.getParameter("cc");	
//    		String bcc = req.getParameter("bcc");
    		String subject = req.getParameter("subject");
    		String body = req.getParameter("body");
    		
    		//Tao message
    		// đọc file
    		String realPath = req.getServletContext().getRealPath("/files");// lấy đường dẫn hình
    		if(!Files.exists(Path.of(realPath))) { // kiểm tra đường dẫn có sẵn không
    			Files.createDirectory(Path.of(realPath));
    		}
//    		Part partdoc = req.getPart("doc");
//    		String[] filenamedoc = {Path.of(partdoc.getSubmittedFileName()).getFileName().toString()};
//    		
//    		System.out.println(filenamedoc);
    	//
    		 Multipart multipart = new MimeMultipart();
//             MimeBodyPart attachPart = new MimeBodyPart();
             MimeBodyPart messageBodyPart = new MimeBodyPart();
             try {
    			messageBodyPart.setContent(body,"text/html");
    			  multipart.addBodyPart(messageBodyPart);
    		} catch (MessagingException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    		}
           
//    		  if (filenamedoc != null && filenamedoc.length > 0) {
//    	            for (String filePath : filenamedoc) {
//    	   
//    	                System.out.println("file path : "+realPath + "\\" + filePath);
//    	                try {
//    	                	partdoc.write(realPath + "/" + filePath);
//    	                	filePath.trim();
//    	                    attachPart.attachFile(realPath + "/" + filePath);
//    	                } catch (IOException | MessagingException ex) {
//    	                    ex.printStackTrace();
//    	                }
//    	 
//    	                try {
//    						multipart.addBodyPart(attachPart);
//    					} catch (MessagingException e) {
//    						// TODO Auto-generated catch block
//    						e.printStackTrace();
//    					}
//    	            }
//    	        }
    		 
    		//
    		  
            MimeMessage msg = new MimeMessage(s);

            msg.setFrom(new InternetAddress(from));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
//            msg.setRecipients(Message.RecipientType.CC, InternetAddress.parse(cc));
//            msg.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(bcc));
            msg.setSubject(subject,"utf-8");
            msg.setContent(multipart);
           
            
            msg.setReplyTo(msg.getFrom());
            
            Transport.send(msg);
            
            req.setAttribute("message", "Gửi email thành công !");
        } catch (Exception ex) {           
            req.setAttribute("message", "Gửi email thất bại !");
            ex.printStackTrace();
        }   
			try {
				req.setCharacterEncoding("utf-8");
				resp.setCharacterEncoding("utf-8");
				BeanUtils.populate(share, req.getParameterMap());
				sharedao.create(share);
				req.setAttribute("message", "Email sent successfully");
			} catch (Exception e) {
				req.setAttribute("message", "Email sent unsuccessfully");
			}
//		

		
		}
		req.setAttribute("form", user);
		req.setAttribute("items", dao.findAll());
		req.getRequestDispatcher("/view/chitiet.jsp").forward(req, resp);
	}
}

