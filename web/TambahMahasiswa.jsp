<%-- 
    Document   : TambahMahasiswa
    Created on : Jan 14, 2021, 12:43:55 AM
    Author     : ASUS
--%>

<%@page import="Modul13.MahasiswaHome" %>
<jsp:useBean id="m" class="Modul13.Mahasiswa"/>
<jsp:setProperty name="m" property="*" />

<%
    int i = MahasiswaHome.save(m);
    System.out.println(i);
    
    if (i > 0) {
            response.sendRedirect("Success.jsp");
        } else {
        response.sendRedirect("Failed.jsp");
    }
%>
