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
