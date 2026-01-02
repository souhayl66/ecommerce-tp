<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>Commandes</title></head>
<body>
<h1>Toutes les commandes</h1>
<table border="1">
    <tr><th>ID</th><th>Date</th><th>Client</th><th>Statut</th><th>Total</th></tr>
    <c:forEach items="${commandes}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.dateCommande}</td>
            <td>${c.client.nom} ${c.client.prenom}</td>
            <td>${c.statut}</td>
            <td>${c.totalHT} €</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>