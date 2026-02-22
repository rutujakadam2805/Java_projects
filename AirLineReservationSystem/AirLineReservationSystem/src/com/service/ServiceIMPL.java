package com.service;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.DAO.DAOInterface;
import com.Entity.Booking;
import com.Entity.Flight;
import com.Entity.User;
@Service
public class ServiceIMPL implements serviceInterface{

	@Override
	public List<Flight> getDateInService(Date datef) {
		List<Flight> listFlight=DAO.getDateInDAO(datef);
		return listFlight;
	}

	@Autowired
	public DAOInterface DAO;
	
	public void saveCustomerService(User c) {
		DAO.saveCustomerDAO(c);
	}

	@Override
	public void addFlightService(Flight f) {
		 DAO.addFlightDAO(f);
		
	}

	@Override
	public List<Flight> getDateForDeleteInService(Date datef) {
		List<Flight> listFlight=DAO.getDateForDeleteInDAO(datef);
		return listFlight;
	}

	@Override
	public List<Flight> deleteFlightInService(int id) {
		return DAO.deleteFlightFromDAo(id);
	}

	@Override
	public User checkUser(String e, String pass) {
		User u=DAO.checkUserDAO(e,pass);
		return u;
	}

	@Override
	public User updateUserInService(String n, String a, long c, String e, String p) {
		return DAO.updateUserInDAO(n,a,c,e,p);
		
	}

	@Override
	public User getUser() {
		return DAO.getUserDAo();
	}

	@Override
	public User getPro() {
		return DAO.getProInDAO();
	}

	@Override
	public void bookFlightService(Booking b) {
		DAO.bookFlightDAO(b);
		
	}

	@Override
	public void uploadFileInService(MultipartFile file) {
		DAO.uploadFileDAO(file);
		
	}

	@Override
	public User checkUserEmail(String e, String pass) {
		return DAO.checkUserEmailDAO(e,pass);
		
	}

	
	
	
	
	
	

}
