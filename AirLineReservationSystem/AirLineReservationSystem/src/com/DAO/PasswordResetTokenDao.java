package com.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Entity.PasswordResetToken;

@Repository
public class PasswordResetTokenDao {
	/*
	 * @Autowired private SessionFactory sessionFactory;
	 * 
	 * public void saveToken(PasswordResetToken token) {
	 * sessionFactory.getCurrentSession().save(token); }
	 * 
	 * public PasswordResetToken findByToken(String token) { return
	 * sessionFactory.getCurrentSession()
	 * .createQuery("FROM PasswordResetToken WHERE token = :token",
	 * PasswordResetToken.class) .setParameter("token", token) .uniqueResult(); }
	 */
}
