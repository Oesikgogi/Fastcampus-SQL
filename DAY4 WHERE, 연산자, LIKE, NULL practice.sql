DROP DATABASE IF EXISTS Pokemon;

CREATE DATABASE pokemon;
USE pokemon;

CREATE TABLE mypokemon(
			number INT,
            name VARCHAR(20),
            type VARCHAR(10),
            height FLOAT,
            weight FLOAT,
            attack FLOAT,
            defense FLOAT,
            speed FLOAT
);

INSERT INTO mypokemon(number, name, type, height, weight, attack, defense, speed)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9, 30, 35, 45),
	   (25, 'pikachu', 'electric', 0.4, 6, 55, 40, 90),
       (26, 'raichu', 'electric', 0.8, 30, 90, 55, 110),
       (133, 'eevee', 'normal', 0.3, 6.5, 55, 50, 55),
       (152, 'chikorita', 'grass', 0.9, 6.4, 49, 65, 45);

-- MISSION 1
SELECT name, type
FROM mypokemon
WHERE name = 'eevee';

-- MISSION 2
SELECT name, attack, defense
FROM mypokemon
WHERE name = 'caterpie';

-- MISSION 3
SELECT *
FROM mypokemon
WHERE Weight > 6;

-- MISSION 4
SELECT name
FROM mypokemon
WHERE height > 0.5 AND weight >= 6;

-- MISSION 5
SELECT name AS 'weak_pokemon'
FROM mypokemon
WHERE attack < 50 OR defense < 50;

-- MISSION 6  @@@@
SELECT *
FROM mypokemon
WHERE NOT(type = 'normal'); 	/* WHERE type != 'normal' 과 동일 */

-- MISSION 7
SELECT NAME, type
FROM mypokemon
WHERE TYPE IN('noRMAl', 'firE', 'watEr', 'graSs');

-- MISSION 8
SELECT NAME, attack
FROM mypokemon
WHERE ATTACk BETWEEN 40 AND 60;		/* WHERE attack >= 40 AND attack <= 60 */

-- MISSION 9
SELECT name
FROM mypokemon
WHERE name LIKE '%E%';

-- MISSION 10
SELECT *
FROM mypokemon
WHERE name LIKE '%I%' AND speed <= 50;

-- MISSION 11
SELECT name, height, weight
FROM mypokemon
WHERE name LIKE '%CHU';

-- MISSION 12
SELECT name, defense
FROM mypokemon
WHERE name LIKE '%E' AND defense < 50;

-- MISSION 13  @@@@@@ (^2 >= 100 사용하니까 이상하게 나온다???;;;)
SELECT name, attack, defense
FROM mypokemon
WHERE (attack - defense) >= 10 OR (defense - attack) >= 10;

-- MISSION 14
SELECT name, attack + defense + speed AS 'total'
FROM mypokemon
WHERE (attack + defense + speed) >= 150;