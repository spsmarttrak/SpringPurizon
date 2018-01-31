  package com.smart.ws.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="inst_trackerstatus_new")
public class Tracker implements Serializable{
	
	private static final long serialVersionUID = 5462223600l;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="SiteId")
	private String SiteId;
	@Column(name="TraId")
	private String TraId;
	@Column(name="Date")
	private String Date;
	@Column(name="Time")
	private String Time; 
	@Column(name="Spa_Ang")
	private String Spa_Ang;
	@Column(name="Tra_Ang")
	private String Tra_Ang;
	@Column(name="Set_Ang")
	private String Set_Ang;
	@Column(name="Tra_Status")
	private String Tra_Status;
	 
	 
	public String getTra_Status() {
		return Tra_Status;
	}


	public void setTra_Status(String tra_Status) {
		Tra_Status = tra_Status;
	}


	public String getSiteId() {
		return SiteId;
	}


	public void setSiteId(String siteId) {
		SiteId = siteId;
	}


	public String getTraId() {
		return TraId;
	}


	public void setTraId(String traId) {
		TraId = traId;
	}


	public String getDate() {
		return Date;
	}


	public void setDate(String date) {
		Date = date;
	}


	public String getTime() {
		return Time;
	}


	public void setTime(String time) {
		Time = time;
	}


	public String getSpa_Ang() {
		return Spa_Ang;
	}


	public void setSpa_Ang(String spa_Ang) {
		Spa_Ang = spa_Ang;
	}


	public String getTra_Ang() {
		return Tra_Ang;
	}


	public void setTra_Ang(String tra_Ang) {
		Tra_Ang = tra_Ang;
	}


	public String getSet_Ang() {
		return Set_Ang;
	}


	public void setSet_Ang(String set_Ang) {
		Set_Ang = set_Ang;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	} 
	
	 
	

}
