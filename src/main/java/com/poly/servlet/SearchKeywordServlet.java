package com.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.bean.User;
import com.poly.bean.Video;
import com.poly.bean.Favorite;
@WebServlet("/search/keyword")
public class SearchKeywordServlet extends HttpServlet{
	@Override
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {						
		String keyword = req.getParameter("keyword");
//		String jpql = "SELECT DISTINCT o.video FROM Favorite o "
//				+ " WHERE o.video.title LIKE :keyword";
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC		
			TypedQuery<Video>query=em.createNamedQuery("Video.findByKeyword",Video.class);
			query.setParameter("keyword", keyword);
			List<Video> list = query.getResultList();
			req.setAttribute("items", list);
			// bai 2
//			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
//			query.setParameter("keyword", keyword); 
//			List<Video> list = query.getResultList();
//			req.setAttribute("videos", list);
		

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
			
		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác
			System.out.println("Error: "+e);
		}
		em.close();	
		emf.close();		
		req.getRequestDispatcher("/view/layoutuser.jsp").forward(req, resp);
}
}
