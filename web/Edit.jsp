<%-- 
    Document   : Update
    Created on : Jan 14, 2021, 5:58:00 AM
    Author     : ASUS
--%>

<%@page import="Modul13.MahasiswaHome" %>
<jsp:useBean id="m" class="Modul13.Mahasiswa"/>
<jsp:setProperty name="m" property="*" />

<%
    int i = MahasiswaHome.update(m);
    response.sendRedirect("DaftarMahasiswaTotal2.jsp");
%>

