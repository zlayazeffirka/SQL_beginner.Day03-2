select menu.pizza_name as pizza_name,
	   menu.price as price,
	   pizzeria.name as pizzeria_name
from menu
join pizzeria on pizzeria.id=menu.pizzeria_id
where menu.id not in(select menu_id from person_order)
order by pizza_name, price
