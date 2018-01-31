     package com.smart.ws.dao.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.ws.beans.SmbBean;
import com.smart.ws.dao.SmbDao;

@Repository("SmbDao")
public class SmbDaoImpl implements SmbDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	 
	@Override 
	public List<SmbBean> listSmbs(){
		List<SmbBean> smbList=new ArrayList();
		try{
		SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery("SELECT STR_CUR1,STR_CUR2,STR_CUR3,STR_CUR4,STR_CUR5,STR_CUR6,STR_CUR7,STR_CUR8,STR_CUR9,STR_CUR10,STR_CUR11,STR_CUR12,STR_CUR13,STR_CUR14,STR_CUR15,STR_CUR16,STR_CUR17,STR_CUR18,STR_CUR19,STR_CUR20,STR_CUR21,STR_CUR22,STR_CUR23,STR_CUR24,VOLTAGE,TOT_CUR,POWER,DATE,TIME,DCS_STAT,SPD_STAT,b.SMBId,a.Name,a.ID FROM smblist a, inst_smbdata b WHERE a.SiteId=b.SiteId AND a.SMBId=b.SMBId ORDER BY b.SMBId");
		List<Object[]> result=sq.list();  
		for(Object[] bean:result){
			SmbBean ib=new SmbBean();
			ib.setSTR_CUR1(bean[0].toString());
			ib.setSTR_CUR2(bean[1].toString());
			ib.setSTR_CUR3(bean[2].toString());  
			ib.setSTR_CUR4(bean[3].toString()); 
			ib.setSTR_CUR5(bean[4].toString());
			ib.setSTR_CUR6(bean[5].toString());
			ib.setSTR_CUR7(bean[6].toString());
			ib.setSTR_CUR8(bean[7].toString());
			ib.setSTR_CUR9(bean[8].toString());
			
			ib.setSTR_CUR10(bean[9].toString());
			ib.setSTR_CUR11(bean[10].toString());
			ib.setSTR_CUR12(bean[11].toString());
			ib.setSTR_CUR13(bean[12].toString());  
			ib.setSTR_CUR14(bean[13].toString()); 
			ib.setSTR_CUR15(bean[14].toString());
			ib.setSTR_CUR16(bean[15].toString());
			ib.setSTR_CUR17(bean[16].toString());
			ib.setSTR_CUR18(bean[17].toString());
			ib.setSTR_CUR19(bean[18].toString());
			
			ib.setSTR_CUR20(bean[19].toString());
			ib.setSTR_CUR21(bean[20].toString());
			ib.setSTR_CUR22(bean[21].toString());
			ib.setSTR_CUR23(bean[22].toString());  
			ib.setSTR_CUR24(bean[23].toString()); 
			ib.setVOLTAGE(bean[24].toString());
			ib.setTOT_CUR(bean[25].toString());
			ib.setPOWER(bean[26].toString());
			
			ib.setDATE(bean[27].toString()); 
			ib.setTIME(bean[28].toString());
			ib.setDCS_STAT(bean[29].toString());
			ib.setSPD_STAT(bean[30].toString()); 
			ib.setSMBId(bean[31].toString());
			ib.setName(bean[32].toString());
			ib.setID(bean[33].toString());
			smbList.add(ib);
		} 
		}catch(Exception e){
//			e.printStackTrace();
		} 
		return smbList;
		
	}
	
	@Override 
	public List<SmbBean> listIndvSmbs(String smbid){
		List<SmbBean> smbList=new ArrayList();
		try{
		SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery("select STR_CUR1,STR_CUR2,STR_CUR3,STR_CUR4,STR_CUR5,STR_CUR6,STR_CUR7,STR_CUR8,STR_CUR9,STR_CUR10,STR_CUR11,STR_CUR12,STR_CUR13,STR_CUR14,STR_CUR15,STR_CUR16,STR_CUR17,STR_CUR18,STR_CUR19,STR_CUR20,STR_CUR21,STR_CUR22,STR_CUR23,STR_CUR24,VOLTAGE,TOT_CUR,POWER,DATE,TIME,DCS_STAT,SPD_STAT,SMBID from inst_smbdata where SITEID='5022' and SMBID='"+smbid+"'");
		List<Object[]> result=sq.list();  
		for(Object[] bean:result){
			SmbBean ib=new SmbBean();
			ib.setSTR_CUR1(bean[0].toString());
			ib.setSTR_CUR2(bean[1].toString());
			ib.setSTR_CUR3(bean[2].toString());  
			ib.setSTR_CUR4(bean[3].toString()); 
			ib.setSTR_CUR5(bean[4].toString());
			ib.setSTR_CUR6(bean[5].toString());
			ib.setSTR_CUR7(bean[6].toString());
			ib.setSTR_CUR8(bean[7].toString());
			ib.setSTR_CUR9(bean[8].toString());
			
			ib.setSTR_CUR10(bean[9].toString());
			ib.setSTR_CUR11(bean[10].toString());
			ib.setSTR_CUR12(bean[11].toString());
			ib.setSTR_CUR13(bean[12].toString());  
			ib.setSTR_CUR14(bean[13].toString()); 
			ib.setSTR_CUR15(bean[14].toString());
			ib.setSTR_CUR16(bean[15].toString());
			ib.setSTR_CUR17(bean[16].toString());
			ib.setSTR_CUR18(bean[17].toString());
			ib.setSTR_CUR19(bean[18].toString());
			
			ib.setSTR_CUR20(bean[19].toString());
			ib.setSTR_CUR21(bean[20].toString());
			ib.setSTR_CUR22(bean[21].toString());
			ib.setSTR_CUR23(bean[22].toString());  
			ib.setSTR_CUR24(bean[23].toString()); 
			ib.setVOLTAGE(bean[24].toString());
			ib.setTOT_CUR(bean[25].toString());
			ib.setPOWER(bean[26].toString());
			
			ib.setDATE(bean[27].toString()); 
			ib.setTIME(bean[28].toString());
			ib.setDCS_STAT(bean[29].toString());
			ib.setSPD_STAT(bean[30].toString()); 
			ib.setSMBId(bean[31].toString()); 
			smbList.add(ib);
		} 
		}catch(Exception e){
//			e.printStackTrace();
		} 
		return smbList;
		
	}

	

	/*@Override
	public List<SmbBean> listsmbpowerdata() {
		List<SmbBean> smbpowList=new ArrayList();
		Map<String,Integer> layoutpower=new HashMap();
		try{
			SQLQuery sq=sessionFactory.getCurrentSession().createSQLQuery("SELECT POWER,SMBID FROM inst_smbdata WHERE SITEID=5022 ORDER BY SMBID");
			
			List<Object[]> result=sq.list();  
			for(Object[] bean:result){
				SmbBean ib=new SmbBean();
				ib.setPOWER(bean[0].toString()); 
				smbpowList.add(ib);
				System.out.println("@@@@"+ib.getPOWER());
			} 
			}catch(Exception e){
				e.printStackTrace();
			} 
		
		
		return smbpowList;

	}*/
	/*@Override
	public Map<String,List> mapsmbpowerdata(){
		Map<String,List> mappedActions=new HashMap();
		List<Object[]> result=sessionFactory.getCurrentSession().createSQLQuery("SELECT action_id,add_flg,delete_flg,edit_flg,view_flg FROM role_moduleaction_map WHERE role_id="+roleId).list();
		for(int i=0;i<result.size();i++){
			Object[] obj=result.get(i);
			List<String> actionList=new ArrayList<String>();
			      actionList.add(obj[1].toString()); //add
			      actionList.add(obj[2].toString()); //delete
			      actionList.add(obj[3].toString()); //edit
			      actionList.add(obj[4].toString()); //view
			mappedActions.put(obj[0].toString(), actionList);
		}
		
		return mappedActions;*/
	@Override
	public Map<String, String> mapsmbpowerdata() {
		Map<String,String> smbmap=new LinkedHashMap<>();
		List<Object[]> result=sessionFactory.getCurrentSession().createSQLQuery("SELECT SMBID,POWER FROM inst_smbdata WHERE SITEID=5022 ORDER BY SMBID").list();
		for(int i=0;i<result.size();i++){
			Object[] obj=result.get(i);
			//List<String> pwlist=new ArrayList<String>();
		//	 actionList.add(obj[0].toString());
			//pwlist.add(obj[1].toString());
	//		System.out.println("#########--------->>>>>>"+pwlist);
			smbmap.put(obj[0].toString(),obj[1].toString());
		}
		/*for(Map.Entry entry:smbmap.entrySet()){
		    System.out.print("-------------->"+entry.getKey() + " : " + entry.getValue());
		}*/
		return smbmap;
	}

}
