-- Active: 1707113191831@@127.0.0.1@3306@moviedb

-- 테이블 생성
CREATE TABLE movietbl 
(
  movie_id        INT,
  movie_title     VARCHAR(30),
  movie_director  VARCHAR(20),
  movie_star      VARCHAR(20),
  movie_script    LONGTEXT,
  movie_film      LONGBLOB
) DEFAULT CHARSET=utf8mb4;

SHOW TABLES; -- 테이블 확인

DESC movietbl -- 생성 테이블의 필드 확인


-- 3. 값 넣기
INSERT INTO movietbl VALUES ( 1, '쉰들러 리스트', '스필버그', '리암 니슨',  
LOAD_FILE('C:/SQL/Movies/Schindler.txt'), LOAD_FILE('C:/SQL/Movies/Schindler.mp4') );

-- 데이터 확인
SELECT * FROM movietbl;

-- 최대 패킷 크기 확인
SHOW VARIABLES LIKE 'max_allowed_packet';

SHOW variables LIKE 'secure_file_priv';

-- ** 파일 업로드 환경 수정
-- C:\ProgramData\MySQL\MySQL Server 8.0  이동
-- my.ini 을 메모장에서 열기
-- 


-- 문제가 없다면 기존에 입력한 데이터 삭제
TRUNCATE movietbl; -- 데이터 초기화
DELETE FROM movietbl; -- 테이블의 모든 데이터 삭제(초기화 효과)
SELECT * FROM movietbl;
INSERT INTO movietbl VALUES ( 1, '쉰들러 리스트', '스필버그', '리암 니슨',  
LOAD_FILE('C:/SQL/Movies/Schindler.txt'), LOAD_FILE('C:/SQL/Movies/Schindler.mp4') );
INSERT INTO movietbl VALUES ( 2, '쇼생크 탈출', '프랭크 다라본트', '팀 로빈스',  
LOAD_FILE('C:/SQL/Movies/Shawshank.txt'), LOAD_FILE('C:/SQL/Movies/Shawshank.mp4') );    
INSERT INTO movietbl VALUES ( 3, '라스트 모히칸', '마이클 만', '다니엘 데이 루이스',
LOAD_FILE('C:/SQL/Movies/Mohican.txt'), LOAD_FILE('C:/SQL/Movies/Mohican.mp4') );

-- 데이터 확인
--SELECT * FROM movietbl;

/*
--데이터 수정
UPDATE movietbl SET movie_film=LOAD_FILE('C:/SQL/Shawshank.mp4')
WHERE movid_id =2;*/

-- 파일 다운로드:

-- 텍스트 파일 다운로드
SELECT movie_script FROM movietbl WHERE movie_id=1
INTO OUTFILE 'C:/SQL/Movies/Schindler_out.txt'
LINES TERMINATED BY "\\n"; -- \n(줄바꾸기)를 그대로 유지해서 저장

-- 영화 다운로드
SELECT movie_film FROM movietbl  WHERE movie_id=3 
INTO DUMPFILE 'C:/SQL/Movies/Mohican_out.mp4';

-- ***********************
-- *** 피벗 테이블 구현 ***
-- ***********************

-- 피벗(Pivor) 테이블이란 많은 양의 데이터에서 필요한 자료만을 뽑아 통계를 계산해 표로 작성해주는 기능

-- 실습 테이블 및 데이터 입력
CREATE TABLE pivotTest ( uName CHAR(3), season CHAR(2), amount INT );

-- 데이터를 동시에 여러건 입력
INSERT  INTO  pivotTest VALUES
('김범수', '겨울',  10), ('윤종신', '여름',  15), ('김범수', '가을',  25), ('김범수', '봄',     3),
('김범수', '봄',    37), ('윤종신', '겨울',  40), ('김범수', '여름',  14), ('김범수', '겨울',  22),
('윤종신', '여름',  64);

SELECT * FROM pivottest;

-- 피벗 테이블 생성(이름 기준)
SELECT uName, 
  SUM(IF(season='봄', amount, 0)) AS '봄', 
  SUM(IF(season='여름', amount, 0)) AS '여름',
  SUM(IF(season='가을', amount, 0)) AS '가을',
  SUM(IF(season='겨울', amount, 0)) AS '겨울',
  SUM(amount) AS '합계' FROM pivotTest GROUP BY uName;

-- 피벗 테이블 (계절 기준)
SELECT season, 
  SUM(IF(`uName`='김범수', amount, 0)) AS '김범수', 
  SUM(IF(`uName`='윤종신', amount, 0)) AS '윤종신',
  SUM(amount) AS '합계' FROM pivotTest GROUP BY season;


-- **************************
-- *** MySQL에서 JSON 제어 ***
-- **************************
-- 대상: testdb.usertbl

SELECT * FROM testdb.usertbl;

-- JSON 형식으로 출력
SELECT JSON_OBJECT('name', name, 'addr', addr, 'height', height) AS 'JSON_데이터'
FROM testdb.usertbl WHERE height >= 180;

set @json = '{"usertbl":
[
  {"addr": "서울", "name": "임재범", "height": 182} ,
  {"addr": "서울", "name": "이승기", "height": 182} ,
  {"addr": "서울", "name": "성시경", "height": 186} 
]
}';

-- json이 유효한지 1/0 리턴
SELECT JSON_VALID(@json) AS JSON_VALID;

-- JSON_SEARCH(데이터, one/all, 찾을것)
-- 데이터 내에서 찾을거 첫번째 인덱스 반환(0부터 시작)
SELECT JSON_SEARCH(@json, 'one', '성시경') AS JSON_SEARCH;

-- 인덱스 기반으로 검색
SELECT JSON_EXTRACT(@json, '$.usertbl[2].name') AS JSON_EXTRACT;

-- 입력해라(Create)
SELECT JSON_INSERT(@json, '$.usertbl[0].mDate', '2009-09-09') AS JSON_INSERT;

-- 변경해라(Update)
SELECT JSON_REPLACE(@json, '$.usertbl[0].name', '홍길동') AS JSON_REPLACE;

-- 삭제해라(Delete)
SELECT JSON_REMOVE(@json, '$.usertbl[0]') AS JSON_REMOVE;




