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
String traId=request.getParameter("traId"); 
String date=request.getParameter("date");    
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
 TrackerDao tdao =(TrackerDao)wac.getBean("trackerDao");
 //System.out.println("dateeeeeeeeee "+date);
 List<Object[]> result=tdao.getTrackerData(traId,date); 
//System.out.println("list size"+result.size());

String Sang="";
String Tang="";
String xp="";
for (int i = 0; i < result.size(); i++) { 
	Sang=Sang+result.get(i)[0]+",";
	Tang=Tang+result.get(i)[1]+",";
	xp=xp+Double.parseDouble(result.get(i)[2]+"."+result.get(i)[3])+",";
}     
out.print(Sang+"@"+Tang+"@"+xp); 
%>