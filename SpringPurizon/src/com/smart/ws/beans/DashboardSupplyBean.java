package com.smart.ws.beans;

public class DashboardSupplyBean {

	private int SENID;
	private String DATE;
	private String TIME;
	private long IRR_FIX;
	private long MOD_TEMP;
	private long AIR_TEMP;
	private long WIND_SPD;
	private long WIND_DIR;
	private long HUMIDITY;
	private long RAIN;
	private long PRESSURE;
	private String Date1;
	private String Date2;
	
	
	
	public String getDate1() {
		return Date1;
	}
	public void setDate1(String date1) {
		Date1 = date1;
		
	}
	public String getDate2() {
		return Date2;
	}
	public void setDate2(String date2) {
		Date2 = date2;
	}
	public int getSENID() {
		return SENID;
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
	public void setSENID(int sENID) {
		SENID = sENID;
	}
	private long IRR_TILT;
	
	public long getIRR_FIX() {
		return IRR_FIX;
	}
	public void setIRR_FIX(long iRR_FIX) {
		IRR_FIX = iRR_FIX;
	}
	public long getMOD_TEMP() {
		return MOD_TEMP;
	}
	public void setMOD_TEMP(long mOD_TEMP) {
		MOD_TEMP = mOD_TEMP;
	}
	public long getAIR_TEMP() {
		return AIR_TEMP;
	}
	public void setAIR_TEMP(long aIR_TEMP) {
		AIR_TEMP = aIR_TEMP;
	}
	public long getWIND_SPD() {
		return WIND_SPD;
	}
	public void setWIND_SPD(long wIND_SPD) {
		WIND_SPD = wIND_SPD;
	}
	public long getWIND_DIR() {
		return WIND_DIR;
	}
	public void setWIND_DIR(long wIND_DIR) {
		WIND_DIR = wIND_DIR;
	}
	public long getHUMIDITY() {
		return HUMIDITY;
	}
	public void setHUMIDITY(long hUMIDITY) {
		HUMIDITY = hUMIDITY;
	}
	public long getRAIN() {
		return RAIN;
	}
	public void setRAIN(long rAIN) {
		RAIN = rAIN;
	}
	public long getPRESSURE() {
		return PRESSURE;
	}
	public void setPRESSURE(long pRESSURE) {
		PRESSURE = pRESSURE;
	}
	public long getIRR_TILT() {
		return IRR_TILT;
	}
	public void setIRR_TILT(long iRR_TILT) {
		IRR_TILT = iRR_TILT;
	} 
	
	 
	
	
}
