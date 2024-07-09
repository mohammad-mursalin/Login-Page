<%@ page import="com.AllAccounts" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.FactoryProvider" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>

    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        AllAccounts account = new AllAccounts(name, email, password);

        try{

            Session hSession = FactoryProvider.getFactory().openSession();

            Transaction tr = hSession.beginTransaction();

            hSession.save(account);

            tr.commit();

            hSession.close();

        }
        catch(Exception e) {

            e.printStackTrace();

        }
    %>
<h1> Account creation successfull for <%= name %> </h1><br> <br>

<form action="index.jsp" method="post">
            <button type="submit">Go to home page</button>
    </form>

</body>
</html>