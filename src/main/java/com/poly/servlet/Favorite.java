package com.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.utils.ReportDAO;
import com.poly.utils.VideoDAO;
import com.poly.bean.Report;
import com.poly.bean.Video;


@WebServlet({"/favorite"})
public class Favorite extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String jpql = "SELECT new Report(o.video.title,count(o),max(o.likeDate),min(o.likeDate)) FROM Favorite o GROUP BY o.video.title";
		
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC		
			TypedQuery<Report> query = em.createQuery(jpql, Report.class);
			List<Report> list = query.getResultList();
			req.setAttribute("report", list);
		

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
			
		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác
			System.out.println("Error: "+e);
		}
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC
			String titlee = String.valueOf(req.getParameter("video"));
			System.out.println(titlee);
//			StoredProcedureQuery query = em.createStoredProcedureQuery("spFavoriteByYear", Report.class);
//			query.registerStoredProcedureParameter("year", Integer.class, ParameterMode.IN);

			StoredProcedureQuery query = em.createNamedStoredProcedureQuery("Report.FavoriteByTilte");

			query.setParameter("Title", titlee);
			List<Object[]> list = query.getResultList();
//			List<Video> list = query.getResultList();
//
			req.setAttribute("year", list);

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác

		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác
			System.out.println("Error: " + e);
		}
		VideoDAO dao = new VideoDAO();
		req.setAttribute("items", dao.findAll());
		
		em.close();	
		emf.close();		
		req.getRequestDispatcher("/view/report.jsp").forward(req, resp);
	}
}
