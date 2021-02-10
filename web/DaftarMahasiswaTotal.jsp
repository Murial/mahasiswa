<%-- 
    Document   : DaftarMahasiswaTotal
    Created on : Jan 13, 2021, 6:25:51 PM
    Author     : ASUS
--%>

<%@page language="java"%>
<%@page import="Modul13.Mahasiswa" %>
<%@page import="Modul13.MahasiswaHome" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Mahasiswa mhs = null;
    Mahasiswa[] daftarMahasiswa = (new MahasiswaHome()).getDaftarMahasiswa();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daftar Mahasiswa</title>
    </head>
    <body>
        <h1>Daftar Mahasiswa</h1>
        <table border="1">
            <tr>
                <td>Nim</td>
                <td>Mahasiswa</td>
                <td>Jurusan</td>
            </tr>
            <%
                for (int i = 0; i < daftarMahasiswa.length; i++) {
                    mhs = daftarMahasiswa[i];
            %>
            <tr>
                <td><%=mhs.getNim()%></td>
                <td><a href="DataMahasiswa.jsp?nim=<%=mhs.getNim()%>" ><%=mhs.getNama_mhs()%></a></td>
                <td><%=mhs.getJurusan()%></td>
                <td><%=mhs.getAlamat()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>


