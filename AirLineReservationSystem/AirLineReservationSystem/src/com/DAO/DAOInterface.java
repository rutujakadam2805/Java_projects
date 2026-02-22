package com.DAO;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.Entity.Booking;
import com.Entity.Flight;
import com.Entity.User;

public interface DAOInterface {

	void saveCustomerDAO(User c);

	void addFlightDAO(Flight f);

	List<Flight> getDateInDAO(Date datef);

	List<Flight> getDateForDeleteInDAO(Date datef);

	List<Flight> deleteFlightFromDAo(int id);

	User checkUserDAO(String e, String pass);

	User getUserDAo();

	User updateUserInDAO(String n, String a, long c, String e, String p);

	User getProInDAO();

	void bookFlightDAO(Booking b);

	void uploadFileDAO(MultipartFile file);

	User checkUserEmailDAO(String e, String pass);

	
}
