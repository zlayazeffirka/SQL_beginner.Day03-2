select menu.pizza_name as pizza_name,
	   menu.price as price,
	   pizzeria.name as pizzeria_name,
	   person_visits.visit_date as visit_date
from person_visits
join menu on menu.pizzeria_id=person_visits.pizzeria_id
join person on person.id=person_visits.person_id
join pizzeria on pizzeria.id=menu.pizzeria_id
where person.name='Kate' and price between 800 and 1000
order by pizza_name, price, pizzeria_name;
