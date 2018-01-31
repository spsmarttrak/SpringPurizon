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
String SMBID=request.getParameter("SMBID");  
String date=request.getParameter("date"); 
//System.out.println("-----"+date+SMBID);
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
ScbPieDao tdao =(ScbPieDao)wac.getBean("scbDao");
List<Object[]> result=tdao.getscbstringData(SMBID,date);  
//System.out.println("scb size"+result.size());

String dates=""; 
String s1="";
String s2="";
String s3="";
String s4="";
String s5="";
String s6="";
String s7="";
String s8=""; 
String s9="";
String s10="";
String s11="";
String s12="";
String s13="";
String s14="";
String s15="";
String s16="";
String s17="";
String s18=""; 
String s19="";
String s20="";
String s21="";
String s22="";
String s23="";
String s24="";
for (int i = 0; i < result.size(); i++) {   
	dates=dates+Double.parseDouble(result.get(i)[24]+"."+result.get(i)[25])+","; 
	s1=s1+result.get(i)[0]+","; 
	s2=s2+result.get(i)[1]+","; 
	s3=s3+result.get(i)[2]+",";
	s4=s4+result.get(i)[3]+",";
	s5=s5+result.get(i)[4]+","; 
	s6=s6+result.get(i)[5]+","; 
	s7=s7+result.get(i)[6]+",";
	s8=s8+result.get(i)[7]+","; 
	s9=s9+result.get(i)[8]+","; 
	s10=s10+result.get(i)[9]+","; 
	s11=s11+result.get(i)[10]+","; 
	s12=s12+result.get(i)[11]+","; 
	s13=s13+result.get(i)[12]+",";
	s14=s14+result.get(i)[13]+",";
	s15=s15+result.get(i)[14]+","; 
	s16=s16+result.get(i)[15]+",";
	s17=s17+result.get(i)[16]+",";
	s18=s18+result.get(i)[17]+","; 
	s19=s19+result.get(i)[18]+","; 
	s20=s20+result.get(i)[19]+","; 
	s21=s21+result.get(i)[20]+","; 
	s22=s22+result.get(i)[21]+","; 
	s23=s23+result.get(i)[22]+",";
	s24=s24+result.get(i)[23]+",";
}    
    //System.out.println("x-axis----->"+dates);  
   // System.out.println("y-axis----->"+s1);    
out.print(dates+"@"+s1+"@"+s2+"@"+s3+"@"+s4+"@"+s5+"@"+s6+"@"+s7+"@"+s8+"@"+s9+"@"+s10+"@"+s11+"@"+s12+"@"+s13+"@"+s14+"@"+s15+"@"+s16+"@"+s17+"@"+s18+"@"+s19+"@"+s20+"@"+s21+"@"+s22+"@"+s23+"@"+s24); 
%>