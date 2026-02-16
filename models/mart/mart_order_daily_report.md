{% docs mart_order_daily_report %}
Ce modèle fournit une vue agrégée des commandes par date, magasin et membre du personnel. 
Il permet d’analyser la performance des ventes, la productivité du personnel et l’impact des promotions sur les ventes.

Il inclut les champs suivants :

order_date : Date des commandes agrégées.
store_id : Identifiant du magasin concerné.
staff_fullname : Nom complet du membre du personnel associé aux commandes.
total_orders_item : Nombre total de commandes passées.
total_sold_items : Quantité totale d’articles vendus.
average_total_order_amount : Montant moyen par commande.
prct_products_in_discount : Pourcentage de produits vendus bénéficiant d’une remise.

{% enddocs %}
