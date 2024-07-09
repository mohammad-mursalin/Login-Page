<%@ page import="com.AllAccounts" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.FactoryProvider" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Check Account</title>
</head>
<body>

    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        AllAccounts account = null;

        try {
            Session hSession = FactoryProvider.getFactory().openSession();
            Transaction tr = hSession.beginTransaction();

            Query q = hSession.createQuery("from AllAccounts where email = :email");
            q.setParameter("email", email);

            account = (AllAccounts) q.uniqueResult();
            tr.commit();
            hSession.close();

            if (account != null && email.equals(account.getEmail())) {
                if (password.equals(account.getPassword())) {
                    session.setAttribute("name", account.getName());
                    response.sendRedirect("welcome.jsp");
                } else {
                    response.sendRedirect("retry.jsp");
                }
            } else {
                request.setAttribute("email", email);
                RequestDispatcher rd = request.getRequestDispatcher("noAccount.jsp");
                rd.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <h1>Check Account page</h1>

</body>
</html>
