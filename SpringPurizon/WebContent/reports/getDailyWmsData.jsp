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
String SiteId=request.getParameter("SiteId"); 
//System.out.println("the date--->"+date);
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext()); 
WmsChartDao wcd  = (WmsChartDao)wac.getBean("WmsChartDao");
List<Object[]> result = wcd.getWmsChartData(date,SiteId);
String ifix="";
String itilt="";
String time="";
String atemp="";
String mtemp="";
String wind="";
String humidity="";
for (int i = 0; i < result.size(); i++) { 
	 ifix=ifix+result.get(i)[0]+",";
	 itilt=itilt+result.get(i)[1]+",";
	 atemp=atemp+result.get(i)[2]+",";
	 mtemp=mtemp+result.get(i)[3]+",";
	 wind=wind+result.get(i)[4]+",";
	 humidity=humidity+result.get(i)[5]+",";
	 time=time+result.get(i)[6]+"."+result.get(i)[7]+",";
}
//System.out.println("*****"+wind); 
out.print(ifix+"@"+itilt+"@"+time+"@"+atemp+"@"+mtemp+"@"+wind+"@"+humidity);

%>
