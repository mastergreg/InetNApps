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
<title>Insert title here</title>
</head>
<body>
<%
	String dest = request.getParameter("destination");
	Cookie c1 = new Cookie("destination",dest);
	response.addCookie(c1);
	Cookie c2 = new Cookie("price",""+getPrice(dest));
	response.addCookie(c2);
	String order = request.getParameter("order");
	Cookie c3 = new Cookie("order",order);
	response.addCookie(c3);
	
%>
<table><tr><td>Κόστος:</td><td><%=getPrice(dest) %></td></tr>
<tr>
<td><form method="post" action="final.jsp"><input type="submit" value="ΟΚ!">
</form></td>
<td><form method="post" action="continent.jsp"><input type="submit" value="Άκυρο"></form></td></tr>
</table>
</body>
</html>