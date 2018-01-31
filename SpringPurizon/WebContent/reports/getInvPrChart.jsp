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
//System.out.println(INVId+daytype+date+date1);

SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
SimpleDateFormat sdf1=new SimpleDateFormat("MM-yyyy");
SimpleDateFormat sdf2=new SimpleDateFormat("yyyy");

sdf.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
sdf1.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
sdf2.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));

WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
InvPrDao tdao =(InvPrDao)wac.getBean("inverterprDao");  
   List<Object[]> result=new ArrayList(); 
 //System.out.println("list size"+result.size());

String dates=""; 
String values="";
  if(daytype.equals("day")){ 
	 
result=tdao.getInvprtodData(INVId);  
//System.out.println("==============>"+result); 
  for (int i = 0; i < result.size(); i++) { 
	  dates=dates+result.get(i)[0]+",";
	  values=values+result.get(i)[1]+",";  
	}    
}  //daily
if(daytype.equals("month")){ 
	result=tdao.getInvprmonthData(INVId,date,date1);  
	  for (int i = 0; i < result.size(); i++) { 
		dates=dates+result.get(i)[0]+",";
		values=values+result.get(i)[1]+","; 
	}    
}   
  if(daytype.equals("year")){ 
	  result=tdao.getInvpryearData(INVId,date); 
	  for (int i = 0; i < result.size(); i++) { 
		  dates=dates+result.get(i)[0]+",";
		  values=values+result.get(i)[1]+",";
		 
	}   
}
if(daytype.equals("total")){ 
	result=tdao.getInvprtotalData(INVId);  
	//System.out.println("==============>"+result); 
	  for (int i = 0; i < result.size(); i++) { 
		  dates=dates+result.get(i)[0]+",";
		  values=values+result.get(i)[1]+","; 
	}  
	  
} 
  /* for (int i = 0; i < result.size(); i++) { 
	dates="7,8,9,10,11,12,13,14,15,16,17,18,19";
	values=values+result.get(i)[0]+","+result.get(i)[1]+","+result.get(i)[2]+","+result.get(i)[3]+","+result.get(i)[4]+","+result.get(i)[5]+","+result.get(i)[6]+","+result.get(i)[7]+","+result.get(i)[8]+","+result.get(i)[9]+","+result.get(i)[10]+","+result.get(i)[11]+","+result.get(i)[12];
	 
}  */     
out.print(dates+"@"+values); 
%>