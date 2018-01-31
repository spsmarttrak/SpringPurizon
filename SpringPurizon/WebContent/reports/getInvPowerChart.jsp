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
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
InverterGraphDao tdao =(InverterGraphDao)wac.getBean("inverterDao"); 
 List<Object[]> result=tdao.getInvgraphData(INVId); 
//System.out.println("list size"+result.size());

String acp="";
String dcp="";
String xp="";
for (int i = 0; i < result.size(); i++) { 
	acp=acp+result.get(i)[0]+",";
	dcp=dcp+result.get(i)[1]+",";
	xp=xp+Double.parseDouble(result.get(i)[2]+"."+result.get(i)[3])+",";
}    
 //System.out.println("x-axis----->"+xp); 
out.print(acp+"@"+dcp+"@"+xp); 
%>