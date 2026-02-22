package com.DAO;


import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.Entity.Booking;
import com.Entity.FileStore;
import com.Entity.Flight;
import com.Entity.User;

@Repository
public class DAOIMPL implements DAOInterface {

	public String password;
	@Override
	public List<Flight> getDateForDeleteInDAO(Date date) {
		Session s=sf.openSession();
		Query q = s.createQuery("from Flight where datef=:datef");
		q.setParameter("datef",date);
		List<Flight> Result = (List<Flight>) q.getResultList();
		return Result;	
	}

	@Override
	public List<Flight> deleteFlightFromDAo(int id) {
		Session s = sf.openSession();
		Flight f = s.get(Flight.class, id);
		if (f != null) {

			s.delete(f);
			s.beginTransaction().commit();

		}

		Query query = s.createQuery("from Flight");
		List flight = query.getResultList();

		return flight;

	}
	

	@Override
	public User checkUserDAO(String e, String pass) {
		Session s=sf.openSession();
		Query q = s.createQuery("from User where password=:password and email=:email");
		q.setParameter("email",e);
		q.setParameter("password",pass);
		User u=(User)q.getSingleResult();
		System.out.println(u);
		password=u.getPassword();
		return u;
	}


	@Override
	public void bookFlightDAO(Booking b) {
		Session s=sf.openSession();
		String n=b.getfName();
		//Date d=b.getDateb();
		String FlightClass=b.getTravelClass();
		int c=b.getCount();
		Query q = s.createQuery("from Flight where FlightName=:FlightName");
		q.setParameter("FlightName",n);
		//q.setParameter("datef",d);
		Flight f=(Flight)q.getSingleResult();
		if(FlightClass.equals("Economy"))
		{
		   int num= f.getEconomicClass()-c;	
		   f.setEconomicClass(num);
		   s.save(f);
		   s.beginTransaction().commit();

		}
		else if(FlightClass.equals("Business"))
		{
		   int num= f.getEconomicClass()-c;	
		   f.setEconomicClass(num);
		   s.save(f);
		   s.beginTransaction().commit();

		}
		else if(FlightClass.equals("FirstClass"))
		{
		   int num= f.getEconomicClass()-c;	
		   f.setEconomicClass(num);
		   s.save(f);
		   s.beginTransaction().commit();

		}
		s.save(b);
		s.beginTransaction().commit();
		
		
	}
	


	@Override
	public void uploadFileDAO(MultipartFile file) {
		try {
			Session s = sf.openSession();

			FileStore fileupload = new FileStore();
			fileupload.setFileName(file.getOriginalFilename());
			fileupload.setDate(new Date());
			fileupload.setFileData(file.getBytes());

			s.save(fileupload);
			s.beginTransaction().commit();
			System.out.println("File uploaded");

		} catch (IOException e) {

			e.printStackTrace();
		}

		
	}



	@Autowired
	public SessionFactory sf;

	@Override
	public void saveCustomerDAO(User c) {
		Session s=sf.openSession();
		s.save(c);
		s.beginTransaction().commit();
		
	}

	@Override
	public void addFlightDAO(Flight f) {
		Session s=sf.openSession();
		s.save(f);
		s.beginTransaction().commit();
		
		
	}

	@Override
	public List<Flight> getDateInDAO(Date date) {
		Session s=sf.openSession();
		Query q = s.createQuery("from Flight where datef=:datef");
		q.setParameter("datef",date);
		List<Flight> Result = (List<Flight>) q.getResultList();
		return Result;
	}

	@Override
	public User getUserDAo() {
		Session s=sf.openSession();
		Query q = s.createQuery("from User where password=:password");
		q.setParameter("password",password);
		User u=(User)q.getSingleResult();
		return u;
	}

	@Override
	public User updateUserInDAO(String n, String a, long c, String e, String p) {
		Session s=sf.openSession();
		Query q = s.createQuery("from User where password=:password");
		q.setParameter("password",password);
		User u=(User)q.getSingleResult();
		u.setName(n);
		u.setAdharNo(a);
		u.setContactNo(c);
		u.setEmail(e);
		u.setPassword(p);
		s.save(u);
		s.beginTransaction().commit();
		return u;
		
	}

	@Override
	public User getProInDAO() {
		Session s=sf.openSession();
		Query q = s.createQuery("from User where password=:password");
		q.setParameter("password",password);
		User u=(User)q.getSingleResult();
		return u;
	}

	@Override
	public User checkUserEmailDAO(String e, String pass) {
		Session s=sf.openSession();
		Query q = s.createQuery("from User where email=:email");
		q.setParameter("email",e);
		User u=(User)q.getSingleResult();
		u.setPassword(pass);
		s.save(u);
		s.beginTransaction().commit();
		return u;
		
	}
	
	
	
	
	
}
