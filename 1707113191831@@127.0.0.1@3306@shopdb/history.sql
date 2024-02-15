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
/* 2024-02-05 15:59:36 [17 ms] */ 
DELETE FROM `membertbl` WHERE `memberID`='NaoTo1';
