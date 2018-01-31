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
//String INVId=request.getParameter("INVId"); 
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
InvDashEngDao tdao =(InvDashEngDao)wac.getBean("inverterengDao");
 List<Object[]> result=tdao.getInvpietodayChart(); 
//System.out.println("list size"+result.size());

String Id="";
String eng=""; 
for (int i = 0; i < result.size(); i++) { 
	Id=Id+result.get(i)[0]+",";
	eng=eng+result.get(i)[1]+",";  
}    
  //System.out.println("x-axis----->"+Id);  
  //System.out.println("y-axis----->"+eng);
out.print(eng); 
%>