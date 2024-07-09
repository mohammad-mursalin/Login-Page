<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">

    <!-- JavaScript to prevent back button after logout -->
    <script type="text/javascript">
        if (window.history && window.history.pushState) {
            window.history.pushState('forward', null, './#forward');
            window.onpopstate = function() {
                window.history.pushState('forward', null, './#forward');
                window.location.href = 'login.jsp'; // Replace with your login page
            };
        }
    </script>

    <title>Welcome page</title>
</head>
<body>

    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");

        String name = (String)session.getAttribute("name");

        if(name==null) {

            response.sendRedirect("index.jsp");
        }
    %>
    <h1> Sign in succesfull for <%= name %></h1><br>

    <a href="videos.jsp">Go to Videos</a><br><br>

    <form action="index.jsp" method="post">
            <button type="submit">log out</button>
    </form>

</body>
</html>