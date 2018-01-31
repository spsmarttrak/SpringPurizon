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
String date=request.getParameter("date");
//System.out.println("inv"+date);  
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
InvDashEngDao tdao =(InvDashEngDao)wac.getBean("inverterengDao");  
List<Object[]> result=tdao.getInvRadPowgraph(date);  
//System.out.println("list size"+result.size());
String time="";
String dcp="";
String acp="";
String rad="";
for (int i = 0; i < result.size(); i++) { 
	time=time+result.get(i)[0]+",";
	dcp=dcp+result.get(i)[1]+","; 
	acp=acp+result.get(i)[2]+",";
	rad=rad+result.get(i)[3]+",";
}    
   //System.out.println("x-axis----->"+time);  
   //System.out.println("dcp----->"+dcp);
   //System.out.println("acp----->"+acp);
   //System.out.println("rad----->"+rad);
out.print(time+"@"+dcp+"@"+acp+"@"+rad); 
%>