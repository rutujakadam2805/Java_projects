package com.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Entity.User;

@Repository
public class UserDAO {
	/*
	 * @Autowired private SessionFactory sessionFactory;
	 * 
	 * public User findByEmail(String email) { return
	 * sessionFactory.getCurrentSession()
	 * .createQuery("FROM User WHERE email = :email", User.class)
	 * .setParameter("email", email) .uniqueResult(); }
	 * 
	 * public void updateUser(User user) {
	 * sessionFactory.getCurrentSession().update(user); }
	 */
}
