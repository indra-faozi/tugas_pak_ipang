<%@include file="koneksi.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data</title>
</head>

<body>
    <center>
        <h1>Ubah Data</h1>
        <form action="ubah.jsp" method="post">
            <%
            String id = request.getParameter("id"); 
            rs = st.executeQuery("SELECT * FROM uang_kas WHERE id ="+ id +"");
            while(rs.next()){
            %>
            <input type="hidden" name="id" value="<%= rs.getString("id")%>">
            <table border="1">
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><input type="text" name="nama" value="<%= rs.getString("nama")%>" autofocus required></td>
                </tr>
                <tr>
                    <td>Kelas</td>
                    <td>:</td>
                    <td>
                        <select name="kelas" required>
                            <option value="">-- KELAS --</option>
                            <option value="SI 1A">SI 1A</option>
                            <option value="SI 2A">SI 2A</option>
                            <option value="SI 3A">SI 3A</option>
                            <option value="SI 4A">SI 4A</option>
                            <option value="SI 5A">SI 5A</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Nominal</td>
                    <td>:</td>
                    <td><input type="number" min="1" name="nominal" value="<%= rs.getString("nominal")%>" required></td>
                </tr>
                <tr>
                    <td>Tanggal_bayar</td>
                    <td>:</td>
                    <td><input type="date" value="<%= rs.getString("tanggal_bayar")%>" name="tanggal_bayar" required>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button_submit" value="Ubah"></td>
                </tr>
            </table>
            <% }%>
        </form>
        <a href="./">Kembali</a>
    </center>

</body>

</html>