{% docs int_localbike__order_item %}
Ce modèle fournit une vue détaillée des lignes de commande en centralisant les informations relatives aux produits, aux quantités, aux prix et aux remises appliquées. 
Il permet d’analyser précisément la composition et la valeur financière de chaque commande.

Il inclut les champs suivants :

order_id : Identifiant de la commande associée.
item_id : Identifiant de l’article au sein de la commande.
order_item_id : Identifiant unique de la ligne de commande.
product_id : Identifiant du produit concerné.
item_quantity : Quantité commandée pour le produit.
price_quantity : Prix commandée pour le produit.
discount : Montant ou taux de remise appliqué à la ligne de commande.
total_order_item_amount_discount : Montant total des lignes de commande après application des remises (agrégé par somme).
total_order_item_amount_no_discount : Montant total des lignes de commande avant application des remises (agrégé par somme).

Les montants total_order_item_amount_discount et total_order_item_amount_no_discount sont calculés à partir de l’agrégation des lignes de commande, permettant d’évaluer l’impact global des remises sur chaque commande.

{% enddocs %}
