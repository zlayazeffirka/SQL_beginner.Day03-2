(select distinct pizzeria.name as pizzeria_name
	from pizzeria
	join menu on menu.pizzeria_id=pizzeria.id
	join person_order on person_order.menu_id=menu.id
	join person on person.id=person_order.person_id
	where person.gender='female' and pizzeria.name not in (select distinct pizzeria.name as pizzeria_name
	from pizzeria
	join menu on menu.pizzeria_id=pizzeria.id
	join person_order on person_order.menu_id=menu.id
	join person on person.id=person_order.person_id
	where person.gender='male'
	order by pizzeria_name)
	order by pizzeria_name)
union (select distinct pizzeria.name as pizzeria_name
	from pizzeria
	join menu on menu.pizzeria_id=pizzeria.id
	join person_order on person_order.menu_id=menu.id
	join person on person.id=person_order.person_id
	where person.gender='male' and pizzeria.name not in (select distinct pizzeria.name as pizzeria_name
	from pizzeria
	join menu on menu.pizzeria_id=pizzeria.id
	join person_order on person_order.menu_id=menu.id
	join person on person.id=person_order.person_id
	where person.gender='female'
	order by pizzeria_name)
	order by pizzeria_name)
