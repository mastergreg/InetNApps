<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public String[] getSuggestions(String select) {
		String eCities[] = {"Athens", "Rome"};
		String aCities[] = {"Bejing", "Amman"};
		if (select.equals("Europe")) {
			return eCities;
		} else {
			return aCities;
		}

	}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selection</title>
</head>
<body>
	<%
		
		Cookie cookies[] = request.getCookies();

		
		String re[];

		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String selection = request.getParameter("selection");
		String date = "";
		String people = "";
	
		if (name == null || surname == null || selection == null) {
			for( int i = 0 ; i < cookies.length ; ++i ) {
				if (name == null && cookies[i].getName().equals("name")) {
					name = cookies[i].getValue();
				}
				else if (surname == null && cookies[i].getName().equals("surname")) {
					surname = cookies[i].getValue();
				}
				else if (selection == null && cookies[i].getName().equals("selection")) {
					selection = cookies[i].getValue();
				}
				else if (cookies[i].getName().equals("date")) {
					date = cookies[i].getValue();
				}
				else if (cookies[i].getName().equals("people")) {
					people = cookies[i].getValue();
				}
					
			}
			
		}
		Cookie c1 = new Cookie("name",name);
		Cookie c2 = new Cookie("surname",surname);
		Cookie c3 = new Cookie("selection",selection);
		c1.setMaxAge(120);
		c2.setMaxAge(120);
		c3.setMaxAge(120);
		
		response.addCookie(c1);
		response.addCookie(c2);
		response.addCookie(c3);
		
		re = getSuggestions(selection);
	%>
	<form method="post" action="booking.jsp">
		<table>
			<tr>
				<td>Ημερομηνία:</td>
				<td><input name="date" value="<%=date %>"></td>
			</tr>
			<tr>
				<td>Άτομα:</td>
				<td><input name="people" value="<%=people %>"></td>

			</tr>
			<tr>
				<td>Προορισμός:</td>
				<td><select name="destination">
						<option selected="selected">
							<%=re[0]%></option>
						<option>
							<%=re[1]%></option>
				</select></td>
			</tr>
		</table>
		<input type="submit" value="Αποστολή">
	</form>
</body>
</html>