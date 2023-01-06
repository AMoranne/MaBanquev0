<%-- 
    Document   : connexion
    Created on : 6 janv. 2023, 13:56:59
    Author     : 33624
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>




    </head>
    <body>

        <%@include file="menu.jsp" %>

        <!-- Default form login -->
        <form class="text-center border border-light p-5" action="home" method="post">

            <p class="h4 mb-4">Sign in</p>

            <!-- Email -->
            <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="E-mail">

            <!-- Password -->
            <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">

            <div class="d-flex justify-content-around">
                <div>
                    <!-- Remember me -->
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                        <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                    </div>
                </div>
                <div>
                    <!-- Forgot password -->
                    <a href="">Forgot password?</a>
                </div>
            </div>

            <!-- Sign in button -->
            <button class="btn btn-info btn-block my-4" type="submit">Sign in</button>

            <!-- Register -->
            <p>Not a member?
                <a href="register">Register</a>
            </p>

            <!-- Social login -->
            <p>or sign in with:</p>

            <a href="#" class="mx-2" role="button"><i class="fab fa-facebook-f light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-twitter light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-linkedin-in light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-github light-blue-text"></i></a>

        </form>
        <!-- Default form login -->
    </body>
</html>
