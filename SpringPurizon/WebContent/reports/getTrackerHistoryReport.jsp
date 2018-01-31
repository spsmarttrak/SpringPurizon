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
<%
String SiteId=request.getParameter("SiteId");  
String indate1=request.getParameter("indate1");
String indate2=request.getParameter("indate2");
//System.out.println("----"+indate1+indate2);
 WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
 TrackerReports  trdao = (TrackerReports)wac.getBean("trackerreportsdao");
List<Object[]> result=trdao.gettackerreports(indate1, indate2, SiteId);
//System.out.println(result);
SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
%>

  <div class="box-content">
<table class="table table-advance table-hover" cellspacing="0" id="table3">
 <thead>
  <tr>
    <th>TrackerID</th>
	<th>Sun Angle</th>   
	<th>Tracker Angle</th>  
	<th>Set Angle</th>
	<th>TimeStamp</th> 
  </tr>
</thead>
<tbody>
 <%
 for(int i=0;i<result.size();i++){ 
	 %>
	 <tr>
	 <td><%=result.get(i)[0]%></td> 
	 <td><%=result.get(i)[3]  %></td>
	 <td><%=result.get(i)[4]  %></td>
	 <td><%=result.get(i)[5]  %></td>
	 <td><%=result.get(i)[1]  %><%=result.get(i)[2]  %></td>  
	 </tr>
 <%}
 %>  
  </tbody>
 </table> 
</div>