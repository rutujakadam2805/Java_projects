package com.Entity;

import java.time.LocalTime;
//import java.sql.Time;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Flight {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int FlightID;
	
	private String FlightName;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy/mm/dd")
	private Date datef;

	
	private String time;
	private float Bprice;

	
	private float eprice;
	private float fprice;
	public float getBprice() {
		return Bprice;
	}

	public void setBprice(float bprice) {
		Bprice = bprice;
	}

	public float getEprice() {
		return eprice;
	}

	public void setEprice(float eprice) {
		this.eprice = eprice;
	}

	public float getFprice() {
		return fprice;
	}

	public void setFprice(float fprice) {
		this.fprice = fprice;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	private int FirstClass;
	private int businessClass;
	private int EconomicClass;
	private String Flightsource;
	private String FlightDestination;

	public int getFlightID() {
		return FlightID;
	}

	public void setFlightID(int flightID) {
		FlightID = flightID;
	}

	public String getFlightName() {
		return FlightName;
	}

	public void setFlightName(String flightName) {
		FlightName = flightName;
	}

	public Date getDatef() {
		return datef;
	}

	public void setDatef(Date datef) {
		this.datef = datef;
	}

	public int getFirstClass() {
		return FirstClass;
	}

	public void setFirstClass(int firstClass) {
		FirstClass = firstClass;
	}

	public int getBusinessClass() {
		return businessClass;
	}

	public void setBusinessClass(int businessClass) {
		this.businessClass = businessClass;
	}

	public int getEconomicClass() {
		return EconomicClass;
	}

	public void setEconomicClass(int economicClass) {
		EconomicClass = economicClass;
	}

	public String getFlightsource() {
		return Flightsource;
	}

	public void setFlightsource(String flightsource) {
		Flightsource = flightsource;
	}

	public String getFlightDestination() {
		return FlightDestination;
	}

	public void setFlightDestination(String flightDestination) {
		FlightDestination = flightDestination;
	}

}
