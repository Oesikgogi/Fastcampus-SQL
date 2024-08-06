DROP DATABASE IF EXISTS pokemon;

CREATE DATABASE pokemon;

USE pokemon;
CREATE TABLE mypokemon (
		number INT,
        name VARCHAR(30),
        type VARCHAR(20),
        height FLOAT,
        weight FLOAT
);

INSERT INTO mypokemon (number, name, type, height, weight)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9),
	   (25, 'pikachu', 'electric', 0.4, 6),
       (26, 'raichu', 'electric', 0.8, 30),
       (125, 'electabuzz', 'electric', 1.1, 30),
       (133, 'eevee', 'normal', 0.3, 6.5),
       (137, 'porygon', 'normal', 0.8, 36.5),
       (152, 'chikoirita', 'grass', 0.9, 6.4),
       (153, 'bayleef', 'grass', 1.2, 15.8),
       (172, 'pichu', 'electric', 0.3, 2),
       (470, 'leafeon', 'grass', 1, 25.5);


-- MISSION 1
SELECT type, AVG(weight)
FROM mypokemon
WHERE LENGTH(name) > 5
GROUP BY type
HAVING AVG(weight) >= 20
ORDER BY AVG(weight) DESC;
/* ORDER BY 2 DESC 해도 됨 */

-- MISSION 2
SELECT type, MIN(height), MAX(height)
FROM mypokemon
WHERE number < 200
GROUP BY type
HAVING MAX(weight) >= 10 and MIN(weight) >= 2
ORDER BY MIN(height) DESC, MAX(height) DESC;
/* ORDER BY 2 DESC, 3 DESC 해도 됨 */

-- MISSION 1
SELECT type, AVG(height)
FROM mypokemon
GROUP BY type;

-- MISSION 2
SELECT type, AVG(weight)
FROM mypokemon
GROUP BY type;

-- MISSION 3
SELECT type, AVG(height), AVG(weight)
FROM mypokemon
GROUP BY type;

-- MISSION 4
SELECT type
FROM mypokemon
GROUP BY type
HAVING AVG(height) >= 0.5;

-- MISSION 5
SELECT type
FROM mypokemon
GROUP BY type
HAVING AVG(weight) >= 20;

-- MISSION 6
SELECT type, SUM(number)
FROM mypokemon
GROUP BY type;

-- MISSION 7
SELECT type, COUNT(1)
FROM mypokemon
WHERE height >= 0.5
GROUP BY type;
/* COUNT(*)도 가능 */

-- MISSION 8
SELECT type, MIN(height)
FROM mypokemon
GROUP BY type;

-- MISSION 9
SELECT type, MAX(weight)
FROM mypokemon
GROUP BY type;

-- MISSION 10
SELECT type
FROM mypokemon
GROUP BY type
HAVING MIN(height) > 0.5 AND MAX(weight) < 30;