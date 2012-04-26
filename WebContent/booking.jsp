<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"	%>
<%!	public int getPrice(String select) {
    	if(select.equals("Athens")) {
    		return 500;
    	}
    	else if (select.equals("Rome")) {
    		return 600;
    	}
    	else if(select.equals("Bejing")) {
    			return 750;
    	}
    	else if(select.equals("Amman")) {
    		return 550;
    	}
    return 0;
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking</title>
</head>
<body>
<%
	String dest = request.getParameter("destination");
	String date = request.getParameter("date");
	
	String people = request.getParameter("people");

	Cookie c1 = new Cookie("destination",dest);
	Cookie c2 = new Cookie("price",""+Integer.parseInt(people)*getPrice(dest));
	Cookie c3 = new Cookie("date",date);
	Cookie c4 = new Cookie("people",people);
	
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
	
	
%>
<table><tr><td>Κόστος:</td><td><%=Integer.parseInt(people)*getPrice(dest) %></td></tr>
<tr>
<td><form method="post" action="final.jsp"><input type="submit" value="ΟΚ!">
</form></td>
<td><form method="post" action="continent.jsp"><input type="submit" value="Άκυρο"></form></td></tr>
</table>
</body>
</html>