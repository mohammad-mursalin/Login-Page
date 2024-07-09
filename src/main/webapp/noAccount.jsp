<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>sign in failed</title>
</head>
<body>

    <h1>No Account Found</h1>
    <p>The email <strong><%= request.getAttribute("email") %></strong> does not exist in our records.</p>

    <form action="index.jsp" method="post">
            <button type="submit">Try Again</button>
    </form>

</body>
</html>