package com.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Cid;
	 private String Name;
	 private String AdharNo;
	 private long ContactNo;
	 private String email;
	 private String  password;
	public int getCid() {
		return Cid;
	}
	public void setCid(int cid) {
		Cid = cid;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAdharNo() {
		return AdharNo;
	}
	public void setAdharNo(String adharNo) {
		AdharNo = adharNo;
	}
	public long getContactNo() {
		return ContactNo;
	}
	public void setContactNo(long contactNo) {
		ContactNo = contactNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Customer [Cid=" + Cid + ", Name=" + Name + ", AdharNo=" + AdharNo + ", ContactNo=" + ContactNo
				+ ", email=" + email + ", password=" + password + "]";
	}
	 
      
}
