<%-- 
    Document   : DataMahasiswa
    Created on : Jan 13, 2021, 8:35:47 PM
    Author     : ASUS
--%>

<%@page language="java"%>
<jsp:useBean id="Mahasiswa" class="Modul13.Mahasiswa" />
<jsp:useBean id="MahasiswaHome" class="Modul13.MahasiswaHome" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String NimMhs = request.getParameter("nim");
    if (NimMhs != null) {
            Mahasiswa = MahasiswaHome.getDataMahasiswabyNim(NimMhs);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Mahasiswa</title>
    </head>
    <body>
        <h1>Daftar Mahasiswa</h1>
        <table>
                <tr>
                    <td>Nim</td><td> : </td>
                    <td><%=Mahasiswa.getNim()%></td>
                </tr>
                <tr>
                    <td>Nama</td><td> : </td>
                    <td><%=Mahasiswa.getNama_mhs()%></td>
                </tr>
                <tr>
                    <td>Jurusan</td><td> : </td>
                    <td><%=Mahasiswa.getJurusan()%></td>
                </tr>
                <tr>
                    <td>Alamat</td><td> : </td>
                    <td><%=Mahasiswa.getAlamat()%></td>
                </tr>
        </table>
    </body>
</html>
