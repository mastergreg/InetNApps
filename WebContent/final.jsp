<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Finalizing</title>
</head>
<body>

	<%
		Cookie cookies[] = request.getCookies();
		String name, surname, selection, destination, price, order;
		name = "";
		surname = "";
		selection = "";
		destination = "";
		price = "";
		order = "";

		for (int i = 0; i < cookies.length; ++i) {
			if (cookies[i].getName().equals("name")) {
				name = cookies[i].getValue();
			} else if (cookies[i].getName().equals("surname")) {
				surname = cookies[i].getValue();
			} else if (cookies[i].getName().equals("selection")) {
				selection = cookies[i].getValue();
			} else if (cookies[i].getName().equals("destination")) {
				destination = cookies[i].getValue();
			} else if (cookies[i].getName().equals("price")) {
				price = cookies[i].getValue();
			} else if (cookies[i].getName().equals("order")) {
				order = cookies[i].getValue();
			}
		}
	%>
	<table>
		<tr>

			<td>Όνομα:</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>Επώνυμο:</td>
			<td><%=surname%></td>
		</tr>

		<tr>
			<td>Επιλογή:</td>
			<td><%=selection%></td>
		</tr>
		<tr>
			<td>Προορισμός:</td>
			<td><%=destination%></td>
		</tr>
		<tr>
			<td>Παραγγελία:</td>
			<td><%=order%></td>
		</tr>

	</table>

</body>
</html>