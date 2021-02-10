<%-- 
    Document   : edit
    Created on : Jan 14, 2021, 5:32:11 AM
    Author     : ASUS
--%>

<%@page import="Modul13.Mahasiswa"%>
<jsp:useBean id="Mahasiswa" class="Modul13.Mahasiswa" />
<jsp:useBean id="MahasiswaHome" class="Modul13.MahasiswaHome" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <h1>Edit Data</h1>
        
        <%
            String nim = request.getParameter("nim");
            Mahasiswa m = MahasiswaHome.getDataMahasiswabyNim(nim);
        %>
        
        <form action="Edit.jsp" method="POST">
            <input type="hidden" name="nim" value="<%=m.getNim()%>"/>
            <table>
                <tr>
                    <td>Nama : </td> <td><input type="text" name="nama_mhs" value="<%=m.getNama_mhs()%>"></td>
                </tr>
                <tr>
                    <td>Jurusan : </td> <td><input type="text" name="jurusan" value="<%=m.getJurusan()%>"></td>
                </tr>
                <tr>
                    <td>Alamat : </td> <td><input type="text" name="alamat" value="<%=m.getAlamat()%>"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Simpan"/></td>
                    <td><a href="DaftarMahasiswaTotal2.jsp">Daftar Mahasiswa</a></td>
                </tr>

            </table>
        </form>

    </body>
</html>
