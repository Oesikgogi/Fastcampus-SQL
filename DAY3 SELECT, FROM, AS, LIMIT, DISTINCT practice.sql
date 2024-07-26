/* 기존에 만들었던 데이터베이스가 남아있으니까 지워주기 */
Drop DATABASE IF EXISTS Pokemon;

CREATE DATABASE Pokemon;
USE Pokemon;

CREATE TABLE mypokemon (
			number INT,
            name VARCHAR(20),
            type VARCHAR(10),
            height FLOAT,
            weight FLOAT,
            attack INT,
            defense INT,
            speed INT
);

INSERT INTO mypokemon (number, name, type, height, weight, attack, defense, speed)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9, 30, 35, 45),
	   (25, 'pikachu', 'electric', 0.4, 6, 55, 40, 90),
       (26, 'raichu', 'electric', 0.8, 30, 90, 55, 110),
       (133, 'eevee', 'normal', 0.3, 6.5, 55, 50, 55),
       (152, 'chikorita', 'grass', 0.9, 6.4, 49, 65, 45);

-- MISSION 1
SELECT 123 * 456;     /* 뒤에 꼭 (;)을 붙여서 쿼리 끝임을 나타내기*/

-- MISSION 2
SELECT 2310 / 30;

-- MISSION 3
SELECT "피카츄" AS '포켓몬';

-- MISSION 4
SELECT * FROM pokemon.mypokemon;

-- MISSION 5
SELECT name FROM pokemon.mypokemon;

-- MISSION 6
SELECT name, height, weight FROM pokemon.mypokemon;

-- MISSION 7
SELECT DISTINCT height FROM pokemon.mypokemon;

-- MISSION 8
SELECT name, attack*2 AS 'attack2' FROM pokemon.mypokemon;

/* 여기부터 USE 사용 */
USE pokemon;

-- MISSION 9
SELECT name AS '이름' FROM mypokemon;

-- MISSION 10 @@@@@
SELECT attack AS '공격력', defense AS '방어력' FROM mypokemon;

-- MISSION 11
SELECT height*100 AS 'height(cm)' FROM mypokemon;
/* FLOAT 데이터 타입은 입력 값의 근사치를 저장하기 때문에, 소수점이 나오는 게 정상 */

-- MISSION 12
SELECT * FROM mypokemon LIMIT 1;

-- MISSION 13
SELECT name AS '영문명',
       height AS '키(m)',
       weight AS '몸무게(kg)'
FROM mypokemon LIMIT 2;

-- MISSION 14
SELECT name,
       attack + defense + speed AS 'total'
FROM mypokemon;

-- MISSION 15
SELECT name,
	   weight / height^2 AS 'BMI'
FROM mypokemon;