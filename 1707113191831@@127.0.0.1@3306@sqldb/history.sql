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
