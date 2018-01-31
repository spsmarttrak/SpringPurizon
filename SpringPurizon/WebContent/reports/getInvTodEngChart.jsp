 <%@page import="com.smart.ws.controller.UtilityClass"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.springframework.web.context.WebApplicationContext" %> 
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.smart.ws.service.*" %>
<%@page import="com.smart.ws.model.*" %>
<%@page import="com.smart.ws.dao.impl.*" %>
<%@page import="java.util.*" %>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.Map.Entry" %>
<%
String INVId=request.getParameter("INVId"); 
String daytype=request.getParameter("daytype");
String date=request.getParameter("date"); 
String date1=request.getParameter("date1");
//System.out.println(INVId+daytype);

SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
SimpleDateFormat sdf1=new SimpleDateFormat("MM-yyyy");
SimpleDateFormat sdf2=new SimpleDateFormat("yyyy");

sdf.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
sdf1.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
sdf2.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));

WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
InvTodEngDao tdao =(InvTodEngDao)wac.getBean("invertertodengDao");  
   List<Object[]> result=new ArrayList(); 
 /* System.out.println("list size"+result.size()); */

String dates=""; 
String values="";
if(daytype.equals("daily")){ 
	 
result=tdao.getInvtodengData(INVId,date);  
//System.out.println("==============>"+result); 
  for (int i = 0; i < result.size(); i++) { 
	dates="7,8,9,10,11,12,13,14,15,16,17,18,19";
	values=values+result.get(i)[0]+","+result.get(i)[1]+","+result.get(i)[2]+","+result.get(i)[3]+","+result.get(i)[4]+","+result.get(i)[5]+","+result.get(i)[6]+","+result.get(i)[7]+","+result.get(i)[8]+","+result.get(i)[9]+","+result.get(i)[10]+","+result.get(i)[11]+","+result.get(i)[12];
	 
	}    
}//daily
if(daytype.equals("monthly")){ 
	result=tdao.getInvmonthengData(INVId,date,date1);  
	  for (int i = 0; i < result.size(); i++) { 
		dates="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30";
		values=values+result.get(i)[0]+","+result.get(i)[1]+","+result.get(i)[2]+","+result.get(i)[3]+","+result.get(i)[4]+","+result.get(i)[5]+","+result.get(i)[6]+","+result.get(i)[7]+","+result.get(i)[8]+","+result.get(i)[9]+","+result.get(i)[10]+","+result.get(i)[11]+","+result.get(i)[12]+","+result.get(i)[13]+","+result.get(i)[14]+","+result.get(i)[15]+","+result.get(i)[16]+","+result.get(i)[17]+","+result.get(i)[18]+","+result.get(i)[19]+","+result.get(i)[20]+","+result.get(i)[21]+","+result.get(i)[22]+","+result.get(i)[23]+","+result.get(i)[24]+","+result.get(i)[25]+","+result.get(i)[26]+","+result.get(i)[27]+","+result.get(i)[28]+","+result.get(i)[29]+","+result.get(i)[30];
		 
	}   
}   
if(daytype.equals("yearly")){ 
	result=tdao.getInvyearengData(INVId,date);  
	  for (int i = 0; i < result.size(); i++) { 
		dates="1,2,3,4,5,6,7,8,9,10,11,12";
		values=values+result.get(i)[0]+","+result.get(i)[1]+","+result.get(i)[2]+","+result.get(i)[3]+","+result.get(i)[4]+","+result.get(i)[5]+","+result.get(i)[6]+","+result.get(i)[7]+","+result.get(i)[8]+","+result.get(i)[9]+","+result.get(i)[10]+","+result.get(i)[11];
		 
	}   
}
if(daytype.equals("totaly")){ 
	result=tdao.getInvtotalengData(INVId);  
	  for (int i = 0; i < result.size(); i++) { 
		dates=dates+result.get(i)[0]+",";  
		values=values+result.get(i)[1]+",";
	}  
	  //System.out.println("XXXXXXXXX"+dates+values);
}
  /* for (int i = 0; i < result.size(); i++) { 
	dates="7,8,9,10,11,12,13,14,15,16,17,18,19";
	values=values+result.get(i)[0]+","+result.get(i)[1]+","+result.get(i)[2]+","+result.get(i)[3]+","+result.get(i)[4]+","+result.get(i)[5]+","+result.get(i)[6]+","+result.get(i)[7]+","+result.get(i)[8]+","+result.get(i)[9]+","+result.get(i)[10]+","+result.get(i)[11]+","+result.get(i)[12];
	 
}  */     
out.print(dates+"@"+values); 
%>