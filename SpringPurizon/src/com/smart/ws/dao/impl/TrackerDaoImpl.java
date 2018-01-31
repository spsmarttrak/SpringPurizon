   package com.smart.ws.dao.impl;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.smart.ws.beans.TrackerBean;
import com.smart.ws.dao.TrackerDao;

@Repository("TrackerDao")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class TrackerDaoImpl implements TrackerDao {

	@Autowired
	private SessionFactory sessionFactory;
	@Override 
	public List<TrackerBean> listTrackers(){
		List<TrackerBean> moduleList=new ArrayList();
		try{
		SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery("SELECT TraId,Date,Time,Spa_Ang,Tra_Ang,Set_Ang FROM inst_trackerstatus_new WHERE SiteId=5022");
		List<Object[]> result=sq.list();  
		for(Object[] bean:result){
			TrackerBean mb=new TrackerBean();
			mb.setTraId(bean[0].toString());
			mb.setDate(bean[1].toString());
			mb.setTime(bean[2].toString());  
			mb.setSet_Ang(bean[3].toString()); 
			mb.setSpa_Ang(bean[4].toString());
			mb.setTra_Ang(bean[5].toString());
			moduleList.add(mb);
		} 
		}catch(Exception e){
//			e.printStackTrace();
		} 
		return moduleList;
		
	}
	
	@Override
	public List<TrackerBean> listIndvTrackerdata(String traId) {
		List<TrackerBean> moduleList=new ArrayList();
		try{
			
			String query="SELECT Spa_Ang,Tra_Ang,Set_Ang,Tra_Status,TraId,DATE,TIME,Lat,Lon,Tzone,SLrev,SLfrw FROM inst_trackerstatus_new WHERE SiteId='5022' AND TraId='"+traId+"'";
			SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery(query);
			//System.out.println(sq);
			List<Object[]> result=sq.list();  
			for(Object[] bean:result){
				TrackerBean mb=new TrackerBean();
				mb.setSpa_Ang(bean[0].toString());
				mb.setTra_Ang(bean[1].toString());
				mb.setSet_Ang(bean[3].toString()); 
				mb.setTra_Status(bean[3].toString());
				mb.setTraId(bean[4].toString());
				//System.out.println("Tracker--->>>"+bean[4]);
				/*mb.setDate(bean[5].toString());
				mb.setTime(bean[6].toString());*/
				mb.setLat(bean[7].toString());
				mb.setLan(bean[8].toString());
				mb.setTzone(bean[9].toString());
				mb.setSlrev(bean[10].toString());
				mb.setSlfrw(bean[11].toString());
				
				String [] tparts = bean[6].toString().split("[:]");
				mb.setHours(tparts[0]);
				mb.setMinutes(tparts[1]);
				mb.setSeconds(tparts[2]);
				
				String [] dtparts = bean[5].toString().split("[-]");
				mb.setMonth(dtparts[1]);
				mb.setYear(dtparts[0]);
				mb.setDay(dtparts[2]);
				 
				
				String img="";
				String imgt="";
				String statusimg="";
				String trakermodeImg="";
				int Tracker_Mode,T1,T2,TST,Motor_status;
				Double SunAngle;
				Double TrackerAngle;
				SunAngle = Double.parseDouble(new DecimalFormat("######.##").format(Double.parseDouble(bean[1].toString().trim())));
				TrackerAngle = Double.parseDouble(new DecimalFormat("######.##").format(Double.parseDouble(bean[2].toString().trim())));
				String pre1=bean[3].toString();
				TST = Character.getNumericValue(pre1.charAt(0));
				T1=Character.getNumericValue(pre1.charAt(1));
		    	T2=Character.getNumericValue(pre1.charAt(2));
		    	Tracker_Mode = T1*10+T2;
		    	Motor_status=Character.getNumericValue(pre1.charAt(3));
				//System.out.println("motor status"+Motor_status);
		    	
		    	
				if (SunAngle >= -90.00 && SunAngle <= -45.00) {
					img = "img/status/spa-1.gif";
				} else if (SunAngle > -45.00 && SunAngle <= -1.00) {
					img = "img/status/spa-2.gif";
				} else if (SunAngle >= 1.00 && SunAngle <= 45.00) {
					img = "img/status/spa-4.gif";
				} else if (SunAngle > 45.00 && SunAngle < 90.00) {
					img = "img/status/spa-3.gif";
				} else if (SunAngle == 0) {
					img = "img/status/spa-night.gif";
				}
				mb.setSun_Angle(img);
				
				if(TrackerAngle < 02.00 && TrackerAngle >= -45.0 && SunAngle >=-89 && SunAngle <= -45 ){
					imgt = "img/status/tracker-morning-backtrack.gif";
		    	}else if(TrackerAngle > -45.00 && TrackerAngle <= -1.00){
		    		imgt = "img/status/tracker-morning-track.gif";
		    	}else if(TrackerAngle >= 0.00 && TrackerAngle <= 45.00 && SunAngle >= 0 && SunAngle < 40){
		    		imgt = "img/status/tracker-afternoon-after-track.gif";
		    	}else if((TrackerAngle < 45.00 && TrackerAngle > 0.00) && (SunAngle >= 40.00 && SunAngle <= 89.00)){
		    		imgt = "img/status/tracker-evening-backtracking.gif";
		    	}else if((TrackerAngle < 5.00 && TrackerAngle >= -5.00) && (SunAngle == 0)){
		    		imgt = "img/status/tracker-night.gif";
		    	}
				mb.setTrack_Angle(imgt);
				
				if(Motor_status == 1){
					statusimg = "img/status/Motor_status-2.png";
					String status = "Run";
					mb.setStatus(status);
		    	}else if(Motor_status == 0){
		    		statusimg = "img/status/Motor_status-1.png";
		    		String status = "Stop";
		    		mb.setStatus(status);
		    	}
				mb.setMotor_status(statusimg);
						//System.out.println("#####"+mb.getStatus());
				
						if(Tracker_Mode == 22){
							trakermodeImg = "img/status/22-Auto East.gif";
				    		String modestatus = "Auto East";
				    		mb.setModeStatus(modestatus);
     					}else if(Tracker_Mode == 21){
     						trakermodeImg = "img/status/21-Auto West.gif";
     						String modestatus= "Auto West";
     						mb.setModeStatus(modestatus);
     					}else if(Tracker_Mode == 20){
     						trakermodeImg = "img/status/20-Auto Stop.jpg";
     						String modestatus = "Auto Stop";
     						mb.setModeStatus(modestatus);
     					}else if(Tracker_Mode == 10){
     						trakermodeImg = "img/status/20-Auto Stop.jpg";
     						String modestatus = "Manual Stop";
     						mb.setModeStatus(modestatus);
     					}
								
								mb.setTracker_Mode(trakermodeImg);
				moduleList.add(mb);
			} 
			}catch(Exception e){
//				e.printStackTrace();
			} 
			return moduleList;
	} 
	 

}
