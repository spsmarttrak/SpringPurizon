   package com.smart.ws.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="inst_inv2data")
public class InvView implements Serializable{
	
	private static final long serialVersionUID = 5462223600l;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	 
	@Column(name="AC_POW")
	private String AC_POW;
	@Column(name="DC_POW")
	private String DC_POW;
	@Column(name="TOTAL_AC_GEN")
	private String TOTAL_AC_GEN;
	 
	
	 
	 
	public String getAC_POW() {
		return AC_POW;
	}
	public void setAC_POW(String aC_POW) {
		AC_POW = aC_POW;
	}
	public String getDC_POW() {
		return DC_POW;
	}
	public void setDC_POW(String dC_POW) {
		DC_POW = dC_POW;
	}
	public String getTOTAL_AC_GEN() {
		return TOTAL_AC_GEN;
	}
	public void setTOTAL_AC_GEN(String tOTAL_AC_GEN) {
		TOTAL_AC_GEN = tOTAL_AC_GEN;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	} 
	
	 
	

}
