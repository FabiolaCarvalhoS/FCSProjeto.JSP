<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%--PRIMEIRA PARTE DO EXERCICIO --%>
	<h1>Primeira página JPS</h1>

	<%!boolean formatar = true;%>
	<%!String today() {
	java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
	return dt.format(new java.util.Date());
}%>

	<h1>
		A data de hoje é:
		<%=new java.util.Date()%></h1>
	<h1>
		A data de hoje é:
		<%=today()%></h1>
	<h1>
		A data de hoje é:
		<%
	if (formatar) {
		out.println(today());
	} else {
		out.println(new java.util.Date());
	}
	%>
	</h1>
	<br>

	<%--SEGUNDA PARTE DO EXERCICIO --%>
	<%!int cont = 0;%>
	<h1>
		Página foi acessada:
		<%=++cont%>
	</h1>
	<br>
	<%--ULTIMA PARTE DO EXERCICIO--%>

 <%! Calendar cal = Calendar.getInstance(); %> 
 
 <%! Integer segundos(){
 	
 	return cal.get(Calendar.SECOND); 
 }
 %>
 
 
 <h1> <%
 	if (segundos()%2 == 0){
 		out.println(" Segundo par");
 	}else{
 		out.println(" Segundo impar");
 	}
 %> </h1>

 
<h1> <%=
	segundos() 	
 %> </h1>

	}

</body>
</html>