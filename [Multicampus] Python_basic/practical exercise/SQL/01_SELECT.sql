show databases;
SHOW DATABASES;
USE SAKILA;
SELECT DATABASE();
SHOW tables;
SELECT * FROM ACTOR;
SELECT NAME FROM CUSTOMER_LIST;
SELECT * FROM CUSTOMER_LIST;
SELECT NAME, CITY FROM CUSTOMER_LIST;
DESC CUSTOMER_LIST;

-- 조건 검색 : WHERE
SELECT title FROM film WHERE release_year = '2006';
SELECT title, language_id FROM film WHERE rental_duration >=6;
SELECT title, description, rating FROM film WHERE rating = 'PG';

SELECT title, rental_duration FROM film 
WHERE rental_duration >= 6 OR rental_duration <= 3;

SELECT title, rental_duration, length FROM film
WHERE (rental_duration = 3 OR rental_duration = 6) AND length >= 100;

SELECT * FROM film;
-- rental_rate 이 2 이상이거나 retan_duration 이 6 이상이고, 
-- replacement_cost 는 20 이상인 행만 읽어보세요.
SELECT * FROM film WHERE (rental_rate >= 2 OR rental_duration >= 6) 
AND replacement_cost >= 20;

--  rental_duration 이 3 이하거나 6 이상이고, 
-- rating이 PG이거나 G 인 행만 읽어보세요.
SELECT * FROM film WHERE (rental_duration <= 3 OR rental_duration >= 6)
AND (rating = 'PG' OR rating = 'G');

SELECT title, description FROM film WHERE description LIKE '%A Fanciful Documentary%';
-- 불안하면 그냥 앞뒤에 무조건 %를 넣는다.
-- 문자 1개 : _ , 문자열 : %
-- 회피용법 : 특수문자인 % _ ' 이런 녀석 자체가 포함된!을 표현하고 싶다면
-- \% \_ '' 
-- TEXT 에 it's me 라는 문구가 들어간 행만 읽어줘 
-- WHERE TEXT LIKE 'it''s me'
SELECT title, description FROM film WHERE description LIKE '%shark%';
SELECT title FROM film WHERE title LIKE '%america%';

SELECT TITLE, RENTAL_DURATION FROM FILM 
WHERE RENTAL_RATE >= 3 
ORDER BY RENTAL_DURATION DESC;
# 정렬에서 null값은 MYSQL에서는 가장 작은 값으로 취급된다.

SELECT TITLE, RENTAL_DURATION, RENTAL_RATE FROM FILM
ORDER BY RENTAL_DURATION, RENTAL_RATE;

SELECT TITLE, RENTAL_DURATION, RENTAL_RATE FROM FILM
ORDER BY  RENTAL_RATE, RENTAL_DURATION;

SELECT TITLE, RENTAL_DURATION, RENTAL_RATE FROM FILM
ORDER BY  RENTAL_RATE DESC, RENTAL_DURATION ASC;

SELECT * FROM FILM;
-- 정렬된 상태가 아니다. SELECT는 원본 데이터를 바꾸지는 않는다.

-- 원하는 행만 보기 : LIMIT
SELECT * FROM FILM 
WHERE DESCRIPTION LIKE '%A%'
ORDER BY FILM_ID
LIMIT 5
OFFSET 10;
-- YOLO -- WOLO 

# SELECT TOP 3 * FROM FILM; SQL SERVER
# SELECT * FROM FILM WHERE ROWNUM <= 3; ORACLE







