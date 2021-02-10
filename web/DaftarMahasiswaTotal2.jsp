<%-- 
    Document   : DaftarMahasiswaTotal2
    Created on : Jan 13, 2021, 9:19:25 PM
    Author     : ASUS
--%>

<%@page language="java"%>
<%@page import="Modul13.Mahasiswa"%>
<jsp:useBean id="Mahasiswa" class="Modul13.Mahasiswa" />
<jsp:useBean id="MahasiswaHome" class="Modul13.MahasiswaHome" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Mahasiswa mhs = null;
    Mahasiswa[] daftarMahasiswa = MahasiswaHome.getDaftarMahasiswa();
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
                <td>Alamat</td>
            </tr>
            <%
                for (int i = 0; i < daftarMahasiswa.length; i++) {
                    mhs = daftarMahasiswa[i];
            %>
            <jsp:setProperty name="Mahasiswa" property="nim" value="<%=mhs.getNim()%>" />
            <jsp:setProperty name="Mahasiswa" property="jurusan" value="<%=mhs.getJurusan()%>" />
            <jsp:setProperty name="Mahasiswa" property="alamat" value="<%=mhs.getAlamat()%>" />
            <tr>
                <td><jsp:getProperty name="Mahasiswa" property="nim" /></td>
                <td><a href="DataMahasiswa.jsp?nim=<%=mhs.getNim()%>" ><%=mhs.getNama_mhs()%></a></td>
                <td><jsp:getProperty name="Mahasiswa" property="jurusan" /></td>
                <td><jsp:getProperty name="Mahasiswa" property="alamat" /></td>
                <td><a href="EditPage.jsp?nim=<%=mhs.getNim()%>">Edit</a></td>
                <td><a href="Delete.jsp?nim=<%=mhs.getNim()%>">Delete</a></td>
            </tr>
            <%}%>
        </table>
        <a href="FormTambahMahasiswa.jsp">Tambah Mahasiswa</a>
    </body>
</html>
