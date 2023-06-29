package com.poly.utils;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.bean.Video;

public class VideoDAO {
 EntityManager em = JPAUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
	}

	public Video create(Video entity) {
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

	public Video update(Video entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			System.out.println(entity.getId());
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Video remove(String id) {
		try {
			Video entity = this.findById(id);
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Video findById(String id) {
		Video entity = em.find(Video.class, id);
		return entity;
	}

	public List<Video> findAll() {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findVideoByKeyword(String keyword) {
		String jpql = "SELECT DISTINCT o.Video FROM Favorite o WHERE o.Video.title LIKE:keyword";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("keyword", keyword);
		List<Video> resultList = query.getResultList();
		return resultList;
	}
	public int count() {
		String jpql = "SELECT count(*) from Video";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return 0;
	}
	public List<Video> filter(int amount, int number) {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setFirstResult(amount * number);
		query.setMaxResults(number);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> getFavoriteVideo(boolean favorite) {
		String jpql = favorite ? " SELECT o FROM Video o WHERE o.favorites IS EMPTY"
				: "SELECT o FROM Video o WHERE o.favorites IS NOT EMPTY";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		return query.getResultList();
	}
	// Hàm lấy 5 video tiếp theo


}
