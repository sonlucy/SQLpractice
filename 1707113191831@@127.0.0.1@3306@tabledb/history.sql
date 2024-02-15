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
