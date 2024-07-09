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
</head>
<body>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
    %>

    <iframe width="560" height="315" src="https://www.youtube.com/embed/-BxbFPrwwtg?si=-bc_AT7tzUB6Owpa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

    <form action="index.jsp" method="post">
        <button type="submit">log out</button>
    </form>
</body>
</html>
