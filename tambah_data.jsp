<%@include file="koneksi.jsp"%>
<%
String submit = request.getParameter("button_submit");

if (submit == null) {
    response.sendRedirect("./");
}
String nama = request.getParameter("nama");
String kelas = request.getParameter("kelas");
String nominal = request.getParameter("nominal");

String query = "INSERT INTO uang_kas(nama, kelas, nominal) VALUES(?,?,?)";

PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, nama);
ps.setString(2, kelas);
ps.setString(3, nominal);
ps.executeUpdate();
response.sendRedirect("./");
%>