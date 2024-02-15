/* 2024-02-05 15:09:21 [16 ms] */ 
CREATE DATABASE studydb
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-05 15:17:32 [67 ms] */ 
CREATE TABLE tcity(
  name CHAR(10) PRIMARY KEY,
  area int NULL,
  popu int NULL,
  metro CHAR(1) NOT NULL,
  region CHAR(6) NOT NULL
);
/* 2024-02-05 15:21:17 [11 ms] */ 
INSERT INTO membertbl(`memberID`,`memberName`,`memberAddress`) VALUES('dang','담팅이','경기도 부천시 중동');INSERT INTO membertbl(`memberID`,`memberName`,`memberAddress`) VALUES('jee ','지은이','서울시 은평구');
/* 2024-02-05 15:24:50 [11 ms] */ 
INSERT INTO membertbl(`memberID`,`memberName`,`memberAddress`) VALUES('han','한두여','인천시 남구 주안동');
/* 2024-02-05 15:26:31 [9 ms] */ 
INSERT INTO
    membertbl (
        `memberID`, `memberName`, `memberAddress`
    )
VALUES ('sang', '상현이', '경기도 성남시 분당구');
/* 2024-02-05 15:30:15 [6 ms] */ 
INSERT INTO producttbl(`productName`,cost,`makeDate`,company,amount) VALUES('컴퓨터',10,'2023-12-31','삼성',17);
/* 2024-02-05 15:32:45 [8 ms] */ 
INSERT INTO
    producttbl (
        `productName`, cost, `makeDate`, company, amount
    )
VALUES ('세탁기', 20, '2024-01-22', 'LG', 3);
/* 2024-02-05 15:32:49 [11 ms] */ 
INSERT INTO
    producttbl (
        `productName`, cost, `makeDate`, company, amount
    )
VALUES (
        '냉장고', 5, '2024-02-22', '대두', 22
    );
/* 2024-02-05 15:52:26 [17 ms] */ 
INSERT INTO tCity VALUES ('홍천', 1819, 7, 'n', '강원');
/* 2024-02-05 15:59:36 [17 ms] */ 
DELETE FROM `membertbl` WHERE `memberID`='NaoTo1';
/* 2024-02-05 16:21:17 [44 ms] */ 
CREATE VIEW uv_tcity
AS
SELECT name, metro, region FROM tcity;
/* 2024-02-06 11:19:55 [11 ms] */ 
CREATE DATABASE testdb
    DEFAULT CHARACTER SET = 'utf8mb4';
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
/* 2024-02-07 13:59:33 [19 ms] */ 
CREATE DATABASE movieDB
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-07 14:00:03 [7 ms] */ 
SHOW DATABASES;
/* 2024-02-07 14:01:04 [2 ms] */ 
USE moviedb;
/* 2024-02-07 14:02:31 [53 ms] */ 
DROP DATABASE moviedb;
/* 2024-02-07 14:02:33 [2 ms] */ 
SHOW DATABASES;
/* 2024-02-07 14:02:52 [12 ms] */ 
CREATE DATABASE movieDB
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-07 14:12:36 [52 ms] */ 
CREATE TABLE movietbl 
(
  movie_id        INT,
  movie_title     VARCHAR(30),
  movie_director  VARCHAR(20),
  movie_star      VARCHAR(20),
  movie_script    LONGTEXT,
  movie_film      LONGBLOB
) DEFAULT CHARSET=utf8mb4;
/* 2024-02-07 14:13:42 [4 ms] */ 
SHOW TABLES;
/* 2024-02-07 14:14:32 [6 ms] */ 
DESC movietbl;
/* 2024-02-07 14:38:36 [18 ms] */ 
INSERT INTO movietbl VALUES ( 1, '쉰들러 리스트', '스필버그', '리암 니슨',  
LOAD_FILE('C:/SQL/Movies/Schindler.txt'), LOAD_FILE('C:/SQL/Movies/Schindler.mp4') );
/* 2024-02-07 14:38:52 [4 ms] */ 
SELECT * FROM movietbl LIMIT 100;
/* 2024-02-07 14:41:03 [30 ms] */ 
SHOW VARIABLES LIKE 'max_allowed_packet';
/* 2024-02-07 14:43:31 [10 ms] */ 
SHOW variables LIKE 'secure_file_priv';
/* 2024-02-07 15:13:56 [106 ms] */ 
TRUNCATE movietbl;
/* 2024-02-07 15:14:08 [12 ms] */ 
DELETE FROM movietbl;
/* 2024-02-07 15:14:09 [7 ms] */ 
SELECT * FROM movietbl LIMIT 100;
/* 2024-02-07 15:14:11 [504 ms] */ 
INSERT INTO movietbl VALUES ( 1, '쉰들러 리스트', '스필버그', '리암 니슨',  
LOAD_FILE('C:/SQL/Movies/Schindler.txt'), LOAD_FILE('C:/SQL/Movies/Schindler.mp4') );
/* 2024-02-07 15:14:13 [608 ms] */ 
INSERT INTO movietbl VALUES ( 2, '쇼생크 탈출', '프랭크 다라본트', '팀 로빈스',  
LOAD_FILE('C:/SQL/Movies/Shawshank.txt'), LOAD_FILE('C:/SQL/Movies/Shawshank.mp4') );
/* 2024-02-07 15:14:14 [594 ms] */ 
INSERT INTO movietbl VALUES ( 3, '라스트 모히칸', '마이클 만', '다니엘 데이 루이스',
LOAD_FILE('C:/SQL/Movies/Mohican.txt'), LOAD_FILE('C:/SQL/Movies/Mohican.mp4') );
/* 2024-02-07 15:15:06 [1257 ms] */ 
SELECT * FROM movietbl LIMIT 100;
/* 2024-02-07 15:16:47 [1191 ms] */ 
SELECT * FROM movietbl LIMIT 100;
/* 2024-02-07 15:20:45 [42 ms] */ 
TRUNCATE movietbl;
/* 2024-02-07 15:20:48 [8 ms] */ 
DELETE FROM movietbl;
/* 2024-02-07 15:20:49 [2 ms] */ 
SELECT * FROM movietbl LIMIT 100;
/* 2024-02-07 15:20:54 [475 ms] */ 
INSERT INTO movietbl VALUES ( 1, '쉰들러 리스트', '스필버그', '리암 니슨',  
LOAD_FILE('C:/SQL/Movies/Schindler.txt'), LOAD_FILE('C:/SQL/Movies/Schindler.mp4') );
/* 2024-02-07 15:20:56 [650 ms] */ 
INSERT INTO movietbl VALUES ( 2, '쇼생크 탈출', '프랭크 다라본트', '팀 로빈스',  
LOAD_FILE('C:/SQL/Movies/Shawshank.txt'), LOAD_FILE('C:/SQL/Movies/Shawshank.mp4') );
/* 2024-02-07 15:20:57 [728 ms] */ 
INSERT INTO movietbl VALUES ( 3, '라스트 모히칸', '마이클 만', '다니엘 데이 루이스',
LOAD_FILE('C:/SQL/Movies/Mohican.txt'), LOAD_FILE('C:/SQL/Movies/Mohican.mp4') );
/* 2024-02-07 15:26:49 [12 ms] */ 
SELECT movie_script FROM movietbl WHERE movie_id=1
INTO OUTFILE 'C:/SQL/Movies/Schindler_out.txt'
LINES TERMINATED BY "\\n";
/* 2024-02-07 15:27:03 [73 ms] */ 
SELECT movie_film FROM movietbl  WHERE movie_id=3 
INTO DUMPFILE 'C:/SQL/Movies/Mohican_out.mp4';
/* 2024-02-07 15:32:27 [36 ms] */ 
CREATE TABLE pivotTest ( uName CHAR(3), season CHAR(2), amount INT );
/* 2024-02-07 15:33:08 [14 ms] */ 
INSERT  INTO  pivotTest VALUES
('김범수', '겨울',  10), ('윤종신', '여름',  15), ('김범수', '가을',  25), ('김범수', '봄',     3),
('김범수', '봄',    37), ('윤종신', '겨울',  40), ('김범수', '여름',  14), ('김범수', '겨울',  22),
('윤종신', '여름',  64);
/* 2024-02-07 15:33:36 [3 ms] */ 
SELECT * FROM pivottest LIMIT 100;
/* 2024-02-07 15:53:43 [18 ms] */ 
SELECT uName, 
  SUM(IF(season='봄', amount, 0)) AS '봄', 
  SUM(IF(season='여름', amount, 0)) AS '여름',
  SUM(IF(season='가을', amount, 0)) AS '가을',
  SUM(IF(season='겨울', amount, 0)) AS '겨울',
  SUM(amount) AS '합계' FROM pivotTest GROUP BY uName LIMIT 100;
/* 2024-02-07 15:56:51 [3 ms] */ 
SELECT season, 
  SUM(IF(`uName`='김범수', amount, 0)) AS '김범수', 
  SUM(IF(`uName`='윤종신', amount, 0)) AS '윤종신',
  SUM(amount) AS '합계' FROM pivotTest GROUP BY season LIMIT 100;
/* 2024-02-07 16:04:25 [4 ms] */ 
SELECT * FROM testdb.usertbl LIMIT 100;
/* 2024-02-07 16:05:44 [14 ms] */ 
SELECT JSON_OBJECT('name', name, 'addr', addr, 'height', height) AS 'JSON_데이터'
FROM testdb.usertbl LIMIT 100;
/* 2024-02-07 16:07:42 [2 ms] */ 
SELECT JSON_OBJECT('name', name, 'addr', addr, 'height', height) AS 'JSON_데이터'
FROM testdb.usertbl WHERE height >= 180 LIMIT 100;
/* 2024-02-07 16:10:13 [13 ms] */ 
set @json = '{"usertbl":
  {"addr": "서울", "name": "임재범", "height": 182} ,
  {"addr": "서울", "name": "이승기", "height": 182} ,
  {"addr": "서울", "name": "성시경", "height": 186} 
}';
/* 2024-02-07 16:11:00 [2 ms] */ 
set @json = '{"usertbl":
[
  {"addr": "서울", "name": "임재범", "height": 182} ,
  {"addr": "서울", "name": "이승기", "height": 182} ,
  {"addr": "서울", "name": "성시경", "height": 186} 
]
}';
/* 2024-02-07 16:12:08 [12 ms] */ 
SELECT JSON_VALID(@json) AS JSON_VALID;
/* 2024-02-07 16:13:32 [11 ms] */ 
SELECT JSON_SEARCH(@json, 'one', '성시경') AS JSON_SEARCH;
/* 2024-02-07 16:16:13 [4 ms] */ 
SELECT JSON_EXTRACT(@json, '$.usertbl[2].name') AS JSON_EXTRACT;
/* 2024-02-07 16:16:19 [3 ms] */ 
SELECT JSON_INSERT(@json, '$.usertbl[0].mDate', '2009-09-09') AS JSON_INSERT;
/* 2024-02-07 16:16:56 [12 ms] */ 
SELECT JSON_REPLACE(@json, '$.usertbl[0].name', '홍길동') AS JSON_REPLACE;
/* 2024-02-07 16:17:04 [2 ms] */ 
SELECT JSON_REMOVE(@json, '$.usertbl[0]') AS JSON_REMOVE;
/* 2024-02-07 16:20:38 [13 ms] */ 
CREATE DATABASE sqldb
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-07 16:26:11 [34 ms] */ 
CREATE TABLE stdtbl 
( stdName    VARCHAR(10) NOT NULL PRIMARY KEY,
  addr   CHAR(4) NOT NULL
);
/* 2024-02-07 16:26:13 [27 ms] */ 
CREATE TABLE clubtbl 
( clubName    VARCHAR(10) NOT NULL PRIMARY KEY,
  roomNo    CHAR(4) NOT NULL
);
/* 2024-02-07 16:26:14 [52 ms] */ 
CREATE TABLE stdclubtbl
(  
  num int AUTO_INCREMENT NOT NULL PRIMARY KEY, 
  stdName    VARCHAR(10) NOT NULL,
  clubName    VARCHAR(10) NOT NULL,
FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
FOREIGN KEY(clubName) REFERENCES clubtbl(clubName)
);
/* 2024-02-07 16:29:22 [7 ms] */ 
INSERT INTO stdtbl VALUES ('김범수','경남'), ('성시경','서울'), ('조용필','경기'), ('은지원','경북'),('바비킴','서울');
/* 2024-02-07 16:29:24 [6 ms] */ 
INSERT INTO clubtbl VALUES ('수영','101호'), ('바둑','102호'), ('축구','103호'), ('봉사','104호');
/* 2024-02-07 16:29:24 [7 ms] */ 
INSERT INTO stdclubtbl VALUES (NULL, '김범수','바둑'), (NULL,'김범수','축구'), 
          (NULL,'조용필','축구'), (NULL,'은지원','축구'), (NULL,'은지원','봉사'), (NULL,'바비킴','봉사');
/* 2024-02-07 16:39:17 [3 ms] */ 
SELECT stdtbl.stdName, stdtbl.addr, stdclubtbl.clubName, clubtbl.roomNo
  FROM stdtbl 
    INNER JOIN stdclubtbl
      ON stdtbl.stdName = stdclubtbl.stdName
    INNER JOIN clubtbl 
      ON stdclubtbl.clubName = clubtbl.clubName 
ORDER BY stdtbl.stdName LIMIT 100;
/* 2024-02-07 16:40:19 [3 ms] */ 
SELECT stdtbl.stdName, stdtbl.addr, stdclubtbl.clubName, clubtbl.roomNo
  FROM stdtbl 
    INNER JOIN stdclubtbl
      ON stdtbl.stdName = stdclubtbl.stdName
    INNER JOIN clubtbl 
      ON stdclubtbl.clubName = clubtbl.clubName LIMIT 100;
/* 2024-02-07 16:42:49 [3 ms] */ 
SELECT stdtbl.stdName, stdtbl.addr, stdclubtbl.clubName, clubtbl.roomNo
  FROM stdtbl 
    INNER JOIN stdclubtbl
      ON stdtbl.stdName = stdclubtbl.stdName
    INNER JOIN clubtbl 
      ON stdclubtbl.clubName = clubtbl.clubName
  WHERE stdtbl.`stdName` ='김범수' LIMIT 100;
/* 2024-02-07 16:44:02 [3 ms] */ 
SELECT S.stdName, S.addr, SC.clubName, C.roomNo
  FROM stdtbl S 
    INNER JOIN stdclubtbl SC
      ON S.stdName = SC.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName 
  WHERE SC.`clubName` = '축구' LIMIT 100;
/* 2024-02-07 16:45:58 [2 ms] */ 
SELECT C.clubName, C.roomNo, S.stdName, S.addr
  FROM  stdtbl S
    INNER JOIN stdclubtbl SC
      ON SC.stdName = S.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName
  ORDER BY C.clubName LIMIT 100;
/* 2024-02-07 16:47:46 [8 ms] */ 
SELECT  C.clubName, C.roomNo
  FROM  stdtbl S
    INNER JOIN stdclubtbl SC
      ON SC.stdName = S.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName
  ORDER BY C.clubName LIMIT 100;
/* 2024-02-07 16:48:00 [3 ms] */ 
SELECT DISTINCT C.clubName, C.roomNo
  FROM  stdtbl S
    INNER JOIN stdclubtbl SC
      ON SC.stdName = S.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName
  ORDER BY C.clubName LIMIT 100;
/* 2024-02-07 16:54:33 [6 ms] */ 
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  LEFT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName
UNION
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  RIGHT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName LIMIT 100;
/* 2024-02-07 16:55:35 [4 ms] */ 
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  LEFT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName LIMIT 100;
/* 2024-02-07 16:56:27 [3 ms] */ 
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  RIGHT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName LIMIT 100;
/* 2024-02-07 16:58:03 [16 ms] */ 
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  LEFT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName
UNION  -- 두 쿼리의 결과를 병합해서 출력
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  RIGHT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName LIMIT 100;
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
/* 2024-02-07 19:21:41 [53 ms] */ 
CREATE DATABASE practice
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-07 19:21:59 [100 ms] */ 
CREATE TABLE sales ( date DATE, amount DECIMAL(10, 2) );
/* 2024-02-07 19:22:07 [20 ms] */ 
INSERT INTO sales (date, amount) VALUES
('2024-01-01', 100.00),
('2024-01-01', 150.00),
('2024-01-02', 200.00),
('2024-01-02', 250.00),
('2024-01-03', 300.00);
/* 2024-02-07 19:22:29 [9 ms] */ 
SELECT
    date,
    SUM(CASE WHEN date = '2024-01-01' THEN amount ELSE 0 END) AS '2024-01-01',
    SUM(CASE WHEN date = '2024-01-02' THEN amount ELSE 0 END) AS '2024-01-02',
    SUM(CASE WHEN date = '2024-01-03' THEN amount ELSE 0 END) AS '2024-01-03'
FROM sales
GROUP BY date LIMIT 100;
/* 2024-02-07 19:23:30 [25 ms] */ 
CREATE TABLE sales (
    date DATE,
    amount DECIMAL(10, 2)
);
/* 2024-02-07 19:23:37 [5 ms] */ 
INSERT INTO sales (date, amount) VALUES
('2024-01-01', 100.00),
('2024-01-01', 150.00),
('2024-01-02', 200.00),
('2024-01-02', 250.00),
('2024-01-03', 300.00);
/* 2024-02-07 19:24:27 [3 ms] */ 
SELECT
    date,
    SUM(CASE WHEN date = '2024-01-01' THEN amount ELSE 0 END) AS '2024-01-01',
    SUM(CASE WHEN date = '2024-01-02' THEN amount ELSE 0 END) AS '2024-01-02',
    SUM(CASE WHEN date = '2024-01-03' THEN amount ELSE 0 END) AS '2024-01-03'
FROM sales
GROUP BY date LIMIT 100;
/* 2024-02-07 19:30:55 [19 ms] */ 
SELECT JSON_OBJECT('name', name, 'addr', addr, 'height', height) AS 'JSON_데이터'
FROM testdb.usertbl WHERE height >= 180 LIMIT 100;
/* 2024-02-07 19:31:31 [2 ms] */ 
set @json = '{"usertbl":
[
  {"addr": "서울", "name": "임재범", "height": 182} ,
  {"addr": "서울", "name": "이승기", "height": 182} ,
  {"addr": "서울", "name": "성시경", "height": 186} 
]
}';
/* 2024-02-07 19:31:36 [12 ms] */ 
SELECT JSON_VALID(@json) AS JSON_VALID;
/* 2024-02-08 11:01:24 [131 ms] */ 
DROP DATABASE if EXISTS tabledb;
/* 2024-02-08 11:02:47 [13 ms] */ 
CREATE DATABASE tabledb;
/* 2024-02-08 11:05:17 [6 ms] */ 
use tabledb;
/* 2024-02-08 11:05:19 [4 ms] */ 
DROP TABLE IF EXISTS buytbl, usertbl;
/* 2024-02-08 11:05:20 [56 ms] */ 
CREATE TABLE usertbl -- 회원 테이블
(
    userID CHAR(8), -- 사용자 아이디
    name VARCHAR(10), -- 이름
    birthYear INT, -- 출생년도
    addr CHAR(2), -- 지역(경기,서울,경남 등으로 글자만 입력)
    mobile1 CHAR(3), -- 휴대폰의국번(011, 016, 017, 018, 019, 010 등)
    mobile2 CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈 제외)
    height SMALLINT, -- 키
    mDate DATE -- 회원 가입일
);
/* 2024-02-08 11:11:52 [15 ms] */ 
DROP TABLE IF EXISTS buytbl;
/* 2024-02-08 11:11:55 [37 ms] */ 
CREATE TABLE buytbl -- 구매 테이블
(
    num INT, -- 순번(PK)
    userid CHAR(8), -- 아이디(FK)
    prodName CHAR(6), -- 물품명
    groupName CHAR(4), -- 분류
    price INT, -- 단가
    amount SMALLINT -- 수량
);
/* 2024-02-08 11:11:57 [59 ms] */ 
DROP TABLE IF EXISTS usertbl;
/* 2024-02-08 11:11:58 [35 ms] */ 
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  addr    CHAR(2) NOT NULL,
  mobile1 CHAR(3) NULL, 
  mobile2   CHAR(8) NULL, 
  height    SMALLINT NULL, 
  mDate    DATE NULL 
);
/* 2024-02-08 11:12:57 [30 ms] */ 
DROP TABLE IF EXISTS buytbl;
/* 2024-02-08 11:12:58 [59 ms] */ 
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL, 
  userid  CHAR(8) NOT NULL ,
  prodName CHAR(6) NOT NULL,
  groupName CHAR(4) NULL,
  price     INT  NOT NULL,
  amount    SMALLINT  NOT NULL, 
  PRIMARY KEY(num),
  FOREIGN KEY(userid) REFERENCES usertbl(userID)
);
/* 2024-02-08 11:18:55 [14 ms] */ 
INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
/* 2024-02-08 11:18:55 [3 ms] */ 
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
/* 2024-02-08 11:18:56 [4 ms] */ 
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');
/* 2024-02-08 11:19:02 [6 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL, 30, 2),( NULL, 'KBS', '노트북', '전자', 1000, 1 );
/* 2024-02-08 11:21:43 [11 ms] */ 
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
/* 2024-02-08 11:21:44 [9 ms] */ 
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
/* 2024-02-08 11:21:46 [22 ms] */ 
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
/* 2024-02-08 11:21:47 [3 ms] */ 
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
/* 2024-02-08 11:21:48 [11 ms] */ 
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
/* 2024-02-08 11:21:49 [15 ms] */ 
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
/* 2024-02-08 11:21:50 [15 ms] */ 
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
/* 2024-02-08 11:21:52 [8 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
/* 2024-02-08 11:21:52 [6 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
/* 2024-02-08 11:21:53 [7 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
/* 2024-02-08 11:21:54 [9 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
/* 2024-02-08 11:21:55 [8 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
/* 2024-02-08 11:21:56 [34 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
/* 2024-02-08 11:21:59 [14 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
/* 2024-02-08 11:22:00 [21 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
/* 2024-02-08 11:22:01 [3 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
/* 2024-02-08 11:22:02 [26 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
/* 2024-02-08 11:27:22 [22 ms] */ 
DESCRIBE usertbl;
/* 2024-02-08 11:28:30 [4 ms] */ 
DESC buytbl;
/* 2024-02-08 11:34:52 [17 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 11:35:00 [41 ms] */ 
CREATE TABLE usertbl1
( userID  CHAR(8) NOT NULL,
  name    VARCHAR(10) NOT NULL,
  birthYear   INT NOT NULL,
  -- PRIMARY KEY를 지정하면 키의 이름을 직접 지어줄 수 있음
  CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID)
  -- 2개를 합쳐서 키로 만드는 경우
  -- CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID, userName)
);
/* 2024-02-08 11:35:03 [3 ms] */ 
DESC usertbl1;
/* 2024-02-08 11:35:30 [13 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 11:38:08 [70 ms] */ 
CREATE TABLE usertbl1
( userID  CHAR(8) NOT NULL,
  userName    VARCHAR(10) NOT NULL,
  birthYear   INT NOT NULL,
  -- PRIMARY KEY를 지정하면 키의 이름을 직접 지어줄 수 있음
  -- CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID)
  -- 2개를 합쳐서 키로 만드는 경우
  CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID, userName)
);
/* 2024-02-08 11:38:10 [2 ms] */ 
DESC usertbl1;
/* 2024-02-08 11:40:23 [25 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 11:40:37 [32 ms] */ 
CREATE TABLE usertbl1
( userID  CHAR(8) NOT NULL,
  userName    VARCHAR(10) NOT NULL,
  birthYear   INT NOT NULL,
  -- PRIMARY KEY를 지정하면 키의 이름을 직접 지어줄 수 있음
  CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID)
  -- 2개를 합쳐서 키로 만드는 경우
  -- CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID, userName)
);
/* 2024-02-08 11:43:14 [30 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 11:44:21 [44 ms] */ 
CREATE TABLE usertbl1
( userID  CHAR(8) NOT NULL,
  userName    VARCHAR(10) NOT NULL,
  birthYear   INT NOT NULL
);
/* 2024-02-08 11:44:58 [92 ms] */ 
ALTER TABLE usertbl1
ADD CONSTRAINT PK_usertbl1_userID PRIMARY KEY (userID);
/* 2024-02-08 11:45:09 [5 ms] */ 
desc usertbl1;
/* 2024-02-08 11:47:35 [42 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 11:47:37 [36 ms] */ 
CREATE TABLE usertbl1 (
    userID CHAR(8) NOT NULL, userName VARCHAR(10) NOT NULL, birthYear INT NOT NULL
);
/* 2024-02-08 11:47:38 [75 ms] */ 
ALTER TABLE usertbl1
ADD CONSTRAINT PK_usertbl1_usserID_userName 
PRIMARY KEY (userID, userName);
/* 2024-02-08 11:47:39 [6 ms] */ 
desc usertbl1;
/* 2024-02-08 13:28:23 [21 ms] */ 
DESC usertbl1;
/* 2024-02-08 13:31:29 [91 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 13:31:32 [99 ms] */ 
CREATE TABLE usertbl1 
( userID  CHAR(8) PRIMARY KEY,
  name    VARCHAR(10) , 
  birthYear  INT CHECK (birthYear >= 1900 AND birthYear <= 2023),
  mobile1 char(3) NULL, 
  CONSTRAINT CK_name CHECK (name IS NOT NULL)  
);
/* 2024-02-08 13:31:45 [7 ms] */ 
DESC usertbl1;
/* 2024-02-08 13:36:34 [62 ms] */ 
DROP TABLE IF EXISTS usertbl1;
/* 2024-02-08 13:36:35 [42 ms] */ 
CREATE TABLE usertbl1 
( userID    CHAR(8) NOT NULL PRIMARY KEY,  
  name      VARCHAR(10) NOT NULL, 
  birthYear INT NOT NULL DEFAULT -1,
  addr      CHAR(2) NOT NULL DEFAULT '서울',
  mobile1 CHAR(3) NULL, 
  mobile2 CHAR(8) NULL, 
  height  SMALLINT NULL DEFAULT 170, 
  mDate     DATE NULL
);
/* 2024-02-08 13:36:37 [22 ms] */ 
DESC usertbl1;
/* 2024-02-08 13:43:46 [14 ms] */ 
SELECT * FROM usertbl LIMIT 100;
/* 2024-02-08 13:43:58 [52 ms] */ 
ALTER TABLE `tabledb`.`usertbl1` 
DROP COLUMN `height`;
/* 2024-02-08 13:44:00 [4 ms] */ 
SELECT * FROM usertbl LIMIT 100;
/* 2024-02-08 13:54:24 [14 ms] */ 
CREATE DATABASE sqldb
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-08 15:21:54 [84 ms] */ 
CREATE DATABASE sql_delDB
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-08 15:32:06 [26 ms] */ 
CREATE DATABASE sql_del_db
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2024-02-08 16:41:13 [104 ms] */ 
DROP TABLE IF EXISTS buytbl, usertbl;
/* 2024-02-08 16:41:15 [303 ms] */ 
CREATE TABLE usertbl (
    userID CHAR(8), name VARCHAR(10), birthYear INT, addr CHAR(2), mobile1 CHAR(3), mobile2 CHAR(8), height SMALLINT, mDate DATE
);
/* 2024-02-08 16:41:16 [50 ms] */ 
CREATE TABLE buytbl 
(  num int AUTO_INCREMENT PRIMARY KEY,
  userid  CHAR(8),
  prodName CHAR(6),
  groupName CHAR(4),
  price     INT ,
  amount   SMALLINT
);
/* 2024-02-08 16:41:57 [62 ms] */ 
INSERT INTO usertbl VALUES('KBS', '김범수', NULL, '경남', '011', '2222222', 173, '2012-4-4');
/* 2024-02-08 16:41:59 [4 ms] */ 
INSERT INTO usertbl VALUES('KKH', '김경호', 1871, '전남', '019', '3333333', 177, '2007-7-7');
/* 2024-02-08 16:42:00 [8 ms] */ 
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
/* 2024-02-08 16:42:01 [5 ms] */ 
INSERT INTO usertbl VALUES('JYP', '박진영', 1970, '서울', '010', '5555555', 182, '2010-4-4');
/* 2024-02-08 16:42:03 [17 ms] */ 
INSERT INTO buytbl VALUES ( NULL, 'KBS', '운동화', NULL, 30, 2 );
/* 2024-02-08 16:42:05 [14 ms] */ 
INSERT INTO buytbl VALUES ( NULL, 'KBS', '노트북', '전자', 1000, 1 );
/* 2024-02-08 16:42:06 [4 ms] */ 
INSERT INTO buytbl VALUES ( NULL, 'JYP', '모니터', '전자', 200, 1 );
/* 2024-02-08 16:42:08 [17 ms] */ 
INSERT INTO buytbl VALUES ( NULL, 'BBK', '모니터', '전자', 200, 5 );
/* 2024-02-08 16:42:15 [26 ms] */ 
DELETE FROM buytbl WHERE userid = 'BBK';
/* 2024-02-08 16:42:21 [6 ms] */ 
INSERT INTO buytbl VALUES ( NULL, 'BBK', '모니터', '전자', 200, 5 );
/* 2024-02-08 16:42:23 [3 ms] */ 
SET foreign_key_checks = 0;
/* 2024-02-08 16:42:31 [5 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
/* 2024-02-08 16:42:32 [6 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
/* 2024-02-08 16:42:33 [11 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
/* 2024-02-08 16:42:34 [17 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
/* 2024-02-08 16:42:34 [11 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
/* 2024-02-08 16:42:35 [3 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
/* 2024-02-08 16:42:36 [3 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
/* 2024-02-08 16:42:37 [8 ms] */ 
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
/* 2024-02-08 16:42:39 [6 ms] */ 
SET foreign_key_checks = 1;
/* 2024-02-08 16:42:51 [3 ms] */ 
SELECT * FROM usertbl WHERE `birthYear` < 1900 OR `birthYear` > 2023 LIMIT 100;
/* 2024-02-08 16:42:53 [13 ms] */ 
UPDATE usertbl SET birthYear = 1971 WHERE userID = 'KKH';
/* 2024-02-08 16:42:55 [1 ms] */ 
SELECT * from usertbl WHERE `birthYear` is NULL LIMIT 100;
/* 2024-02-08 16:42:57 [22 ms] */ 
UPDATE usertbl SET birthYear=1982 WHERE userID='KKH';
/* 2024-02-08 16:43:01 [4 ms] */ 
INSERT INTO usertbl VALUES('TKV', '태권뷔', 2999, '우주', NULL  , NULL , 186, '2023-12-12');
/* 2024-02-08 16:43:03 [12 ms] */ 
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL , 186, '2013-12-12');
/* 2024-02-08 16:43:04 [2 ms] */ 
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
/* 2024-02-08 16:43:05 [5 ms] */ 
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL , 170, '2005-5-5');
/* 2024-02-08 16:43:06 [10 ms] */ 
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
/* 2024-02-08 16:43:09 [8 ms] */ 
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
/* 2024-02-08 16:43:10 [5 ms] */ 
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
/* 2024-02-08 16:43:55 [9 ms] */ 
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2)  AS '연락처'
  FROM buytbl B
    INNER JOIN usertbl U
        ON B.userid = U.userid LIMIT 100;
/* 2024-02-08 16:43:56 [12 ms] */ 
SELECT count(userID) FROM buytbl LIMIT 100;
/* 2024-02-08 16:43:58 [3 ms] */ 
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
FROM buytbl B
    LEFT OUTER JOIN usertbl U ON B.userid = U.userid
ORDER BY B.userid LIMIT 100;
/* 2024-02-08 16:44:00 [6 ms] */ 
SELECT * FROM buytbl WHERE userid = 'BBK' LIMIT 100;
/* 2024-02-08 16:44:02 [2 ms] */ 
UPDATE usertbl SET userID = 'BBK' WHERE userID = 'VVK';
/* 2024-02-08 16:44:03 [6 ms] */ 
UPDATE usertbl SET userID = 'VVK' WHERE userID = 'BBK';
/* 2024-02-08 16:44:05 [1 ms] */ 
SELECT * FROM buytbl LIMIT 100;
/* 2024-02-08 16:44:10 [2 ms] */ 
UPDATE usertbl SET userID = 'VVK' WHERE userID='BBK';
/* 2024-02-08 16:44:11 [16 ms] */ 
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
FROM buytbl B
LEFT OUTER JOIN usertbl U
ON B.userid = U.userid
ORDER BY B.userid LIMIT 100;
/* 2024-02-08 16:44:14 [18 ms] */ 
DELETE FROM usertbl WHERE userID = 'VVK';
/* 2024-02-08 16:44:17 [7 ms] */ 
DELETE FROM usertbl WHERE userID ='VVK';
/* 2024-02-08 16:44:19 [7 ms] */ 
SELECT B.userid, U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
FROM buytbl B
    LEFT OUTER JOIN usertbl U 
    ON B.userid = U.userid
ORDER BY B.userid LIMIT 100;
/* 2024-02-08 16:44:21 [37 ms] */ 
CREATE TABLE sql_del_db.usertbl_del like sqldb.usertbl;
/* 2024-02-08 16:44:23 [48 ms] */ 
CREATE TABLE sql_del_db.buytbl like sqldb.buytbl;
