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
        <h1>Tambah Data</h1>
        <form action="tambah_data.jsp" method="post">
            <table border="1">
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><input type="text" name="nama" autofocus required></td>
                </tr>
                <tr>
                    <td>Kelas</td>
                    <td>:</td>
                    <td>
                        <select name="kelas" required>
                            <option value="">-- KELAS --</option>
                            <option value="SI 5A">SI 1A</option>
                            <option value="SI 5A">SI 2A</option>
                            <option value="SI 5A">SI 3A</option>
                            <option value="SI 5A">SI 4A</option>
                            <option value="SI 5A">SI 5A</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Nominal</td>
                    <td>:</td>
                    <td><input type="number" min="1" name="nominal" required></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button_submit" value="Simpan"></td>
                </tr>
            </table>
        </form>
        <a href="./">Kembali</a>
    </center>

</body>

</html>