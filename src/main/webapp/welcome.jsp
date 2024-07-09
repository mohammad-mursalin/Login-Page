<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>

    <%
        String name = (String)session.getAttribute("name");

        if(name==null) {

            response.sendRedirect("index.jsp");
        }
    %>
    <h1> Sign in succesfull for <%= name %></h1>

    <form action="index.jsp" method="get">
            <button type="submit">log out</button>
    </form>

</body>
</html>