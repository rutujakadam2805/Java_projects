package com.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Entity.User;

@RequestMapping("/auth")
public class forgetPasswordController {
	/*
	 * @Autowired private PasswordResetService resetService;
	 * 
	 * @Autowired private EmailService emailService;
	 * 
	 * @PostMapping("/forgot-password") public String forgotPassword(@RequestParam
	 * String email, Model model) { try { String token =
	 * resetService.generateResetToken(email); emailService.sendResetEmail(email,
	 * token); model.addAttribute("message", "Reset password email sent!"); } catch
	 * (Exception e) { model.addAttribute("error", "Invalid email address!"); }
	 * return "forgot-password"; }
	 * 
	 * @GetMapping("/reset-password") public String showResetForm(@RequestParam
	 * String token, Model model) { User user = resetService.validateToken(token);
	 * if (user == null) { model.addAttribute("error", "Invalid or expired token!");
	 * return "error"; } model.addAttribute("token", token); return
	 * "reset-password-form"; }
	 * 
	 * @PostMapping("/reset-password") public String resetPassword(@RequestParam
	 * String token, @RequestParam String newPassword, Model model) { User user =
	 * resetService.validateToken(token); if (user == null) {
	 * model.addAttribute("error", "Invalid or expired token!"); return "error"; }
	 * resetService.resetPassword(user, newPassword); model.addAttribute("message",
	 * "Password successfully reset!"); return "login"; }
	 */
}
