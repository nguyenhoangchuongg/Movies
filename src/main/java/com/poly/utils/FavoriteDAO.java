package com.poly.utils;

import javax.persistence.EntityManager;

public class FavoriteDAO {
	 EntityManager em = JPAUtils.getEntityManager();

		@Override
		protected void finalize() throws Throwable {
			em.close();// dong EntiryManager khi DAO bi giai phong
		}

}
