INSERT INTO menu (id, pizza_name, price, pizzeria_id)
VALUES (
    19, 
    'greek pizza', 
    800, 
    (SELECT id FROM pizzeria WHERE name = 'Dominos')
);
