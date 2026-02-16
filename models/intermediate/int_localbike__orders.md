{% docs int_localbike__orders %}

Ce modèle fournit une vue consolidée des commandes en regroupant les informations clés liées aux clients, aux magasins et au personnel. 
Il centralise les données principales d’une commande afin de faciliter l’analyse opérationnelle et commerciale.

Il inclut les champs suivants :

order_id : Identifiant unique de la commande.
customer_id : Identifiant du client ayant passé la commande.
customer_fullname : Nom complet du client.
customer_city : Ville du client.
customer_state : État ou région du client.
order_status : Statut de la commande (par exemple : 1,2,3,4).
order_date : Date à laquelle la commande a été passée.
shipped_date : Date d’expédition de la commande.
store_id : Identifiant du magasin associé à la commande.
staff_fullname : Nom complet du membre du personnel en charge de la commande.

{% enddocs %}
