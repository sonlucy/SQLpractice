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
