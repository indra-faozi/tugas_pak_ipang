<%@include file="koneksi.jsp"%>
<%
String submit = request.getParameter("button_submit");

if (submit == null) {
    response.sendRedirect("./");
}
String id = request.getParameter("id");
String nama = request.getParameter("nama");
String kelas = request.getParameter("kelas");
String nominal = request.getParameter("nominal");

String query = "UPDATE uang_kas SET nama=?, kelas=?, nominal=? WHERE id="+ id +"";

PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, nama);
ps.setString(2, kelas);
ps.setString(3, nominal);
ps.executeUpdate();
response.sendRedirect("./");
%>