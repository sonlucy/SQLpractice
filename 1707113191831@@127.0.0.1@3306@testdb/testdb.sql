-- Active: 1707113191831@@127.0.0.1@3306@testdb
-- Active: 1707113191831@@127.0.0.1@3306@testdb-- Active: 1707113191831@@127.0.0.1@3306@testdb#usertbl

SELECT * FROM usertbl -- 전체 데이터 검색

-- 조회된 필드에 대해 별명 정의하기
SELECT uid as 아이디, upw as 패스워드, name as 이름, mDate as 등록일 from usertbl

-- 지역이 경남, 전남, 경북인 데이터 조회
SELECT name, height FROM usertbl WHERE addr ='경남' OR addr ='전남' OR addr = '경북';
SELECT name, height FROM usertbl WHERE addr in ('경남', '전남', '경북');

-- 내용에서 특정 문자나 단어가 포함되어 있는 데이터 조회(like)
-- % : 모든 글자를 대표, _ : 한개의 글자를 대표
SELECT name, height FROM usertbl WHERE name LIKE '김%'; -- '김'으로 시작되는 모든 레코드 조회
SELECT name, height FROM usertbl WHERE name LIKE '_종신';  -- 2~3번째 글자가 종신인 데이터 조회


-- [문제1] buytbl 테이블에서 userID에 B가 포함된 모든 데이터 조회 
SELECT * FROM buytbl WHERE userID LIKE '%B%';

-- [문제2] buytbl 테이블에서 userID에 가운데 B가 포함된 모든 데이터 조회
SELECT * FROM buytbl WHERE userID LIKE '_B_';

-- ========================= ANY, ALL, SOME, SubQuery(하위쿼리) ================================

-- SubQuery(서브쿼리)
SELECT uid, upw, name FROM usertbl WHERE height > 177;
-- 김경호의 키보다 큰 사람들에 대한 데이터 조회
SELECT uid, upw, name FROM usertbl 
WHERE height > (
  SELECT height FROM usertbl WHERE name = '김경호'
  );

-- SubQuery(서브쿼리)가 2개인 경우 ******
SELECT name, height FROM usertbl WHERE addr = '경남';

-- 경남인 사람이 2명으로 기준값이 2개가 나타나 오류: Subquery returns more than 1 row
SELECT uid, upw, name FROM usertbl
WHERE height > (
  SELECT height FROM usertbl WHERE addr = '경남'
  );

-- ANY(조건들 중 하나만 만족하면 실행) => OR
SELECT name, height FROM usertbl
WHERE height > ANY (
  SELECT height FROM usertbl WHERE addr = '경남'
  );

-- ALL 사용(조건 모두 만족) => AND
SELECT name, height FROM usertbl 
WHERE height > ALL (
  SELECT height FROM usertbl WHERE addr = '경남'
  );

-- ** 정렬하기 ORDER BY option: [DESC: 내림차순, ASC: 오름차순] *** --
SELECT name, height, `mDate` FROM usertbl ORDER BY `mDate`;
SELECT name, height, `mDate` FROM usertbl ORDER BY `mDate` DESC;

-- 두개 이상의 필드를 기준으로 정렬
SELECT name, height, mDate FROM usertbl ORDER BY height DESC, mDate ASC;


-- *** 중복 자료는 하나만 출력(DISTINCT) => 결과값 중복 제거
SELECT addr FROM usertbl;
SELECT DISTINCT addr FROM usertbl;

-- *** 조회결과에 대한 출력 갯수 제한 : LIMI *** --
SELECT * FROM usertbl LIMIT 5;

-- *** 테이블 복사하기 CREATE TABLE ... SELECT ** ---
-- '모니터' 데이터를 검색해 테이블로 내보내기(데이터 형식)
SELECT * FROM buytbl WHERE `prodName`='모니터';
--CREATE TABLE monitortbl (SELECT * FROM buytbl WHERE `prodName` = '모니터');

CREATE TABLE schtbl (SELECT * FROM buytbl WHERE `prodName` = '책');

--SELECT * FROM monitortbl
SELECT * FROM schtbl

-- *** GROUP BY ***
SELECT * FROM buytbl

-- 품목별 총 구매 건수
SELECT `prodName` as 품목명, sum(amount) as 합계 
FROM buytbl 
GROUP BY `prodName`;

-- 품목별 평균 구매 건수
SELECT `prodName` as 품목명, AVG(amount) as 합계
FROM buytbl
GROUP BY `prodName`;

-- 가장 큰사람, 작은사람의 이름과 키 출력
SELECT name, height FROM usertbl
    WHERE height = (SELECT MAX(height) FROM usertbl) 
      OR  height = (SELECT MIN(height) FROM usertbl);

-- *** GROUP BY는 WHERE절 사용X => HAVING절 사용 *** --
-- 사용자별 총 구입 금액 계산
SELECT `userID` as '사용자', SUM(price * amount) as '총구매액' FROM buytbl
GROUP BY `userID` WHERE SUM(price*amount) > 1000; -- 에러 발생

SELECT `userID` as '사용자', SUM(price * amount) as '총구매액' FROM buytbl
GROUP BY `userID` HAVING SUM(price*amount) > 1000;


-- ROLLUP : 그룹별 중간 소계 계산
SELECT num, groupName, SUM(price * amount ) as '총구매액'
FROM buytbl
GROUP BY groupName, num WITH ROLLUP;

-- *******************************************
-- *                SQL 분류                 *
-- *******************************************

/*
1. DML(Data Manipulation Language)
    데이터 조작(UPDATE, INSERT, DELETE), 트렌잭션 발생(SELECT)

2. DDL(Data Definition Language)
    데이터베이스 개체 조작(CREATE, DROP, ALTER)

3. DCL(Data Control Language)
    사용자 권한 부여(GRANT/REVOKE/DENY)

*/


-- *** 데이터 조작(UPDATE, INSERT, DELETE) ***
-- INSERT문 => 테이블에 새로운 데이터를 추가할때 사용
-- 형식: INSERT INTO 테이블[(열1, 열2, ...)] VALUES (값1, 값2, ...)
--       INSERT INTO 테이블 VALUES (값1, 값2, ...) => 테이블에 모든 데이터를 입력, 열의 순서대로 값 입력

-- testtbl 테이블 생성
CREATE TABLE testtbl(id int, username CHAR(4), age int);

-- 모든 값을 다 넣을 때
INSERT INTO testtbl VALUES(1, "홍길동", 25);

-- 특정 필드에만 값 입력
INSERT INTO testtbl(id, username) VALUES(2, "설현");

-- 테이블에 추가하는 데이터 순서를 사용자가 정의
INSERT INTO testtbl(username, id, age) VALUES("김파일", 3, 33);

SELECT * FROM testtbl;





-- AUTO_INCREMENT : 번호 자동 생성
CREATE TABLE testtbl2 ( 
  id int AUTO_INCREMENT PRIMARY KEY, 
  username CHAR(4), 
  age int 
  );

-- 전체 입력 형태로 추가시
INSERT INTO testtbl2 VALUES (null, '지민', 25);

-- 특정값을 지정하여 추가(자동 번호가 생성되는 필드는 제외하고 입력 가능)
INSERT INTO testtbl2(username, age) VALUES ('유나', 22);

--
INSERT INTO testtbl2 VALUES (null, '유경', 21);

SELECT * FROM testtbl2;




-- 킷값을 1000부터 3씩 증가하려면
CREATE TABLE testtbl3 (
    id INT AUTO_INCREMENT PRIMARY KEY, username CHAR(3), age INT
);

-- 자동생성 1000으로 설정
ALTER TABLE testtbl3 AUTO_INCREMENT = 1000;

-- 증감을 3으로 설정
SET @@auto_increment_increment = 3;

INSERT INTO testtbl3 VALUES (NULL, '나연', 20);

INSERT INTO testtbl3 VALUES (NULL, '정연', 18);

INSERT INTO testtbl3 VALUES (NULL, '모모', 19);

SELECT * FROM testtbl3;


-- 조회결과를 특정 테이블에 추가
INSERT INTO testtbl SELECT `ID`, `CountryCode`, `Population` FROM world.city
WHERE `Population` >= 1000000;

SELECT * FROM testtbl;


/* 조건부 데이터 추가 */

-- 에러가 나면 무시하고 넘어감
-- INSERT IGNORE INTO 테이블이름 VALUES('값1', '값2', '값3');
INSERT INTO testtbl3 VALUES (1006, '모모', 19); -- pk 중복으로 오류
INSERT IGNORE testtbl3 VALUES (1006, '무무', 19); -- pk 중복으로 오류 => 무시 (continue. 즉 아무것도 일어나지x 걍 무시)

-- 중복이 발생하면 ON DUPLICATE 실행
-- 중복이 발생하지 않으면 VALUE로 실행
-- INSERT INTO 테이블이름 VALUES('값1', '값2', '값3')
-- ON DUPLICATE KEY UPDATE 열2='값2', 열3='값3';

-- 에러가 발생하지 않으면 데이터를 추가하고, 에러가 발생하면 1006 데이터를 업데이트 진행
INSERT INTO testtbl3 VALUES(1006, '모모', 19)
ON DUPLICATE KEY UPDATE username='무무', age=33;


/* 데이터 수정(Update) 
  기본 형식
  UPDATE 테이블명 SET 대상열1='값1', 대상열2='값2', ...
  WHERE 조건;
  */


-- 특정 조건을 만족하는 데이터에 대한 업데이트 진행
UPDATE testtbl set age = 33 WHERE username = '설현'

SELECT * FROM testtbl;


-- 조건 없이 업데이트 => 특정 필드값들 모두 데이터를 동일하게 만들때
UPDATE testtbl3 set age = 35;  -- 모든 데이터의 age가 35로 변경

-- 일괄변경
UPDATE testtbl3 set age = age * 1.3;
SELECT * FROM testtbl3;

/* 데이터 삭제(DELETE FROM) : 행 단위 삭제
  형식
  DELETE FROM 테이블이름 WHERE 조건;
 */

-- 테이블 초기화
DELETE FROM testtbl;

SELECT * FROM testtbl;


-- 특정 조건을 만족하는 데이터만 삭제
DELETE FROM testtbl3 WHERE username='나연';
SELECT * FROM testtbl3;

-- 특정 테이블에 있는 데이터를 초기화하고 새로운 데이터로 채우기
DELETE FROM schtbl;
INSERT INTO schtbl select * from buytbl where `prodName`='책';



-- usertbl에서 id, pw 조회
SELECT uid, upw FROM usertbl WHERE uid = 'BBK';







-- SQL 변수 사용하기
set @myVar1 = 180;
set @myVar2 = 3;
set @myVar3 = 4.52;
set @myVar4 = '가수 이름=>';

-- 변수에 입력된 값 확인
SELECT @myVar1;
SELECT @myVar2+@myVar3;

-- 변수를 이용한 데이터 조회
SELECT @myVar4, name FROM usertbl WHERE height > @myVar1


-- **** 02 데이터형 변환, 내장 함수 **** --

-- 기본형식
-- CAST(expression AS 데이터형식 [(길이)])
-- CONVERT(expression, 데이터형식 [(길이)])

SELECT AVG(price) as '평균단가' FROM buytbl; --142.9167 실수형
-- 정수형(integer)으로 결과값 데이터형 변환
SELECT CAST(AVG(price) as SIGNED) as '평균단가' FROM buytbl;
SELECT CONVERT(AVG(price), SIGNED INTEGER) as '평균단가' FROM buytbl;
-- SELECT CAST(AVG(price) as INTEGER) as '평균단가' FROM buytbl;
-- SELECT CONVERT(AVG(price), INTEGER) as '평균단가' FROM buytbl;


-- 날짜 변환하기
SELECT CAST('2021/10/01' AS DATE); -- 문자형 데이터 => 날짜형

SELECT CONVERT('2021/10/01', DATE); 


-- 문자열로 이어주기
-- CONCAT(문자1, 문자2, ...)
SELECT num, 
  CONCAT(CAST(price as CHAR(10)), 'X', CAST(amount as CHAR(4)), '=') AS '단가X수량',
  price*amount as '구매액'
FROM buytbl
/*
SELECT num, 
  CONCAT(CAST(price AS CHAR(10)), ' X ', CONVERT(amount, CHAR(4)), ' = ') AS '단가X수량',
  price*amount AS '구매액'
FROM buytbl;
*/


-- 암시적 변환
SELECT '100' + '200' ; -- 문자와 문자를 더함 (정수로 변환되서 연산됨)
SELECT CONCAT('100', '200'); -- 문자와 문자를 연결 (문자로 처리)
SELECT CONCAT(100, '200'); -- 정수와 문자를 연결 (정수가 문자로 변환되서 처리)
SELECT 1 > '2mega'; -- 정수인 2로 변환되어서 비교
SELECT 3 > '2MEGA'; -- 정수인 2로 변환되어서 비교
SELECT 0 = 'mega2'; -- 문자는 0으로 변환됨


-- **************************
-- *** MYSQL 내장 함수 *** --
-- **************************

-- 참/거짓에 따른 문자열 변환
-- IF(조건식, 참, 거짓)
SELECT IF(200>400, '출발합니다.', '도착했습니다.');

-- IFNULL(수식1, 수식2)
-- 수식1 NULL 이면 수식2 출력, 아니면 수식1 출력
SELECT num, IFNULL(groupName, '기타') FROM buytbl; 

-- NULLIF(수식1, 수식2)
-- 수식1과 수식2 같으면 NULL 반환, 다르면 수식1 반환
SELECT NULLIF(100,100), NULLIF(200,100);


-- CASE의 값에 따라 값 반환
-- CASE의 경우
--      WHEN 보기1 THEN 반환1
--      WHEN 보기2 THEN 반환2
--      ELSE 그밖의 경우
-- END

SET @mydata = 3;
SELECT case @mydata
  WHEN 1 THEN '최솟값'
  WHEN 5 THEN '중앙값'
  WHEN 10 THEN '최대값'
  ELSE '범위에 없음'
END

-- *** 문자열 함수 *** --
-- ASCII(문자): 문자를 아스키 코드값으로 반환
-- CHAR(숫자): 아스키 코드값을 문자로 반환
SELECT ASCII('A'), CHAR(65);

-- BIT_LENGTH(문자열), CHAR_LENGTH(문자열), LENGTH(문자열)
-- 문자열의 길이를 반환, 내부적 bit, 글자의 갯수, 내부적 type
-- 내부 크기보다 글자의 길이만 보는 경우가 일반적 -> CHAR_LENGTH
SELECT BIT_LENGTH('abc'), CHAR_LENGTH('abc'), LENGTH('abc');
SELECT BIT_LENGTH('가나다'), CHAR_LENGTH('가나다'), LENGTH('가나다');

-- CONCAT_WS(구분자, 문자1, 문자2, ...)
-- 구분자를 이용해 문자를 연결한다.
SELECT CONCAT_WS('/', '2025', '01', '01');

-- ELT(인덱스, 문자1, 문자2, ...): 인덱스에 해당하는 문자를 출력, 없으면 NULL
-- FIELD(검색어, 문자1, 문자2, ...): 검색어의 인덱스를 숫자로 출력, 없으면 0 출력
-- FIND_IN_SET(검색어, '문자1,문자2,...'): ','기준으로 인덱스를 숫자로 출력, 없으면 0 출력
-- INSTR('문자열', 부분 문자열): 부분문자열의 시작 인덱스를 숫자로 출력, 없으면 0 출력
-- LOCATE(부분 문자열, '문자열'): 부분문자열의 시작 인덱스를 숫자로 출력, 없으면 0 출력
SELECT ELT(2, '하나', '둘', '셋'), FIELD('둘', '하나', '둘', '셋'), 
  FIND_IN_SET('둘', '하나, 둘, 셋'), INSTR('하나둘셋', '둘'), LOCATE('둘', '하나둘셋');

-- FORMAT(숫자, 자릿수)
-- 숫자를 자릿수 만큼 소수점 아래 자리 표현
SELECT FORMAT(123456.123456, 4);

-- 진법 변환: BIN(숫자)-2, HEX(숫자)-16, OCT(숫자)-8;
SELECT BIN(31), HEX(31), OCT(31);

-- INSERT(문자열, 시작인덱스, 갯수, 넣을 문자열)
SELECT INSERT('abcdefghi', 3, 4, '@@@@'), INSERT('abcdefghi', 3, 2, '@@@@');

-- 왼쪽에서 3개 출력: LEFT(문자열, 3)
-- 오른쪽에서 2개 출력: RIGHT(문자열, 2)
SELECT LEFT('abcdefghi', 3), RIGHT('abcdefghi', 2);

-- 대문자로: UPPER(문자열)
-- 소문자로: LOWER(문자열)
SELECT LOWER('abcdEFGH'), UPPER('abcdEFGH');

-- 왼쪽 패딩 총 길이 5: LPAD(문자열, 5, 패딩할 문자열)
-- 오른쪽 패딩 총 길이 8: LPAD(문자열, 5, 패딩할 문자열)
SELECT LPAD('이것이', 5, '#'), RPAD('이것이', 8, '!#');

-- 오른쪽 공백 삭제: RTRIM(문자열)
-- 왼쪽 공백 삭제: LTRIM(문자열)
-- 양쪽 공백 삭제: TRIM(문자열)
-- 양쪽 특정 문자열 삭제: TRIM(BOTH 삭제할 문자 FROM 문자열)
SELECT LTRIM(' 이것이'), RTRIM('이것이 ');

SELECT TRIM(' 이것이 '); 
SELECT TRIM( BOTH 'ㅋ' FROM 'ㅋㅋㅋ재밌어요.ㅋㅋㅋ' );
SELECT TRIM('ㅋ' FROM 'ㅋㅋㅋ재밌어요.ㅋㄴㅋㅋ');

-- 문자열 횟수 반복: REPEAT(문자열, 횟수)
SELECT REPEAT ('이것이', 3);

-- 문자열 치환: REPLACE(문자열, 바꿀 문자열, 바뀐 문자열)
SELECT REPLACE ( '이것이 MySQL이다', '이것이', 'This is' );

SELECT REPLACE ('삭제해줘', '삭제', '수정');

-- 입력 문자열을 거꾸로 나열
SELECT REVERSE('MySQL');

-- 띄어쓰기 넣기
SELECT CONCAT('이것이', SPACE(10), 'MySQL이다');

-- 부분 문자열 3번째~2개까지(민국)
SELECT SUBSTRING('대한민국만세', 3, 2);

-- SUBSTRING_INDEX(문자열, 구분자, 순번(시작부터))
-- 부분 문자열 인덱싱
SELECT SUBSTRING_INDEX('cafe.naver.com', '.', 2), -- .을 기준으로 쪼갠 후, 앞에 2개 선택
  SUBSTRING_INDEX('cafe.naver.com', '.', -2); -- .을 기준으로 쪼갠 후, 뒤에 2개 선택

-- ****************************** 
-- ****        수학 함수      ****
-- ******************************

-- 절댓값
SELECT ABS(-100);


-- 올림, 내림, 반올림: CEILING, FLOOR, ROUND
SELECT CEILING(4.7), FLOOR(4.7), ROUND(4.7);

-- 나머지
SELECT MOD(157, 10), 157 % 10, 157 MOD 10;

-- 제곱과 제곱근
SELECT POW(2, 3), SQRT(9);

-- 랜덤(0~1), 1~6까지 랜덤
SELECT RAND(), FLOOR(1 + (RAND() * (6 -1)));

-- 자릿수 소숫점 2번째까지, 둘쨋자리까지 버림
SELECT TRUNCATE (12345.12345, 2), TRUNCATE (12345.12355, -2);


-- ******************************
-- ****    날짜 및 시간 함수   ****
-- ******************************
-- 날짜 더하기 빼기
SELECT ADDDATE('2025-01-01', INTERVAL 31 DAY), ADDDATE('2025-01-01', INTERVAL 1 MONTH);
SELECT SUBDATE('2025-01-01', INTERVAL 31 DAY), SUBDATE('2025-01-01', INTERVAL 1 MONTH);

-- 현재 날짜, 시간 보기
SELECT YEAR(CURDATE()), MONTH(CURDATE()), DAYOFMONTH(CURDATE());
SELECT HOUR(CURTIME()), MINUTE(CURRENT_TIME()), SECOND(CURRENT_TIME()), MICROSECOND(CURRENT_TIME());

-- 현재 날짜, 시간 보기
SELECT DATE(NOW()), TIME(NOW()), NOW();
SELECT DATE(CURTIME()), TIME(CURTIME());

-- 날짜, 시간 차이 구하기
SELECT DATEDIFF('2025-01-01', NOW()), TIMEDIFF('23:23:59', '12:11:10');
-- TIMESTAMPDIFF(단위, 날짜1, 날짜2)
-- 단위
-- SECOND : 초, MINUTE:분, HOUR: 시
-- DAY : 일, MONTH : 월, YEAR: 연
-- WEEK : 주, QUARTER : 분기
SELECT TIMESTAMPDIFF(DAY, NOW(), '2025-01-01');
SELECT TIMESTAMPDIFF(SECOND, NOW(), '2025-01-01');



-- ******************************
-- ****    시스템 정보 함수   ****
-- ******************************

-- 현재 유저, 사용중인 DB 보기
SELECT CURRENT_USER(), DATABASE();

-- 조회된 행갯수 보기
SELECT * FROM usertbl;
SELECT FOUND_ROWS();

-- 변화된 행 갯수 보기
UPDATE buytbl SET price=price*2;
SELECT ROW_COUNT();

-- 타이머 작동(쿼리문)
SELECT SLEEP(5);
SELECT '5초 후에 이게 보여요';
