<%@include file="koneksi.jsp"%>

<%
String a = request.getParameter("id");
st.executeUpdate("DELETE FROM uang_kas WHERE id =" + a);
response.sendRedirect("./");

%>