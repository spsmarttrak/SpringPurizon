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
//System.out.println("in jsp");
String smbid=request.getParameter("smbid");  
WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
ScbGuasesDao sdao =(ScbGuasesDao)wac.getBean("scbGuasesDao");
 List<Object[]> result=sdao.getscbParamData(smbid);
//System.out.println("scb size"+result.size());

String pow=""; 
String cur="";
String volt="";

for (int i = 0; i < result.size(); i++) {  
	//dates="String1,String2,String3,String4,String5,String6,String7,String8,String9,String10,String11,String12,String13,String14,String15,String16,String17,String18,String19,String20,String21,String22,String23,String24";
	/* dates=dates+Double.parseDouble(result.get(i)[24]+"."+result.get(i)[25])+","; */
	//values=values+result.get(i)[0]+","+result.get(i)[1]+","+result.get(i)[2]+","+result.get(i)[3]+","+result.get(i)[4]+","+result.get(i)[5]+","+result.get(i)[6]+","+result.get(i)[7]+","+result.get(i)[8]+","+result.get(i)[9]+","+result.get(i)[10]+","+result.get(i)[11]+","+result.get(i)[12]+","+result.get(i)[13]+","+result.get(i)[14]+","+result.get(i)[15]+","+result.get(i)[16]+","+result.get(i)[17]+","+result.get(i)[18]+","+result.get(i)[19]+","+result.get(i)[20]+","+result.get(i)[21]+","+result.get(i)[22]+","+result.get(i)[23];
	volt=volt+result.get(i)[0]+","; 
	cur=cur+result.get(i)[1]+","; 
	pow=pow+result.get(i)[2]+",";
	
}    
   /*  System.out.println("Voltage----->"+volt);  
    System.out.println("Voltage----->"+cur);  
    System.out.println("Voltage----->"+pow);   */
   // System.out.println("y-axis----->"+s1);    
out.print(volt+"@"+cur+"@"+pow); 
%>