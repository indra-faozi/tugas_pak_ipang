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
String tanggal_bayar = request.getParameter("tanggal_bayar");

String query = "UPDATE uang_kas SET nama=?, kelas=?, nominal=?, tanggal_bayar=? WHERE id="+ id +"";

PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, nama);
ps.setString(2, kelas);
ps.setString(3, nominal);
ps.setString(4, tanggal_bayar);
ps.executeUpdate();
response.sendRedirect("./");
%>