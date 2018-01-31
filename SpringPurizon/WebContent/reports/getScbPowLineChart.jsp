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
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
ScbPieDao tdao =(ScbPieDao)wac.getBean("scbDao");
 List<Object[]> result=tdao.getscbpieData(); 
 //System.out.println("scb size"+result.size());

String Id="";
String cur=""; 
String pow="";
for (int i = 0; i < result.size(); i++) { 
	Id=Id+result.get(i)[0]+",";
	cur=cur+result.get(i)[1]+",";  
	pow=pow+result.get(i)[2]+",";  
}    
   //System.out.println("x-axis----->"+Id);  
  //System.out.println("y-axis----->"+pow);
out.print(Id+"@"+cur+"@"+pow); 
%>