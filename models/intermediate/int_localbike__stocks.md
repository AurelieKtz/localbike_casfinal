{% docs int_localbike__stocks %}

Ce modèle fournit une vue détaillée des stocks par magasin et par produit. Il permet de suivre précisément les niveaux d’inventaire et d’analyser la disponibilité des produits au sein de chaque point de vente.

Il inclut les champs suivants :

stock_id : Identifiant unique du stock (clé primaire du modèle).
store_id : Identifiant du magasin dans lequel le stock est enregistré.
product_id : Identifiant du produit concerné.
product_name : Nom du produit.
stock_quantity : Quantité disponible en stock pour le produit dans le magasin.

{% enddocs %}
