package com.control;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.Entity.Booking;
import com.Entity.Flight;
import com.Entity.User;
import com.service.serviceInterface;
@Controller
public class controller {
	@Autowired
	public serviceInterface service;
	
	public static final String emailA="Admin@gmail.com";
	public static final String passwordA="Admin123";
	public User user;
	@RequestMapping(value = "/Sign")
	public String saveCustomer(@ModelAttribute User c)
	{  
		service.saveCustomerService(c);
		return "UserLogin";
	}
	
	@RequestMapping(value="/admin")
	public String adminLogin(@RequestParam("email") String e,@RequestParam("password") String pass,Model m)
	{
		System.out.println(e);
		System.out.println(pass);
		if(emailA.equals(e) && passwordA.equals(pass)) {
			return "AdminOption";
		}
		else {
			m.addAttribute("msg","Invalid credentials");
			return "AdminLogin";	
		}
	}
	@RequestMapping(value="/AddFlight")
	public String AddFlight(@ModelAttribute Flight f)
	{ 
		service.addFlightService(f);
		return "AdminOption";
	}

	@RequestMapping(value="/show")
	public String getDate(@RequestParam("datef") Date datef,Model model)
	{
		try {
		List<Flight> listFlight=service.getDateInService(datef);
		model.addAttribute("msg",listFlight);
		return "FlightDetails";
		}catch (Exception e) {
		return "getDate";	
		}
	}
	@RequestMapping(value="/showFlight")
	public String getDateDelete(@RequestParam("datef") Date datef,Model model)
	{
		try {
		List<Flight> listFlight=service.getDateForDeleteInService(datef);
		model.addAttribute("msg",listFlight);
		return "CancleFlightAdmin";
		}catch (Exception e) {
		return "getDate";	
		}
	}
	@RequestMapping(value = "/del")
	public String deleteEMployee(@RequestParam("id") int id, Model model) {
		List<Flight> le = service.deleteFlightInService(id);
		if (le != null) {
			model.addAttribute("msg", le);
			return "CancleFlightAdmin";
		}
		return "CancleFlightAdmin";

	}

	@RequestMapping(value="/log")
	public String UserLogin(@RequestParam("email") String e,@RequestParam("password") String pass,Model m)
	{
		try {
			User u=service.checkUser(e,pass);
			return "UserOption";
			}catch (Exception ex) {
				m.addAttribute("msg","Invalid credentials");
				return "UserLogin";
			}
	}

	@RequestMapping(value="/check")
	public String getRequest(Model m) {
		try {
			String a="1";
			if(a.equals("1")) {
			User u=service.getUser();
			m.addAttribute("msg",u);
			return "UpdateUser";
			}
			else {
				return "UserOption";
			}
			}catch (Exception ex) {
				return "UserLogin";
		}
	}
	@RequestMapping(value="/up")
	public String updateUser(@RequestParam("Name")String n,@RequestParam("AdharNo")String a,@RequestParam("ContactNo")long c,@RequestParam("email")String e,@RequestParam("password")String p,Model m)
	{
		User u=service.updateUserInService(n,a,c,e,p);
		user=u;
		if(u!=null)
		{
			m.addAttribute("msg",u);
			return "updatedProfile";
		}
		return "UserLogin";
	}
	@RequestMapping(value="/profile")
	public String Profile(Model m) {
		User u=service.getPro();
		m.addAttribute("msg",u);
		return "Profile";
		
	}
	@RequestMapping(value="/details")
	 public String getFlight() {
		return "getDate";
	}
	@RequestMapping(value="/book")
	 public String getFlightbook() {
		return "Booking";
	}
	@RequestMapping(value="/Flight")
	 public String flight(@RequestPart MultipartFile file) {
		service.uploadFileInService(file);
		return "UserLogin";
	}
	@RequestMapping(value="/bookFlight")
	public String bookFlight(@RequestParam("travelClass")String t,@RequestParam("count")int c, Model m)
	{
		/*
		 * try { return "UserLogin"; // service.bookFlightService(b); //return
		 * "payment"; }catch (Exception e) {
		 * m.addAttribute("msg","Invalid Booking!!!!");
		 */
		if(t.equals("Economy"))
		{
			float value=1000*c;
			m.addAttribute("msg",value);
			return "payment";
			
		}
		if(t.equals("Business"))
		{
			float value=2000*c;
			m.addAttribute("msg",value);
			return "payment";
			
		}
		if(t.equals("FirstClass"))
		{
			float value=4000*c;
			m.addAttribute("msg",value);
			return "payment";
			
		}
			return "payment";
		
	}
	@RequestMapping(value="/forgot-password")
	public String UserForgot(@RequestParam("email") String e,@RequestParam("password") String pass,Model m)
	{
		try {
			service.checkUserEmail(e,pass);
			return "UserLogin";
			}catch (Exception ex) {
				m.addAttribute("msg","Invalid Email");
				return "UserLogin";
			}
	}
}
