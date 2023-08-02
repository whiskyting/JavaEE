<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int ROW, COL, START;

String row = request.getParameter("row");
String col = request.getParameter("col");
String start = request.getParameter("start");

try {
	ROW = Integer.parseInt(row);
	COL = Integer.parseInt(col);
	START = Integer.parseInt(start);

} catch (Exception e) {
	ROW = 2;
	COL = 2;
	START = 1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		ROW:<input type="number" name="row"> Column:<input
			type="number" name="col"> Start:<input type="number"
			name="start"> <input type="submit" value="change">

	</form>
	<table border="1" width="100%">
		<%
		for (int k = 0; k < ROW; k++) {
			out.println("<tr>");
			for (int j = START; j <= (START + COL - 1); j++) {
				int newj = j + k * COL;
				if(k%2==0){
					if (j % 2 == 0) {
						out.println("<td bgcolor = pink>");
					}else{
						out.println("<td bgcolor = yellow>");
					}
				}else{
					if (j % 2 != 0) {
						out.println("<td bgcolor = pink>");
					}else{
						out.println("<td bgcolor = yellow>");
					}
				}
				
				

				for (int i = 1; i <= 9; i++) {
					out.println(String.format("%d X %d = %d<br>", newj, i, newj * i));
				}
				out.println("</td>");

			}
			out.println("</tr>");

		}
		%>
	</table>
</body>
</html>