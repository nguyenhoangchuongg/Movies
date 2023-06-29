package com.poly.utils;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.bean.Report;

public class ReportDAO {
	EntityManager em = JPAUtils.getEntityManager();

	public List<Report> report() {
		String jpql = "SELECT new Report(o.videos.title,count(o),max(o.likeDate),min(o.likeDate)) FROM Favorite o GROUP BY o.videos.title";
		TypedQuery<Report> query = em.createQuery(jpql, Report.class);
		return query.getResultList();
	}
}
