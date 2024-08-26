select distinct pizzeria.name as pizzeria_name
from person_visits
join pizzeria on pizzeria.id=person_visits.pizzeria_id
join person on person.id=person_visits.person_id
where person.name='Andrey' and pizzeria.name not in (
	select distinct pizzeria.name as pizzeria_name
	from person_order
	join person on person.id=person_order.person_id
join menu on menu.id=person_order.menu_id
join pizzeria on pizzeria.id=menu.pizzeria_id
	where person.name='Andrey'
)
order by pizzeria_name

