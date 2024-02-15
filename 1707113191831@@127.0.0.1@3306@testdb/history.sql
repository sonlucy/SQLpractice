/* 2024-02-06 11:21:25 [32 ms] */ 
CREATE TABLE usertbl
(
  birthYear INT NOT NULL, -- 출생년도
  addr CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1 CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2 CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height SMALLINT, -- 키
  mDate DATE -- 회원 가입일
);
/* 2024-02-06 11:27:05 [33 ms] */ 
CREATE TABLE usertbl
(
  uid CHAR(15) NOT NULL PRIMARY KEY COMMENT 'PK 아이디',
  upw CHAR(25) NOT NULL COMMENT '패스워드',
  name VARCHAR(20) NOT NULL COMMENT '이름',
  birthYear INT NOT NULL COMMENT '출생년도',-- 출생년도
  addr CHAR(2) NOT NULL COMMENT '지역', -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1 CHAR(3) COMMENT '휴대폰국번', -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2 CHAR(8) COMMENT '휴대폰 나머지', -- 휴대폰의 나머지 전화번호(하이픈제외)
  height SMALLINT COMMENT '키', -- 키
  mDate DATE COMMENT '가입일' -- 회원 가입일
) COMMENT '회원정보';
/* 2024-02-06 11:27:46 [3 ms] */ 
SELECT * FROM usertbl LIMIT 100;
/* 2024-02-06 11:30:09 [20 ms] */ 
INSERT INTO usertbl VALUES('JKW', '1234','조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
/* 2024-02-06 11:30:13 [2 ms] */ 
SELECT * FROM usertbl LIMIT 100;
/* 2024-02-06 11:30:16 [13 ms] */ 
INSERT INTO usertbl VALUES('LSG', '1234', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
/* 2024-02-06 11:30:17 [13 ms] */ 
INSERT INTO usertbl VALUES('KBS', '1234','김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
/* 2024-02-06 11:30:18 [4 ms] */ 
INSERT INTO usertbl VALUES('KKH', '1234','김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');
/* 2024-02-06 11:30:19 [16 ms] */ 
INSERT INTO usertbl VALUES('JYP', '1234','조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
/* 2024-02-06 11:30:20 [12 ms] */ 
INSERT INTO usertbl VALUES('SSK', '1234','성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
/* 2024-02-06 11:30:21 [17 ms] */ 
INSERT INTO usertbl VALUES('LJB', '1234','임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
/* 2024-02-06 11:30:22 [15 ms] */ 
INSERT INTO usertbl VALUES('YJS', '1234','윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
/* 2024-02-06 11:30:31 [4 ms] */ 
INSERT INTO usertbl VALUES('EJW', '1234','은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
/* 2024-02-06 11:30:34 [8 ms] */ 
INSERT INTO usertbl VALUES('BBK', '1234','바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
/* 2024-02-06 11:30:42 [2 ms] */ 
SELECT * FROM usertbl LIMIT 100;
/* 2024-02-06 11:34:32 [44 ms] */ 
CREATE TABLE buytbl -- 회원 구매 테이블(Buy Table의 약자)
(
    num INT AUTO_INCREMENT NOT NULL PRIMARY KEY, -- 순번(PK)
    userID CHAR(8) NOT NULL, -- 아이디(FK)
    prodName CHAR(6) NOT NULL, --  물품명
    groupName CHAR(4), -- 분류
    price INT NOT NULL, -- 단가
    amount SMALLINT NOT NULL, -- 수량
    FOREIGN KEY (userID) REFERENCES usertbl (uid)
)COMMENT '판매정보';
/* 2024-02-06 11:34:43 [2 ms] */ 
-- 판매정보에서 num 값이 13인 데이터 삭제;
/* 2024-02-06 11:34:46 [3 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-06 11:34:49 [6 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL   , 30,   2);
/* 2024-02-06 11:35:04 [2 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-06 11:35:12 [13 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'KBS', '노트북', '전자', 1000, 1);
/* 2024-02-06 11:35:14 [11 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
/* 2024-02-06 11:35:15 [12 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
/* 2024-02-06 11:35:16 [12 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
/* 2024-02-06 11:35:17 [13 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
/* 2024-02-06 11:35:18 [12 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
/* 2024-02-06 11:35:19 [4 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
/* 2024-02-06 11:35:20 [12 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
/* 2024-02-06 11:35:21 [10 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
/* 2024-02-06 11:35:23 [15 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
/* 2024-02-06 11:35:24 [13 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
/* 2024-02-06 11:35:28 [3 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-06 11:35:37 [5 ms] */ 
DELETE FROM `buytbl` WHERE `num` IN (2,3,4);
/* 2024-02-06 11:35:37 [2 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-06 13:30:33 [6 ms] */ 
SELECT * FROM usertbl -- 전체 데이터 검색 LIMIT 100;
/* 2024-02-06 13:30:45 [5 ms] */ 
SELECT uid as 아이디, upw as 패스워드, name as 이름, mDate as 등록일 from usertbl LIMIT 100;
/* 2024-02-06 13:49:43 [16 ms] */ 
SELECT name, height, addr FROM usertbl WHERE addr in ('경남','전남','경북') LIMIT 100;
/* 2024-02-06 13:50:37 [12 ms] */ 
SELECT name, height FROM usertbl WHERE name LIKE '김%' LIMIT 100;
/* 2024-02-06 13:50:43 [3 ms] */ 
SELECT name, height FROM usertbl WHERE name LIKE '_종신' LIMIT 100;
/* 2024-02-06 13:53:54 [7 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-06 13:55:44 [2 ms] */ 
SELECT * FROM buytbl WHERE userID LIKE '%B%' LIMIT 100;
/* 2024-02-06 14:01:17 [7 ms] */ 
SELECT * FROM buytbl WHERE userID LIKE '_B_' LIMIT 100;
/* 2024-02-06 14:08:01 [3 ms] */ 
SELECT uid, upw, name FROM usertbl WHERE height > 177 LIMIT 100;
/* 2024-02-06 14:12:47 [2 ms] */ 
SELECT uid, upw, name FROM usertbl LIMIT 100;
/* 2024-02-06 14:12:52 [25 ms] */ 
SELECT uid, upw, name FROM usertbl 
WHERE height > (
  SELECT height FROM usertbl WHERE name = '김경호'
  ) LIMIT 100;
/* 2024-02-06 14:15:20 [3 ms] */ 
SELECT uid, upw, name FROM usertbl WHERE addr = '경남' LIMIT 100;
/* 2024-02-06 14:20:37 [14 ms] */ 
SELECT name, height FROM usertbl
WHERE height > ANY (
  SELECT height FROM usertbl WHERE addr = '경남'
  ) LIMIT 100;
/* 2024-02-06 14:21:51 [12 ms] */ 
SELECT name, height FROM usertbl 
WHERE height > ALL (
  SELECT height FROM usertbl WHERE addr = '경남'
  ) LIMIT 100;
/* 2024-02-06 14:44:12 [5 ms] */ 
SELECT name,height, mDate FROM usertbl LIMIT 100;
/* 2024-02-06 14:44:33 [4 ms] */ 
SELECT name, height, `mDate` FROM usertbl LIMIT 100;
/* 2024-02-06 14:44:49 [8 ms] */ 
SELECT name, height, `mDate` FROM usertbl ORDER BY `mDate` LIMIT 100;
/* 2024-02-06 14:46:39 [2 ms] */ 
SELECT name, height, `mDate` FROM usertbl ORDER BY `mDate` DESC LIMIT 100;
/* 2024-02-06 14:51:02 [9 ms] */ 
SELECT name, height, mDate FROM usertbl ORDER BY height DESC, mDate ASC LIMIT 100;
/* 2024-02-06 14:54:27 [4 ms] */ 
SELECT addr FROM usertbl LIMIT 100;
/* 2024-02-06 14:54:31 [19 ms] */ 
SELECT DISTINCT addr FROM usertbl LIMIT 100;
/* 2024-02-06 14:58:06 [3 ms] */ 
SELECT * FROM usertbl LIMIT 5;
/* 2024-02-06 15:01:06 [6 ms] */ 
SELECT * FROM buytbl WHERE `prodName`='모니터' LIMIT 100;
/* 2024-02-06 15:03:25 [154 ms] */ 
CREATE TABLE monitortbl (SELECT * FROM buytbl WHERE `prodName` = '모니터');
/* 2024-02-06 15:03:39 [2 ms] */ 
SELECT * FROM monitortbl LIMIT 100;
/* 2024-02-06 15:09:56 [11 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-06 15:13:31 [14 ms] */ 
SELECT `prodName`, sum(amount) FROM buytbl GROUP BY `prodName` LIMIT 100;
/* 2024-02-06 15:14:40 [4 ms] */ 
SELECT `prodName` as 품목명, sum(amount) as 합계 
FROM buytbl GROUP BY `prodName` LIMIT 100;
/* 2024-02-06 15:17:05 [17 ms] */ 
SELECT `prodName` as 품목명, AVG(amount) as 합계
FROM buytbl
GROUP BY `prodName` LIMIT 100;
/* 2024-02-06 15:17:20 [4 ms] */ 
SELECT name, height FROM usertbl
    WHERE height = (SELECT MAX(height) FROM usertbl)
    OR  height = (SELECT MIN(height) FROM usertbl) LIMIT 100;
/* 2024-02-06 15:22:03 [14 ms] */ 
SELECT userid, SUM(price * amount) FROM buytbl
GROUP BY `userID` LIMIT 100;
/* 2024-02-06 15:23:31 [19 ms] */ 
SELECT `userID` as '사용자', SUM(price * amount) as '총구매액' FROM buytbl
GROUP BY `userID` LIMIT 100;
/* 2024-02-06 15:26:29 [14 ms] */ 
SELECT `userID` as '사용자', SUM(price * amount) as '총구매액' FROM buytbl
GROUP BY `userID` HAVING SUM(price*amount) >1000 -- 에러 발생 LIMIT 100;
/* 2024-02-06 15:32:41 [17 ms] */ 
SELECT `groupName`, SUM(price * amount ) as '총구매액'
FROM buytbl
GROUP BY `groupName`, num
WITH ROLLUP LIMIT 100;
/* 2024-02-06 15:32:50 [5 ms] */ 
SELECT num, `groupName`, SUM(price * amount ) as '총구매액'
FROM buytbl
GROUP BY `groupName`, num
WITH ROLLUP LIMIT 100;
/* 2024-02-06 15:32:59 [2 ms] */ 
SELECT num, groupName, SUM(price * amount ) as '총구매액'
FROM buytbl
GROUP BY groupName, num
WITH ROLLUP LIMIT 100;
/* 2024-02-06 15:33:16 [2 ms] */ 
SELECT num, groupName, SUM(price * amount ) as '총구매액'
FROM buytbl
GROUP BY groupName, num WITH ROLLUP LIMIT 100;
/* 2024-02-06 16:02:39 [60 ms] */ 
CREATE TABLE schtbl (SELECT * FROM buytbl WHERE `prodName` = '모니터');
/* 2024-02-06 16:02:53 [1 ms] */ 
SELECT * FROM schtbl LIMIT 100;
/* 2024-02-06 16:03:14 [37 ms] */ 
CREATE TABLE schtbl (SELECT * FROM buytbl WHERE `prodName` = '책');
/* 2024-02-06 16:03:18 [2 ms] */ 
SELECT * FROM schtbl LIMIT 100;
/* 2024-02-06 16:20:19 [32 ms] */ 
CREATE TABLE testtbl(id int, username CHAR(4), age int);
/* 2024-02-06 16:22:50 [20 ms] */ 
INSERT INTO testtbl(id, username) VALUES(2, "설현");
/* 2024-02-06 16:24:56 [13 ms] */ 
INSERT INTO testtbl(username, id, age) VALUES("김파일", 3, 33);
/* 2024-02-06 16:25:04 [6 ms] */ 
SELECT * FROM testtbl LIMIT 100;
/* 2024-02-06 16:25:10 [12 ms] */ 
INSERT INTO testtbl VALUES(1, "홍길동", 25);
/* 2024-02-06 16:25:13 [2 ms] */ 
SELECT * FROM testtbl LIMIT 100;
/* 2024-02-06 16:28:20 [39 ms] */ 
CREATE TABLE testtbl2 ( 
  id int AUTO_INCREMENT PRIMARY KEY, 
  username CHAR(4), 
  age int 
  );
/* 2024-02-06 16:29:07 [20 ms] */ 
INSERT INTO testtbl2 VALUES (null, '지민', 25);
/* 2024-02-06 16:29:09 [16 ms] */ 
INSERT INTO testtbl2 VALUES (null, '유나', 22);
/* 2024-02-06 16:29:10 [13 ms] */ 
INSERT INTO testtbl2 VALUES (null, '유경', 21);
/* 2024-02-06 16:29:41 [28 ms] */ 
SELECT * FROM testtbl2 LIMIT 100;
/* 2024-02-06 16:33:04 [42 ms] */ 
CREATE TABLE testtbl3 (
    id INT AUTO_INCREMENT PRIMARY KEY, username CHAR(3), age INT
);
/* 2024-02-06 16:33:15 [35 ms] */ 
ALTER TABLE testtbl3 AUTO_INCREMENT = 1000;
/* 2024-02-06 16:33:32 [17 ms] */ 
SET @@auto_increment_increment = 3;
/* 2024-02-06 16:33:50 [14 ms] */ 
INSERT INTO testtbl3 VALUES (NULL, '나연', 20);
/* 2024-02-06 16:33:52 [12 ms] */ 
INSERT INTO testtbl3 VALUES (NULL, '정연', 18);
/* 2024-02-06 16:33:56 [12 ms] */ 
INSERT INTO testtbl3 VALUES (NULL, '모모', 19);
/* 2024-02-06 16:33:57 [2 ms] */ 
SELECT * FROM testtbl3 LIMIT 100;
/* 2024-02-06 16:40:31 [71 ms] */ 
INSERT INTO testtbl SELECT `ID`, `CountryCode`, `Population` FROM world.city
WHERE `Population` >= 1000000;
/* 2024-02-06 16:40:33 [2 ms] */ 
SELECT * FROM testtbl LIMIT 100;
/* 2024-02-06 16:45:56 [21 ms] */ 
INSERT INTO testtbl3 VALUES (1009, '모모', 19);
/* 2024-02-06 16:47:19 [3 ms] */ 
INSERT IGNORE testtbl3 VALUES (1006, '모모', 19);
/* 2024-02-06 16:47:32 [6 ms] */ 
DELETE FROM `testtbl3` WHERE `id`=1009;
/* 2024-02-06 16:48:22 [4 ms] */ 
INSERT IGNORE testtbl3 VALUES (1006, '무무', 19);
/* 2024-02-06 16:49:57 [14 ms] */ 
INSERT INTO testtbl3 VALUES(1006, '모모', 19)
ON DUPLICATE KEY UPDATE username='무무', age=33;
/* 2024-02-06 16:55:41 [24 ms] */ 
UPDATE testtbl3 set age = 35;
/* 2024-02-06 16:56:02 [4 ms] */ 
SELECT * FROM testtbl3 LIMIT 100;
/* 2024-02-06 16:59:34 [16 ms] */ 
UPDATE testtbl set age = 33 WHERE username = '설현';
/* 2024-02-06 16:59:51 [5 ms] */ 
SELECT * FROM testtbl LIMIT 100;
/* 2024-02-06 17:02:56 [14 ms] */ 
UPDATE testtbl3 set age = age + 1;
/* 2024-02-06 17:02:57 [4 ms] */ 
SELECT * FROM testtbl3 LIMIT 100;
/* 2024-02-06 17:03:58 [16 ms] */ 
UPDATE testtbl3 set age = age * 1.3;
/* 2024-02-06 17:04:00 [2 ms] */ 
SELECT * FROM testtbl3 LIMIT 100;
/* 2024-02-06 17:06:31 [16 ms] */ 
DELETE FROM testtbl;
/* 2024-02-06 17:06:33 [5 ms] */ 
SELECT * FROM testtbl LIMIT 100;
/* 2024-02-06 17:08:33 [20 ms] */ 
DELETE FROM testtbl3 WHERE username='나연';
/* 2024-02-06 17:08:34 [1 ms] */ 
SELECT * FROM testtbl3 LIMIT 100;
/* 2024-02-06 17:12:17 [15 ms] */ 
DELETE FROM schtbl;
/* 2024-02-06 17:12:31 [15 ms] */ 
INSERT INTO schtbl select * from buytbl where `prodName`='책';
/* 2024-02-06 17:18:32 [11 ms] */ 
SELECT uid, upw FROM usertbl WHERE uid = 'BBK' LIMIT 100;
/* 2024-02-07 10:47:07 [19 ms] */ 
set @myVar1 = 5;
/* 2024-02-07 10:47:09 [1 ms] */ 
set @myVar2 = 3;
/* 2024-02-07 10:47:11 [2 ms] */ 
set @myVar3 = 4.52;
/* 2024-02-07 10:47:12 [1 ms] */ 
set @myVar4 = '가수 이름==>';
/* 2024-02-07 10:50:18 [1 ms] */ 
set @myVar1 = 180;
/* 2024-02-07 10:50:38 [3 ms] */ 
SELECT @myVar1;
/* 2024-02-07 10:50:44 [2 ms] */ 
SELECT @myVar2+@myVar3;
/* 2024-02-07 10:50:47 [31 ms] */ 
SELECT @myVar4, name FROM usertbl WHERE height > @myVar1 LIMIT 100;
/* 2024-02-07 10:58:20 [13 ms] */ 
SELECT AVG(price) as '평균단가' FROM buytbl LIMIT 100;
/* 2024-02-07 11:07:48 [13 ms] */ 
SELECT CAST(AVG(price) as SIGNED INTEGER) as '평균단가' FROM buytbl LIMIT 100;
/* 2024-02-07 11:08:18 [3 ms] */ 
SELECT CONVERT(AVG(price), SIGNED INTEGER) as '평균단가' FROM buytbl LIMIT 100;
/* 2024-02-07 11:09:33 [2 ms] */ 
SELECT CAST(AVG(price) as SIGNED) as '평균단가' FROM buytbl LIMIT 100;
/* 2024-02-07 11:09:37 [2 ms] */ 
SELECT CONVERT(AVG(price), SIGNED) as '평균단가' FROM buytbl LIMIT 100;
/* 2024-02-07 11:12:18 [16 ms] */ 
SELECT CAST('2021/10/01' AS DATE);
/* 2024-02-07 11:12:22 [2 ms] */ 
SELECT CONVERT('2021/10/01', DATE);
/* 2024-02-07 11:15:48 [6 ms] */ 
SELECT num, CONCAT(CAST(price as CHAR(10)), 'X', CAST(amount as CHAR(4)), '=') AS '단가X수량',
price*amount as '구매액'
FROM buytbl LIMIT 100;
/* 2024-02-07 11:24:19 [2 ms] */ 
SELECT IF(200>400, '출발합니다.', '도착했습니다.');
/* 2024-02-07 11:30:21 [4 ms] */ 
SELECT num, IFNULL(groupName, '기타') FROM buytbl LIMIT 100;
/* 2024-02-07 11:33:34 [13 ms] */ 
SELECT NULLIF(100,100), NULLIF(200,100);
/* 2024-02-07 11:33:42 [3 ms] */ 
SELECT num, NULLIF(groupName, NULL) FROM buytbl LIMIT 100;
/* 2024-02-07 11:33:59 [6 ms] */ 
SELECT num, groupName FROM buytbl LIMIT 100;
/* 2024-02-07 11:34:04 [2 ms] */ 
SELECT num, NULLIF(groupName, NULL) FROM buytbl LIMIT 100;
/* 2024-02-07 11:34:10 [2 ms] */ 
SELECT NULLIF(100,100), NULLIF(200,100);
/* 2024-02-07 11:36:47 [3 ms] */ 
SET @mydata = 10;
/* 2024-02-07 11:36:49 [5 ms] */ 
SELECT case @mydata
  WHEN 1 THEN '최솟값'
  WHEN 5 THEN '중앙값'
  WHEN 10 THEN '최대값'
  ELSE '범위에 없음'
END;
/* 2024-02-07 11:36:54 [3 ms] */ 
SET @mydata = 3;
/* 2024-02-07 11:36:56 [1 ms] */ 
SELECT case @mydata
  WHEN 1 THEN '최솟값'
  WHEN 5 THEN '중앙값'
  WHEN 10 THEN '최대값'
  ELSE '범위에 없음'
END;
/* 2024-02-07 11:40:54 [2 ms] */ 
SELECT ASCII('B'), CHAR(65);
/* 2024-02-07 11:40:59 [6 ms] */ 
SELECT ASCII('A'), CHAR(65);
/* 2024-02-07 11:44:04 [3 ms] */ 
SELECT BIT_LENGTH('abc'), CHAR_LENGTH('abc'), LENGTH('abc');
/* 2024-02-07 11:44:12 [3 ms] */ 
SELECT BIT_LENGTH('가나다'), CHAR_LENGTH('가나다'), LENGTH('가나다');
/* 2024-02-07 11:45:57 [3 ms] */ 
SELECT CONCAT_WS('/', '2025', '01', '01');
/* 2024-02-07 13:14:48 [18 ms] */ 
SELECT ELT(2, '하나', '둘', '셋'), FIELD('둘', '하나', '둘', '셋'), 
  FIND_IN_SET('둘', '하나, 둘, 셋'), INSTR('하나둘셋', '둘'), LOCATE('둘', '하나둘셋');
/* 2024-02-07 13:16:05 [14 ms] */ 
SELECT FORMAT(123456.123456, 4);
/* 2024-02-07 13:16:36 [5 ms] */ 
SELECT BIN(31), HEX(31), OCT(31);
/* 2024-02-07 13:20:00 [11 ms] */ 
SELECT INSERT('abcdefghi', 3, 4, '@@@@'), INSERT('abcdefghi', 3, 2, '@@@@');
/* 2024-02-07 13:20:38 [13 ms] */ 
SELECT LEFT('abcdefghi', 3), RIGHT('abcdefghi', 2);
/* 2024-02-07 13:21:12 [6 ms] */ 
SELECT LOWER('abcdEFGH'), UPPER('abcdEFGH');
/* 2024-02-07 13:22:38 [5 ms] */ 
SELECT LPAD('이것이', 5, '#'), RPAD('이것이', 8, '!#');
/* 2024-02-07 13:22:53 [14 ms] */ 
SELECT LTRIM(' 이것이'), RTRIM('이것이 ');
/* 2024-02-07 13:24:24 [2 ms] */ 
SELECT TRIM(' 이것이 ');
/* 2024-02-07 13:24:28 [10 ms] */ 
SELECT TRIM( BOTH 'ㅋ' FROM 'ㅋㅋㅋ재밌어요.ㅋㅋㅋ' ) LIMIT 100;
/* 2024-02-07 13:25:03 [3 ms] */ 
SELECT TRIM('ㅋ' FROM 'ㅋㅋㅋ재밌어요.ㅋㄴㅋㅋ') LIMIT 100;
/* 2024-02-07 13:25:17 [11 ms] */ 
SELECT REPEAT ('이것이', 3);
/* 2024-02-07 13:25:30 [2 ms] */ 
SELECT REPLACE ( '이것이 MySQL이다', '이것이', 'This is' );
/* 2024-02-07 13:25:35 [2 ms] */ 
SELECT REPLACE ('삭제해줘', '삭제', '수정');
/* 2024-02-07 13:27:28 [14 ms] */ 
SELECT REVERSE('MySQL');
/* 2024-02-07 13:27:30 [6 ms] */ 
SELECT CONCAT('이것이', SPACE(10), 'MySQL이다');
/* 2024-02-07 13:27:58 [2 ms] */ 
SELECT SUBSTRING('대한민국만세', 3, 2);
/* 2024-02-07 13:29:43 [5 ms] */ 
SELECT SUBSTRING_INDEX('cafe.naver.com', '.', 2), SUBSTRING_INDEX('cafe.naver.com', '.', -2);
/* 2024-02-07 13:33:12 [4 ms] */ 
SELECT ABS(-100);
/* 2024-02-07 13:34:10 [17 ms] */ 
SELECT CEILING(4.7), FLOOR(4.7), ROUND(4.7);
/* 2024-02-07 13:34:28 [12 ms] */ 
SELECT MOD(157, 10), 157 % 10, 157 MOD 10;
/* 2024-02-07 13:35:18 [12 ms] */ 
SELECT POW(2, 3), SQRT(9);
/* 2024-02-07 13:35:23 [15 ms] */ 
SELECT RAND(), FLOOR(1 + (RAND() * (6 -1)));
/* 2024-02-07 13:36:08 [5 ms] */ 
SELECT TRUNCATE (12345.12345, 2), TRUNCATE (12345.12355, -2);
/* 2024-02-07 13:38:25 [12 ms] */ 
SELECT ADDDATE('2025-01-01', INTERVAL 31 DAY), ADDDATE('2025-01-01', INTERVAL 1 MONTH);
/* 2024-02-07 13:38:37 [2 ms] */ 
SELECT SUBDATE('2025-01-01', INTERVAL 31 DAY), SUBDATE('2025-01-01', INTERVAL 1 MONTH);
/* 2024-02-07 13:39:40 [13 ms] */ 
SELECT YEAR(CURDATE()), MONTH(CURDATE()), DAYOFMONTH(CURDATE());
/* 2024-02-07 13:39:44 [2 ms] */ 
SELECT HOUR(CURTIME()), MINUTE(CURRENT_TIME()), SECOND(CURRENT_TIME()), MICROSECOND(CURRENT_TIME());
/* 2024-02-07 13:40:21 [10 ms] */ 
SELECT DATE(NOW()), TIME(NOW());
/* 2024-02-07 13:40:52 [4 ms] */ 
SELECT DATE(NOW()), TIME(NOW()), NOW();
/* 2024-02-07 13:40:55 [1 ms] */ 
SELECT DATE(CURTIME()), TIME(CURTIME());
/* 2024-02-07 13:41:04 [5 ms] */ 
SELECT DATE(NOW()), TIME(NOW()), NOW();
/* 2024-02-07 13:41:07 [1 ms] */ 
SELECT DATE(CURTIME()), TIME(CURTIME());
/* 2024-02-07 13:41:46 [14 ms] */ 
SELECT DATEDIFF('2025-01-01', NOW()), TIMEDIFF('23:23:59', '12:11:10');
/* 2024-02-07 13:46:01 [2 ms] */ 
SELECT TIMESTAMPDIFF(DAY, NOW(), '2025-01-01');
/* 2024-02-07 13:46:10 [4 ms] */ 
SELECT DATEDIFF('2025-01-01', NOW()), TIMEDIFF('23:23:59', '12:11:10');
/* 2024-02-07 13:46:15 [3 ms] */ 
SELECT TIMESTAMPDIFF(DAY, NOW(), '2025-01-01');
/* 2024-02-07 13:47:50 [2 ms] */ 
SELECT TIMESTAMPDIFF(SECOND, NOW(), '2025-01-01');
/* 2024-02-07 13:53:28 [2 ms] */ 
SELECT CURRENT_USER(), DATABASE();
/* 2024-02-07 13:53:48 [7 ms] */ 
SELECT * FROM usertbl LIMIT 100;
/* 2024-02-07 13:53:58 [15 ms] */ 
SELECT FOUND_ROWS();
/* 2024-02-07 13:54:27 [80 ms] */ 
UPDATE buytbl SET price=price*2;
/* 2024-02-07 13:54:37 [13 ms] */ 
SELECT ROW_COUNT();
/* 2024-02-07 13:56:00 [5014 ms] */ 
SELECT SLEEP(5);
/* 2024-02-07 13:56:02 [2 ms] */ 
SELECT '5초 후에 이게 보여요';
/* 2024-02-07 13:56:14 [5003 ms] */ 
SELECT SLEEP(5);
/* 2024-02-07 13:56:14 [2814 ms] */ 
SELECT '5초 후에 이게 보여요';
/* 2024-02-07 13:56:23 [5002 ms] */ 
SELECT SLEEP(5);
/* 2024-02-07 13:56:23 [4362 ms] */ 
SELECT '5초 후에 이게 보여요';
/* 2024-02-07 19:07:52 [25 ms] */ 
set @myVar1 = 180;
/* 2024-02-07 19:07:54 [4 ms] */ 
set @myVar2 = 3;
/* 2024-02-07 19:07:56 [14 ms] */ 
set @myVar3 = 4.52;
/* 2024-02-07 19:07:57 [4 ms] */ 
set @myVar4 = '가수 이름==>';
/* 2024-02-07 19:07:59 [14 ms] */ 
SELECT @myVar1;
/* 2024-02-07 19:08:05 [13 ms] */ 
SELECT @myVar2+@myVar3;
/* 2024-02-07 19:08:08 [22 ms] */ 
SELECT @myVar4, name FROM usertbl WHERE height > @myVar1 LIMIT 100;
/* 2024-02-07 19:08:46 [3 ms] */ 
set @myVar4 = '가수 이름=>';
/* 2024-02-07 19:08:49 [3 ms] */ 
SELECT @myVar4, name FROM usertbl WHERE height > @myVar1 LIMIT 100;
