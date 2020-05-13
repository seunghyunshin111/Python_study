
SHOW TABLES;
SELECT * FROM FILM;

# + - * /
SELECT RENTAL_RATE * REPLACEMENT_COST AS AMOUNT FROM FILM;

SELECT CONCAT(TITLE, ' - ', DESCRIPTION) AS SUMNAIL FROM FILM;

SELECT * FROM FILM;
SELECT REPLACEMENT_COST FROM FILM;
SELECT ROUND(REPLACEMENT_COST) FROM FILM; # DEFALT = 0
SELECT ROUND(REPLACEMENT_COST, 1) FROM FILM;
SELECT ROUND(REPLACEMENT_COST, 0) FROM FILM;
SELECT ROUND(REPLACEMENT_COST, -1) FROM FILM; # 10의자리

SELECT floor(REPLACEMENT_COST) FROM FILM;
SELECT CEIL(REPLACEMENT_COST) FROM FILM;

# 연산 
SELECT 1 + 3;
SELECT 1 + 3 AS ADD_;
SELECT 1 - 3 AS SUB_;
SELECT 1 * 3 AS MUL_;
SELECT 1 / 3 AS DIV_;
SELECT 1 % 3 AS REM_;

-- WHERE 구에서 컬럼은 연산으로 안건드리는게 좋다.
-- SELECT TITLE, RENTAL_RATE FROM FILM WHERE RENTAL_RATE * 10 > 25;
SELECT TITLE, RENTAL_RATE FROM FILM WHERE RENTAL_RATE > 25 / 10;

-- NULL이랑 계산하면 다 NULL이다
SELECT NULL + 1;
SELECT NULL - 1;
SELECT NULL * 1;
SELECT NULL / 1;

-- 일부 문자열(타겟 열, 시작점, 갯수)
SELECT substring(TITLE, 1, 5) FROM FILM;

-- 파이썬에서 STRIP기능
SELECT * FROM FILM;
SELECT TRIM(TITLE) FROM FILM;

SELECT substring_index(TITLE, ' ', 1) FROM FILM;
SELECT DESCRIPTION FROM FILM;
SELECT substring_index(DESCRIPTION, ' ', 3) FROM FILM;

SELECT REPLACE(TITLE, ' ', '-') FROM FILM;

SELECT REPLACE('ABC             ABC', ' ', '');

-- 'ABC ABC         ' -> 'ABC ABC'
SELECT TRIM('ABC ABC         ');
-- 'ABC     ABC      ' -> 'ABCABC'
SELECT REPLACE('ABC     ABC      ', ' ', '');

-- FILM 에서 
-- RENTAL_RATE 과 REPLACEMENT_COST를 곱한 값을 
-- 기준으로 내림차순으로 정렬하는데,
-- TITLE의 앞 3글자만을 가진 새로운 열 SUBTITLE을 
-- 읽어보세요.
SELECT 
    SUBSTRING(TITLE, 1, 3) AS SUBTITLE,
    RENTAL_RATE * REPLACEMENT_COST
FROM
    FILM
ORDER BY RENTAL_RATE * REPLACEMENT_COST DESC;

-- TITLE을 기준으로 정렬하는데, 
-- RENTAL_RATE을 소수점 첫째자리에서 올림을 해서 
-- RR_CEIL이라는 이름으로 지정해서 읽어보세요.
SELECT 
    CEIL(RENTAL_RATE) AS RR_CEIL
FROM
    FILM
ORDER BY TITLE;

# 문자열의 길이 계산 = CHAR_LENGTH
SELECT CHAR_LENGTH(DESCRIPTION) FROM FILM;
# 문자열의 바이트 단위의 길이 계산 = OCTET_LENGTH
SELECT OCTET_LENGTH(DESCRIPTION) FROM FILM;

SELECT char_length('ABC');
SELECT char_length('가나다');
SELECT octet_length('ABC'); # 3바이트
SELECT octet_length('가나다'); # 왜 9바이트..  
#알파벳 : 한글자 1바이트(반각문자) / 한글 : 한글자 3바이트(전각문자)
# 전각문자 - euc-kr 인코딩 : 2바이트 / utf-8 인코딩 : 3바이트


# SELECT TOP 3 * FROM FILM; SQL SERVER
# SELECT * FROM FILM WHERE ROWNUM <= 3; ORACLE

SELECT substring(TITLE, 1, 3) AS SUBTITLE
FROM FILM
ORDER BY (RENTAL_RATE*REPLACEMENT_COST);

SELECT current_time(); 
SELECT current_timestamp();


SELECT current_date() + INTERVAL 1 DAY; -- 내일 
SELECT current_time() + INTERVAL 3 hour; -- 퇴근시간

SELECT DAYOFWEEK(current_timestamp()); # 요일 1(일) 2 3 4 5 6 7
SELECT WEEKDAY(current_timestamp()); # 요일 0(월) 1 2 3 4 5 6

SELECT dayofmonth(current_timestamp()); # 이번달의 며칠 째
SELECT dayofyear(current_timestamp()); # 올해의 며칠 째

select date(current_timestamp());
select month(current_timestamp());
select year(current_timestamp());

select hour(current_timestamp());
select minute(current_timestamp());
select second(current_timestamp());

select dayname(current_timestamp());
select monthname(current_timestamp());

select quarter(current_timestamp());
select week(current_timestamp());

select date_add(current_timestamp(), interval 1 year);
select date_add(current_timestamp(), interval 1 month);
select date_add(current_timestamp(), interval 10000 second);

# 두 날짜간의 뺄셈
select datediff('2020-6-12', '2017-12-25');

# 형식 지정 날짜
select date_format('2020-6-12 14:59:50', '%D %M %Y %h %i %s %T %j');

# 지금
select now();

SELECT LAST_UPDATE FROM FILM;
SELECT DATE_FORMAT(LAST_UPDATE, '%M %D') FROM FILM;

# 데이터 변환 
SELECT * FROM CUSTOMER_LIST;
SHOW TABLES;
SELECT 
    COUNTRY,
    CASE
        WHEN COUNTRY = 'ALGERIA' THEN 'A'
        ELSE 'B'
    END AS COUNTRY_CODE
FROM
    CUSTOMER_LIST;
    
SELECT * FROM CUSTOMER_LIST;

# NOTES 가 ACTIVE 면 1, 아니면 0으로 변한한 A_CODE열을 읽어보세요.
SELECT *, CASE WHEN NOTES = 'ACTIVE' THEN 1 
ELSE 0
END AS A_CODE
FROM CUSTOMER_LIST;

# COUNTRY = ALGERIA 면 A, BRAZIL 이면 B , CHINA 면 C 나머지는 ELSE
SELECT COUNTRY,
    CASE
        WHEN COUNTRY LIKE 'A%' THEN 'A'
        WHEN COUNTRY LIKE 'B%' THEN 'B'
        WHEN COUNTRY LIKE 'C%' THEN 'C'
        ELSE 'ELSE'
    END AS COUNTRY_CODE
FROM
    CUSTOMER_LIST 
    WHERE COUNTRY LIKE 'A%' OR COUNTRY LIKE 'B%' OR COUNTRY LIKE 'C%'
    ORDER BY COUNTRY_CODE DESC, COUNTRY DESC
    LIMIT 5
    OFFSET 10;

SELECT * FROM FILM;
SELECT CASE WHEN ORIGINAL_LANGUAGE_ID IS NULL THEN 0 END
FROM FILM;

# NULL 처리
SELECT coalesce(ORIGINAL_LANGUAGE_ID, 0) FROM FILM;
