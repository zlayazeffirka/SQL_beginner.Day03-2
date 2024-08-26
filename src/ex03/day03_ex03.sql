with female_or_male(pizzeria_id, male_visits, female_visits) as 
	(SELECT
		pv.pizzeria_id as pizzeria_id,
		SUM(CASE WHEN p.gender = 'male' THEN 1 ELSE 0 END) AS male_visits,
		SUM(CASE WHEN p.gender = 'female' THEN 1 ELSE 0 END) AS female_visits
	FROM
		person_visits pv
	JOIN
		person p ON pv.person_id = p.id
	GROUP BY
		pv.pizzeria_id
	)

select pizzeria.name as pizzeria_name
from  female_or_male
join pizzeria on pizzeria.id=female_or_male.pizzeria_id
where male_visits>female_visits or male_visits<female_visits
order by pizzeria_name