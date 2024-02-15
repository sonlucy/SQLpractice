/* 2024-02-05 15:17:32 [67 ms] */ 
CREATE TABLE tcity(
  name CHAR(10) PRIMARY KEY,
  area int NULL,
  popu int NULL,
  metro CHAR(1) NOT NULL,
  region CHAR(6) NOT NULL
);
/* 2024-02-05 15:52:26 [17 ms] */ 
INSERT INTO tCity VALUES ('홍천', 1819, 7, 'n', '강원');
/* 2024-02-05 16:21:17 [44 ms] */ 
CREATE VIEW uv_tcity
AS
SELECT name, metro, region FROM tcity;
