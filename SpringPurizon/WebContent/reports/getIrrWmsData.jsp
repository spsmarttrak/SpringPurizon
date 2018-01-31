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

//System.out.println("the date"+date);
 WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());

WmsIrrChartDao wicd  = (WmsIrrChartDao)wac.getBean("wmsirrchartDao");

List<Object[]> result = wicd.getWmsirrChartData(date,SiteId);

String ifix="";String itilt="";String time="";
for (int i = 0; i < result.size(); i++) { 
	 time=time+result.get(i)[0]+",";;
	 ifix=ifix+result.get(i)[1]+",";  
	 itilt=itilt+result.get(i)[2]+",";
	 
}
// System.out.println("*****"+time); 
out.print(ifix+"@"+itilt+"@"+time);

%>
