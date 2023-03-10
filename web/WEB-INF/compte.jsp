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
// R?cup?ration de la liste des comptes de l'utilisateur courant
List<Compte> comptes = new ArrayList<Compte>();

// Ajout de quelques comptes de test ? la liste
comptes.add(new Compte(123456, "Compte courant", 1500));
comptes.add(new Compte(789101, "Compte ?pargne", 20000));
%>

<table>
  <tr>
    <th>Num?ro de compte</th>
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

