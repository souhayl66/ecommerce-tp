<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><title>Catalogue</title></head>
<body>
<h1>Catalogue Produits</h1>
<table border="1">
    <tr><th>Référence</th><th>Désignation</th><th>Prix HT</th><th>Stock</th><th>Action</th></tr>
    <c:forEach items="${produits}" var="p">
        <tr>
            <td>${p.reference}</td>
            <td>${p.designation}</td>
            <td>${p.prixHT} €</td>
            <td>${p.stock}</td>
            <td>
                <form action="commandes" method="post">
                    <input type="hidden" name="action" value="ajouter"/>
                    <input type="hidden" name="produitId" value="${p.id}"/>
                    Quantité: <input type="number" name="quantite" value="1" min="1" max="${p.stock}"/>
                    <button>Ajouter</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="commandes?action=panier">Voir le panier</a> |
<a href="commandes?action=liste">Toutes les commandes</a>
</body>
</html>