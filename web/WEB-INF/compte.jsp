<%@page import="fr.solutec.model.Compte"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mes comptes</title>
</head>
<body>
    <%@include file="menu.jsp" %>

<h1>Mes comptes</h1>

<%
// Récupération de la liste des comptes de l'utilisateur courant
List<Compte> comptes = new ArrayList<Compte>();

// Ajout de quelques comptes de test à la liste
comptes.add(new Compte(123456, "Compte courant", 1500));
comptes.add(new Compte(789101, "Compte épargne", 20000));
%>

<table>
  <tr>
    <th>Numéro de compte</th>
    <th>Type de compte</th>
    <th>Solde</th>
  </tr>
  <%
  for (Compte compte : comptes) {
  %>
  <tr>
    <td><%= compte.getId_compte() %></td>
    <td><%= compte.getType_compte() %></td>
    <td><%= compte.getSolde() %></td>
  </tr>
  <%
  }
  %>
</table>

</body>
</html>

