-- Active: 1707113191831@@127.0.0.1@3306@tabledb

--1. 기존 db 삭제 후 새로 생성
DROP DATABASE if EXISTS tabledb;
CREATE DATABASE tabledb; 

-- 2. 테이블 생성
use tabledb;

DROP TABLE IF EXISTS buytbl, usertbl; -- 기존 테이블 삭제

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

DROP TABLE IF EXISTS buytbl;
CREATE TABLE buytbl -- 구매 테이블
(
    num INT, -- 순번(PK)
    userid CHAR(8), -- 아이디(FK)
    prodName CHAR(6), -- 물품명
    groupName CHAR(4), -- 분류
    price INT, -- 단가
    amount SMALLINT -- 수량
);

-- 3. 조건을 넣어서 테이블 생성하가ㅣ
-- (NULL, NOT NULL), AUTO_INCREMENT, FOREIGN KEY, REFERENCES

DROP TABLE IF EXISTS usertbl;
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

-- 구매 테이블
DROP TABLE IF EXISTS buytbl;
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

INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');

INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL, 30, 2),( NULL, 'KBS', '노트북', '전자', 1000, 1 );

INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200, 1); -- 미등록 회원으로 에러


-- 추가 입력 
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);


-- 제약조건 확인 => 테이블 구조 확인
DESCRIBE usertbl;
DESC buytbl;

-- PRIMARY KEY(기본키) 제약 조건
-- 식별자(ID) 기능, NULL 비허용, PRI 라고 함
-- 예시: 주민의 주민번호, 회원가입 아이디
DROP TABLE IF EXISTS usertbl1;
CREATE TABLE usertbl1
( userID  CHAR(8) NOT NULL,
  userName    VARCHAR(10) NOT NULL,
  birthYear   INT NOT NULL,
  -- PRIMARY KEY를 지정하면 키의 이름을 직접 지어줄 수 있음
  -- CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID)
  2개를 합쳐서 키로 만드는 경우
  -- CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID, userName)
);

DESC usertbl1;

-- 이미 사용중인 table에 primary key 걸기
DROP TABLE IF EXISTS usertbl1;

CREATE TABLE usertbl1
( userID  CHAR(8) NOT NULL,
  userName    VARCHAR(10) NOT NULL,
  birthYear   INT NOT NULL
);

ALTER TABLE usertbl1
ADD CONSTRAINT PK_usertbl1_userID PRIMARY KEY (userID);

desc usertbl1;


-- 이미 사용중인 table에 primary key 걸기(userID, userName)
DROP TABLE IF EXISTS usertbl1;

CREATE TABLE usertbl1 (
    userID CHAR(8) NOT NULL, userName VARCHAR(10) NOT NULL, birthYear INT NOT NULL
);

ALTER TABLE usertbl1
ADD CONSTRAINT PK_usertbl1_usserID_userName 
PRIMARY KEY (userID, userName);

desc usertbl1;


-- FOREIGN KEY(외래키) 제약 조건
-- 두 테이블 사이의 관계를 선언함으로써 데이터의 무결성을 보장
-- 외래키 테이블이 참조하는 기준 테이블의 열은 반드시 PRIMARY KEY 거나 UNIQUE 제약 조건이 설정되어야 함
-- 예시: 회원만 구매 가능, 학생만 성적 조회 가능

DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL 
);

-- usertbl의 userID로 외래키 지정
CREATE TABLE buytbl
(
  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  userID CHAR(8) NOT NULL,
  prodName CHAR(6) NOT NULL,
  -- 외래키에 이름을 지정하는 방식
  CONSTRAINT FK_usertbl_buytbl FOREIGN KEY(userID) REFERENCES usertbl(userID)
)

DROP TABLE IF EXISTS buytbl;
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  userID  CHAR(8) NOT NULL, 
  prodName CHAR(6) NOT NULL,
  -- 외래키에 이름을 지정하는 방식
  CONSTRAINT FK_usertbl_buytbl FOREIGN KEY(userID) REFERENCES usertbl(userID)
);

-- 이미 사용중인 Table에 FOREIGN KEY 걸기
ALTER TABLE buyTBL
  ADD CONSTRAINT FK_userTBL_buyTBL
  FOREIGN KEY (userID)
  REFERENCES userTBL(userID);


-- *****************************************************************************
-- 외래키 옵션 중에 ON DELETE CASCADE, ON UPDATE CASCADE가 있음
-- 기존 테이블에서 해당 튜플이 삭제되면 자동으로 외래키가 잡힌 값들을 삭제하거나 업데이트 진행

-- 기존 외래키 삭제
ALTER TABLE buytbl
DROP FOREIGN KEY FK_userTBL_buyTBL;

-- 외래키 새로 추가
ALTER TABLE buytbl
ADD TABLE FK_userTBL_buyTBL FOREIGN KEY (userID) REFERENCES usertbl (userID)
-- 참조값이 업데이트 되면 자동으로 업데이트
ON UPDATE CASCADE;

-- 04 제약조건(Unique, Check 등)
-- UNIQUE 제약 조건
-- 중복되지 않는 유일한 값을 입력, NULL 허용
-- 기본키가 아닌 것들 중 유일해야 한 것들에 사용하기 유용
-- 예시: 이메일, 전화번호
DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID    CHAR(8) NOT NULL PRIMARY KEY,
  name      VARCHAR(10) NOT NULL, 
  birthYear INT NOT NULL,  
  email     CHAR(30) NULL ,  
  CONSTRAINT AK_email UNIQUE (email)
);

DESC usertbl1;


-- CHECK 제약 조건
-- 입력할 때 데이터를 검사하는 기능
-- 키에 음수 불가, 출생년도가 1900년 이후만 가능, 이름은 반드시 넣어야 함


-- 출생연도가 1900년 이후 그리고 2023년 이전, 이름은 반드시 넣어야 함.
DROP TABLE IF EXISTS usertbl1;
CREATE TABLE usertbl1 
( userID  CHAR(8) PRIMARY KEY,
  name    VARCHAR(10) , 
  birthYear  INT CHECK (birthYear >= 1900 AND birthYear <= 2023),
  mobile1 char(3) NULL, 
  CONSTRAINT CK_name CHECK (name IS NOT NULL)  
);

DESC usertbl1;

-- 휴대폰 국번 체크
ALTER TABLE usertbl1
  ADD CONSTRAINT CK_mobile1
  CHECK (mobile1 IN ('010', '011', '016', '017', '018', '019'));

-- DEFAULT 정의
-- 값을 입력하지 않으면 자동으로 입력되게 함
-- 예시: 국가를 자동으로 한국으로 하기

DROP TABLE IF EXISTS usertbl1;
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

DESC usertbl1;


-- 이미 사용 중인 TABLE에 DEFAULT 넣기
ALTER TABLE usertbl1
ALTER COLUMN birthYear SET DEFAULT -1;
ALTER TABLE usertbl1
ALTER COLUMN addr SET DEFAULT '한국';

DESC usertbl1;

-- 이미 DEFAULT 값이 설정중인 테이블에 데이터 넣기
-- default 문은 DEFAULT로 설정된 값을 자동 입력
INSERT INTO usertbl1 VALUES ('LHL', '이혜리', default, default, '011', '1234567', default, '2023.12.12');
-- 열이름이 명시되지 않으면 DEFAULT로 설정된 값을 자동 입력한다
INSERT INTO usertbl1(userID, name) VALUES('KAY', '김아영');
-- 값이 직접 명기되면 DEFAULT로 설정된 값은 무시된다.
INSERT INTO usertbl1 VALUES ('WB', '원빈', 1982, '대전', '019', '9876543', 176, '2020.5.5');
SELECT * FROM usertbl;

-- NULL 값 허용
-- NULL은 NULL 허용, NOT NULL은 반드시 채워주세요.
-- NULL 저장 시에 CHAR(고정 문자)는 공간을 모두 차지, VARCHAR(가변 문자)는 공간 차지 X
-- NULL 값을 많이 입력한다면 가변 길이의 데이터 형식을 사용 추천!

-- 필드(열) 삭제
ALTER TABLE `tabledb`.`usertbl1` 
DROP COLUMN `height`;

SELECT * FROM usertbl;

-- *********************************************
-- 테이블 수정
-- 열 이름 및 데이터 형식 변경
ALTER TABLE usertbl
CHANGE COLUMN uName VARCHAR(20) NULL;

-- 기본 키 삭제
ALTER TABLE usertbl
DROP PRIMARY KEY;
-- 제약 조건이 걸여있으면 삭제 불가
-- 




---------------- 놓침




