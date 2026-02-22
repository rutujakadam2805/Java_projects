package com.service;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;

import com.DAO.PasswordResetTokenDao;
import com.DAO.UserDAO;
import com.Entity.PasswordResetToken;
import com.Entity.User;

public class PasswordResetService {
	/*
	 * @Autowired private UserDAO userDao;
	 * 
	 * @Autowired private PasswordResetTokenDao tokenDao;
	 * 
	 * public String generateResetToken(String email) { User user =
	 * userDao.findByEmail(email); if (user == null) { throw new
	 * RuntimeException("User not found!"); }
	 * 
	 * String token = UUID.randomUUID().toString(); PasswordResetToken resetToken =
	 * new PasswordResetToken(); resetToken.setToken(token);
	 * resetToken.setUser(user); resetToken.setExpiryDate(new
	 * Date(System.currentTimeMillis() + 3600000)); // 1 hour expiry
	 * 
	 * tokenDao.saveToken(resetToken); return token; }
	 * 
	 * public User validateToken(String token) { PasswordResetToken resetToken =
	 * tokenDao.findByToken(token); if (resetToken == null ||
	 * resetToken.getExpiryDate().before(new Date())) { return null; } return
	 * resetToken.getUser(); }
	 * 
	 * public void resetPassword(User user, String newPassword) {
	 * //user.setPassword(new BCryptPasswordEncoder().encode(newPassword));
	 * userDao.updateUser(user); }
	 */
    }

