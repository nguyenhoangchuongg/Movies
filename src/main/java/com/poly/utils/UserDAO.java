package com.poly.utils;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.poly.bean.User;

public class UserDAO {

	EntityManager em = JPAUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
	}

	public User create(User entity) {
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

	public User update(User entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			System.out.println(entity.getAdmin());
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public User remove(String id) {
		try {
			User entity = this.findById(id);
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public User findById(String id) {
		User entity = em.find(User.class, id);
		return entity;
	}
	public User findByEmail(String email) {
		User entity = em.find(User.class, email);
		return entity;
	}
	public List<User> findAll() {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		List<User> list = query.getResultList();
		return list;
	}

	public User findUserByEmail(String email) {
		String jpql = "SELECT o FROM User o WHERE o.email=:email";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("email", email);
		List<User> resultList = query.getResultList();
		return resultList.isEmpty() ? null : resultList.get(0);
	}
	

	public List<User> filter(int amount, int number) {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setFirstResult(amount * number);
		query.setMaxResults(number);
		List<User> list = query.getResultList();
		return list;
	}

	public List<User> findUserLikeVideo(String id) {
		String jpql = "SELECT o.user FROM Favorite o WHERE o.videos.id=:vid";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("vid", id);
		List<User> list = query.getResultList();
		return list;
	}
	public long getTotalOrder() {
		String jpql = "SELECT count(o.id) FROM user o";
		TypedQuery<Long> query = this.em.createQuery(jpql, Long.class);
		return query.getSingleResult();
	}
	public List<User> findAl(int index, int n) throws Exception {
		try {
			this.em.getTransaction().begin();
			String jpql = "SELECT o FROM user o";
			TypedQuery<User> query = this.em.createQuery(jpql, User.class).setMaxResults(n).setFirstResult((index-1)*n);
			this.em.getTransaction().commit();
			return query.getResultList();	
		} catch (Exception e) {
			e.printStackTrace();
			this.em.getTransaction().rollback();
			throw e;
		}	
	}
	public User findByUserEmail(String username, String email) {
		String jpql = "select u from User u where u.id = :username and u.email = :email";
		try {
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("username", username);
			query.setParameter("email", email);

			return query.getSingleResult();
		} finally {
			em.close();
		}
	}
}
