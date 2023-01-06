<%-- 
    Document   : home
    Created on : 6 janv. 2023, 12:25:45
    Author     : dsi
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
        <button class="button-burger menu-button js-trigger-menu js-open-dialog" data-dialog="menu" aria-expanded="true">
            <svg class="icon svg-icon icon_list" aria-hidden="true" width="24" height="24" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M464 400c8.848 0 16 7.152 16 16 0 8.848-7.152 16-16 16H48c-8.848 0-16-7.152-16-16 0-8.848 7.152-16 16-16h416zm0-160c8.848 0 16 7.152 16 16 0 8.848-7.152 16-16 16H48c-8.848 0-16-7.152-16-16 0-8.848 7.152-16 16-16h416zm0-160c8.848 0 16 7.152 16 16 0 8.848-7.152 16-16 16H48c-8.848 0-16-7.152-16-16 0-8.848 7.152-16 16-16h416z" fill="#333" fill-rule="nonzero"></path></svg>					<span class="text">Menu</span>
	</button>
        <div style="margin: auto; width: 40%">
            <br><br><br>
            <div class="card p-3 z-depth-3">
                <form action="login" method="POST">
                    <div>
                        <div class="md-form">
                            <label>Login</label>
                            <input class="form-control" type="text" name="login" >
                        </div>
                        <div class="md-form">
                            <label>Password</label>
                            <input class="form-control" type="password" name="password">
                        </div>
                        <button class="btn btn-primary btn-sm btn-block" type="submit">connexion</button>
                    </div>
                    <br>
                    <button class="btn btn-primary btn-sm btn-block" type="button" onclick="window.location.href='inscription'">s'inscrire</button>
                    <p class="text-danger">${msg}</p>
                </form>    
            </div>
        </div>
    </body>
</html>
