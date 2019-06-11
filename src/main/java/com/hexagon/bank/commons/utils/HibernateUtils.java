package com.hexagon.bank.commons.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

	public static SessionFactory sessionFactory() throws Exception {
		SessionFactory factory = null;
		if (factory == null) {
			factory = new Configuration().configure().buildSessionFactory();
		}
		return factory;
	}

}
