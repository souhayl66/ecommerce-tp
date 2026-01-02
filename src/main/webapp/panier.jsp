<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>Panier</title></head>
<body>
<h1>Votre panier</h1>

<c:if test="${empty commande.lignes}">
    <p>Panier vide</p>
</c:if>

<c:if test="${not empty commande.lignes}">
    <table border="1">
        <tr><th>Produit</th><th>Qté</th><th>Prix unitaire</th><th>Sous-total</th></tr>
        <c:forEach items="${commande.lignes}" var="l">
            <tr>
                <td>${l.produit.designation}</td>
                <td>${l.quantite}</td>
                <td>${l.prixUnitaireHT} €</td>
                <td>${l.prixUnitaireHT * l.quantite} €</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="3"><strong>Total</strong></td>
            <td><strong>${commande.totalHT} €</strong></td>
        </tr>
    </table>
    <form action="commandes" method="post">
        <input type="hidden" name="action" value="valider"/>
        <button style="background: green; color: white; padding: 10px;">Valider la commande</button>
    </form>
</c:if>

<a href="commandes?action=catalogue">Retour au catalogue</a>
</body>
</html>