<%-- 
    Document   : Delete
    Created on : Jan 14, 2021, 6:05:17 AM
    Author     : ASUS
--%>

<%@page import="Modul13.MahasiswaHome" %>
<jsp:useBean id="m" class="Modul13.Mahasiswa"/>
<jsp:setProperty name="m" property="*" />

<%
    int i = MahasiswaHome.delete(m);
    response.sendRedirect("DaftarMahasiswaTotal2.jsp");
%>
