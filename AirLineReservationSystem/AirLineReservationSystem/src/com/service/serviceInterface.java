package com.service;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.Entity.Booking;
import com.Entity.Flight;
import com.Entity.User;

public interface serviceInterface {

	void saveCustomerService(User c);

	void addFlightService(Flight f);

	List<Flight> getDateInService(Date datef);

	List<Flight> getDateForDeleteInService(Date datef);

	List<Flight> deleteFlightInService(int id);

	User checkUser(String e, String pass);

	User getUser();

    User updateUserInService(String n, String a, long c, String e, String p);

	User getPro();

	void bookFlightService(Booking b);

	void uploadFileInService(MultipartFile file);

	User checkUserEmail(String e, String pass);

	

}
