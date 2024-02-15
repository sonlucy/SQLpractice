-- Active: 1707113191831@@127.0.0.1@3306@sqldb
CREATE TABLE stdtbl 
( stdName    VARCHAR(10) NOT NULL PRIMARY KEY,
  addr   CHAR(4) NOT NULL
);

CREATE TABLE clubtbl 
( clubName    VARCHAR(10) NOT NULL PRIMARY KEY,
  roomNo    CHAR(4) NOT NULL
);

CREATE TABLE stdclubtbl
(  
  num int AUTO_INCREMENT NOT NULL PRIMARY KEY, 
  stdName    VARCHAR(10) NOT NULL,
  clubName    VARCHAR(10) NOT NULL,
FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
FOREIGN KEY(clubName) REFERENCES clubtbl(clubName)
);


-- 데이터 입력
INSERT INTO stdtbl VALUES ('김범수','경남'), ('성시경','서울'), ('조용필','경기'), ('은지원','경북'),('바비킴','서울');
INSERT INTO clubtbl VALUES ('수영','101호'), ('바둑','102호'), ('축구','103호'), ('봉사','104호');
INSERT INTO stdclubtbl VALUES (NULL, '김범수','바둑'), (NULL,'김범수','축구'), 
          (NULL,'조용필','축구'), (NULL,'은지원','축구'), (NULL,'은지원','봉사'), (NULL,'바비킴','봉사');

SELECT * FROM stdclubtbl;

-- ************************************************ --
-- *** 조인(join)
-- ************************************************ --

-- 조인이란 두 개 이상의 테이블을 서로 묶어서 하나의 결과로 출력해주는 것

-- 학생이름, 지역, 동아리이름, 강의실

-- Inner join
SELECT stdtbl.stdName, stdtbl.addr, stdclubtbl.clubName, clubtbl.roomNo
  FROM stdtbl 
    INNER JOIN stdclubtbl
      ON stdtbl.stdName = stdclubtbl.stdName
    INNER JOIN clubtbl 
      ON stdclubtbl.clubName = clubtbl.clubName
  WHERE stdtbl.`stdName` ='김범수';

SELECT S.stdName, S.addr, SC.clubName, C.roomNo
  FROM stdtbl S 
    INNER JOIN stdclubtbl SC
      ON S.stdName = SC.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName 
  WHERE SC.`clubName` = '축구';


SELECT C.clubName, C.roomNo, S.stdName, S.addr
  FROM  stdtbl S
    INNER JOIN stdclubtbl SC
      ON SC.stdName = S.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName
  ORDER BY C.clubName;

-- DISTINCT : 중복 제거
SELECT DISTINCT C.clubName, C.roomNo
  FROM  stdtbl S
    INNER JOIN stdclubtbl SC
      ON SC.stdName = S.stdName
    INNER JOIN clubtbl C
      ON SC.clubName = C.clubName
  ORDER BY C.clubName;


-- Outer join
-- 조건에 만족되지 않는 행도 포함
-- 모든 학생에 대한 동아리 정보와 모든 동아리에 대한 학생의 정보
SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  LEFT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName;

SELECT S.stdname, S.addr, C.clubName, C.roomNo
FROM stdtbl S
  LEFT OUTER JOIN stdclubtbl SC
    ON S.stdName = SC.stdName 
  RIGHT OUTER JOIN clubtbl C
    ON SC.clubName = C.clubName;  

-- 두 조회 결과를 같이 확인
-- UNION은 중복된 열 제거
-- UNION ALL은 중복된 열까지 모두 출력
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
    ON SC.clubName = C.clubName; 



