-- 데이터베이스, 테이블 생성

CREATE DATABASE Pokemon;

-- USE 사용
USE Pokemon;

CREATE TABLE mypokemon (
			number INT,
            name VARCHAR(20), 
            type VARCHAR(10)
            );


INSERT INTO mypokemon (number, name, type)
VALUES (10, 'caterpie', 'bug'),
	   (25, 'pikachu', 'electric'),
       (133, 'eevee', 'normal');

SELECT * FROM mypokemon;

-- USE 사용 X
/* USE를 사용하지 않으면 테이블을 쓸 때마다 앞에 데이터베이스를 입력해줘야함
[데이터베이스명].[테이블명] 그러니 데이터베이스를 USE를 사용하는게 더 좋음 */

CREATE TABLE pokemon.mynewpokemon (
			number INT,
			name VARCHAR(20),
			type VARCHAR(10)
            );

INSERT INTO pokemon.mynewpokemon (number, name, type)
VALUES (77, '포니타', '불꽃'),
	   (132, '메타몽', '노말'),
       (151, '뮤', '에스퍼');

SELECT * FROM mynewpokemon;

-- 테이블 변경
ALTER TABLE mypokemon RENAME myoldpokemon;

ALTER TABLE myoldpokemon CHANGE COLUMN name eng_name VARCHAR(20);
ALTER TABLE mynewpokemon CHANGE COLUMN name kor_name VARCHAR(20);

SELECT * FROM myoldpokemon;
SELECT * FROM mynewpokemon;

-- 테이블 삭제
TRUNCATE TABLE myoldpokemon;
SELECT * FROM myoldpokemon;

DROP TABLE mynewpokemon;