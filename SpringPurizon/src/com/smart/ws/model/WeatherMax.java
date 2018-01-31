 package com.smart.ws.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sensordata")
public class WeatherMax implements Serializable {

	private static final long serialVersionUID = 5462223600l;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "SITEID")
	private int SITEID;
	@Column(name = "SENID")
	private String SENID;
	@Column(name = "DATE")
	private String DATE;
	@Column(name = "TIME")
	private String TIME;
	@Column(name = "IRR_FIX")
	private String IRR_FIX;
	@Column(name = "MOD_TEMP")
	private String MOD_TEMP;
	@Column(name = "AIR_TEMP")
	private String AIR_TEMP;
	@Column(name = "WIND_SPD")
	private String WIND_SPD;
	@Column(name = "WIND_DIR")
	private String WIND_DIR;
	@Column(name = "HUMIDITY")
	private String HUMIDITY;
	@Column(name = "RAIN")
	private String RAIN;
	@Column(name = "PRESSURE")
	private String PRESSURE;
	@Column(name = "IRR_TILT")
	private String IRR_TILT;
	@Column(name = "OPT1")
	private String OPT1;
	@Column(name = "OPT2")
	private String OPT2;
	@Column(name = "SYSTEM")
	private String SYSTEM;

	public int getSITEID() {
		return SITEID;
	}

	public void setSITEID(int sITEID) {
		SITEID = sITEID;
	}

	public String getSENID() {
		return SENID;
	}

	public void setSENID(String sENID) {
		SENID = sENID;
	}

	public String getDATE() {
		return DATE;
	}

	public void setDATE(String dATE) {
		DATE = dATE;
	}

	public String getTIME() {
		return TIME;
	}

	public void setTIME(String tIME) {
		TIME = tIME;
	}

	public String getIRR_FIX() {
		return IRR_FIX;
	}

	public void setIRR_FIX(String iRR_FIX) {
		IRR_FIX = iRR_FIX;
	}

	public String getMOD_TEMP() {
		return MOD_TEMP;
	}

	public void setMOD_TEMP(String mOD_TEMP) {
		MOD_TEMP = mOD_TEMP;
	}

	public String getAIR_TEMP() {
		return AIR_TEMP;
	}

	public void setAIR_TEMP(String aIR_TEMP) {
		AIR_TEMP = aIR_TEMP;
	}

	public String getWIND_SPD() {
		return WIND_SPD;
	}

	public void setWIND_SPD(String wIND_SPD) {
		WIND_SPD = wIND_SPD;
	}

	public String getWIND_DIR() {
		return WIND_DIR;
	}

	public void setWIND_DIR(String wIND_DIR) {
		WIND_DIR = wIND_DIR;
	}

	public String getHUMIDITY() {
		return HUMIDITY;
	}

	public void setHUMIDITY(String hUMIDITY) {
		HUMIDITY = hUMIDITY;
	}

	public String getRAIN() {
		return RAIN;
	}

	public void setRAIN(String rAIN) {
		RAIN = rAIN;
	}

	public String getPRESSURE() {
		return PRESSURE;
	}

	public void setPRESSURE(String pRESSURE) {
		PRESSURE = pRESSURE;
	}

	public String getIRR_TILT() {
		return IRR_TILT;
	}

	public void setIRR_TILT(String iRR_TILT) {
		IRR_TILT = iRR_TILT;
	}

	public String getOPT1() {
		return OPT1;
	}

	public void setOPT1(String oPT1) {
		OPT1 = oPT1;
	}

	public String getOPT2() {
		return OPT2;
	}

	public void setOPT2(String oPT2) {
		OPT2 = oPT2;
	}

	public String getSYSTEM() {
		return SYSTEM;
	}

	public void setSYSTEM(String sYSTEM) {
		SYSTEM = sYSTEM;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
