package com.poly.utils;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.bean.Share;
import com.poly.bean.User;


public class ShareDAO {
	 EntityManager em = JPAUtils.getEntityManager();

		@Override
		protected void finalize() throws Throwable {
			em.close();// dong EntiryManager khi DAO bi giai phong
		}
		public Share create(Share entity) {
			try {
				em.getTransaction().begin();
				em.persist(entity);
				em.getTransaction().commit();
				return entity;
			} catch (Exception e) {
				em.getTransaction().rollback();
				throw new RuntimeException(e);
			}
		}

		public List<Share> findAll() {
			String jpql = "SELECT o FROM Share o";
			TypedQuery<Share> query = em.createQuery(jpql, Share.class);
			List<Share> list = query.getResultList();
			return list;
		}

}
