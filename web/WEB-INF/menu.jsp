<%-- 
    Document   : menu
    Created on : 5 janv. 2023, 15:32:51
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>


    </head>
    <body >
        <div>
            <ul class="nav peach-gradient nav-fill w-100" > 
                <li class="nav-item">
                    <a style="color: white" href="home" class ="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <nav class="navbar navbar-inverse" role="navigation">
                        <div class="container">
                            <!-- container gives content bootstrap alignment -->
                            <div class="navbar-header">
                                <!-- navbar-header gives header -->
                                <!-- navbar-toggle collapsed for hide the content -->
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse" data-target="#menu">Connexion
                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="menu">
                                <!--nav navbar-nav used to sets the navigation bar size( either increase or reduce) -->
                                <ul class="nav navbar-nav">
                                    <!--stretched-link generates strechable link -->
                                    <li><a href="connexionClient" class="stretched-link">Connexion client</a></li>
                                    <li><a href="connexionConseiller" class="stretched-link">Connexion conseiller</a></li>
                                    <li><a href="connexionAdmin" class="stretched-link">Connexion admin</a></li>
                    
                                </ul>
                            </div>
                        </div>
                    </nav>
                </li>
                <li class="nav-item">
                    <a style="color: white" href="about" class ="nav-link">About</a>
                </li>
                <li class="nav-item">
                    <a style="color: white" href="deco" class ="nav-link"><i class="fas fa-power-off"></i> </a>
                </li>
            </ul>
        </div>
    </body>
</html>
