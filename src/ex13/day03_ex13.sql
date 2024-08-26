DELETE FROM person_order
WHERE menu_id IN (
    SELECT id
    FROM menu
    WHERE pizza_name = 'greek pizza'
)
AND order_date = '2022-02-25'::date;

DELETE FROM menu
WHERE pizza_name = 'greek pizza';
