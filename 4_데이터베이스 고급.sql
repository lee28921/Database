#날짜: 2023/06/16
#이름: 이지민
#내용: 4.데이터베이스 고급

#실습 4-1
CREATE TABLE `Member`(
	`uid`		VARCHAR(10) PRIMARY KEY NOT NULL,
	`name`	VARCHAR(10) NOT NULL,
	`hp`		VARCHAR(13) NOT NULL,
	`pos`		VARCHAR(10) DEFAULT '사원',
	`dep`		INT,
	`rdate`	DATE NOT NULL
);

CREATE TABLE `Department` (
	`depNo`		INT NOT NULL,
	`name`		VARCHAR(10) NOT NULL,
	`tel`			VARCHAR(12) NOT NULL
);
CREATE TABLE `Sales` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`month`	TINYINT NOT NULL,
	`sale`	INT NOT NULL
);
#실습 4-2
INSERT INTO `Member` VALUES ('a101','박혁거세','010-1234-1001','부장',101,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a102','김유신','010-1234-1002','차장',101,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a103','김춘추','010-1234-1003','사원',101,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a104','장보고','010-1234-1004','대리',102,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a105','강감찬','010-1234-1005','과장',102,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a106','이성계','010-1234-1006','차장',103,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a107','정철','010-1234-1007','차장',103,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a108','이순신','010-1234-1008','부장',104,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a109','허균','010-1234-1009','부장',104,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a110','정약용','010-1234-1010','사원',105,'2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a111','박지원','010-1234-1011','사원',105,'2023-06-15 16:22:13');

INSERT INTO `Department` VALUES (101,'영업1부','051-512-1001');
INSERT INTO `Department` VALUES (102,'영업2부','051-512-1002');
INSERT INTO `Department` VALUES (103,'영업3부','051-512-1003');
INSERT INTO `Department` VALUES (104,'영업4부','051-512-1004');
INSERT INTO `Department` VALUES (105,'영업5부','051-512-1005');
INSERT INTO `Department` VALUES (106,'영업지원부','051-512-1006');
INSERT INTO `Department` VALUES (107,'인사부','051-512-1007');

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a101','2018',1,98100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a102','2018',1,136000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a103','2018',1,80100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a104','2018',1,78000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a105','2018',1,93000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a101','2018',2,23500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a102','2018',2,126000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a103','2018',2,18500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a105','2018',2,19000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a106','2018',2,53000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a101','2019',1,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a102','2019',1,109000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a103','2019',1,101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a104','2019',1,53500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a107','2019',1,24000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a102','2019',2,160000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a103','2019',2,101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a104','2019',2,43000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a105','2019',2,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a106','2019',2,109000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a102','2020',1,201000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a104','2020',1,63000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a105','2020',1,74000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a106','2020',1,122000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a107','2020',1,111000);

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a102','2020',2,120000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a103','2020',2,93000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a104','2020',2,84000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a105','2020',2,180000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES('a108','2020',2,76000);
#실습 4-3
SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `pos`='차장' AND `dep`='101';
SELECT * FROM `Member` WHERE `name` != '김춘추'; # 아래 명령어와 같다
SELECT * FROM `Member` WHERE `name` <> '김춘추';
SELECT * FROM `Member` WHERE `pos` = '사원' OR `pos` = '대리'; #아래 명령어와 같다
SELECT * FROM `Member` WHERE `pos` IN('사원','대리');
SELECT * FROM `Member` WHERE `name` LIKE '%신'; # 신으로 끝나는 name 찾기
SELECT * FROM `Member` WHERE `name` LIKE '정_'; # 정으로 시작하는 name(2글자) 찾기
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month` =1; #아래 명령어와 같다
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;

#실습 4-4 오름/내림차순으로 정렬
SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale` ASC; #오름차
SELECT * FROM `Sales` ORDER BY `sale` DESC; #내림차
SELECT * FROM `Sales` WHERE `sale` > 50000
ORDER BY `sale` DESC;

SELECT * FROM `Sales`
WHERE `sale` > 50000
ORDER BY
		`year` ASC, 
		`month` ASC, #작은거 부터
		`sale` DESC; #큰거 부터

#실습 4-5 N개만 출력하는 LIMIT
SELECT * FROM `Sales` LIMIT 3; # 상위 3개만 출력
SELECT * FROM `Sales` LIMIT 0, 3; # 0에서 부터 아래 3개를 출력
SELECT * FROM `Sales` LIMIT 1, 2; 
SELECT * FROM `Sales` LIMIT 5, 4; #5에서 부터 아래 4개를 실행

SELECT * FROM `Sales`
WHERE 
	`sale` > 50000 # 5만 초과인
ORDER BY
	`year` DESC, # 년도가 큰거 부터
	`month` ASC, # 월이 작은 거 부터
	`sale` DESC	 # 수가 큰거 부터
LIMIT
	5;	# 5개만 출력

#실습 4-6
SELECT SUM(`sale`) AS `합계` FROM `Sales`;
SELECT AVG(`sale`) AS `평균` FROM `Sales`;
SELECT COUNT(*) AS `갯수` FROM `Sales`;
SELECT SUBSTRING(`hp`,10,4) AS `전화번호 끝자리` 
	FROM `Member`; #문자열 10번째 문자부터 4개의 문자 표시

#NOW()는 현재 시간 출력
INSERT INTO `Member` VALUES ('b101','을지문덕','010-5555-1234','사장',107,NOW());

SELECT SUM(`sale`) AS `1월 매출의 총 합계` FROM `Sales`
WHERE 
	`year` IN (2018)
	AND
	`month` IN (1);
	
SELECT 
	SUM(`sale`)AS `2월 매출의 합계` ,
	AVG(`sale`) AS `2월 매출의 평균` 
FROM 
	`Sales`
WHERE 
	`year` IN (2019)
	AND
	`month` IN (2)
	AND
	`sale` >= 50000;
	

 
#실습 4-7 
SELECT SUM(`sale`) AS `합계`
FROM `Sales`
WHERE 
	`year`=2018 AND
	`month`=1;
#실습 4-8
SELECT SUM(`sale`) AS `합계`,
		AVG(`sale`) AS `평균`
FROM `Sales`
WHERE
	`year`=2019 AND
	`month`=2 AND
	`sale` >= 50000;
#실습 4-9
SELECT MIN(`sale`) AS `최저`,
		 MAX(`sale`) AS `최고`
FROM `Sales`
WHERE
	`year`=2020;
#실습 4-10
SELECT VERSION(); 데이터를 그룹으로 조회
SELECT `uid` FROM `Sales` GROUP BY `uid`; 
SELECT `year` FROM `Sales` GROUP BY `year`; 
SELECT `uid`,`year` FROM `Sales` GROUP BY `uid`,`year`;

SELECT 
	`uid`,`year`,
	SUM(`sale`) AS `합계`
FROM 
	`Sales`
GROUP BY 
	`uid`,`year`;
	
SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM
	`Sales`
WHERE
	`sale` >= 50000
GROUP BY
	`uid`,`year`
ORDER BY
	`합계` DESC;
#실습 4-11
SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM
	`Sales`
WHERE
	`sale` >= 50000
GROUP BY
	`uid`,`year`
HAVING #GROUP BY의 조건문
	`합계` >= 200000
ORDER BY
	`합계` DESC;
	
#실습 4-12
CREATE TABLE `Sales2` LIKE `Sales`;
INSERT INTO `Sales2` SELECT * FROM `Sales`;
UPDATE `Sales2` SET `year`=`year`+3;
#실습 4-13 UNION - 테이블 합치기
SELECT * FROM `Sales`
UNION
SELECT * FROM `Sales2`; 

(SELECT * FROM `Sales`)
UNION
(SELECT * FROM `Sales2`);

SELECT `uid`,`year`,`sale` FROM `Sales`
UNION
SELECT `uid`,`year`,`sale` FROM `Sales2`;

# Sales,Sales2 테이블에서 각각uid, year를 그룹으로 묶고 sale의 합계를 구하고
# Sales와 Sales2를 UNION으로 연결 후
# year를 내림차순으로, 합계를 오름차순으로 출력
SELECT `uid`,`year`, SUM(sale) AS `합계`
FROM `Sales`
GROUP BY `uid`,`year`
UNION
SELECT `uid`,`year`, SUM(Sale) AS `합계`
FROM `Sales2`
GROUP BY `uid`,`year`
ORDER BY `year` ASC, `합계` DESC;

#실습 4-13
SELECT * FROM `Sales` #기준이 되는 테이블
INNER JOIN `Member`
ON `Sales`.uid = `Member`.uid; #서로의 uid를 비교해서 합친다

SELECT * FROM `Member`
INNER JOIN `Department`
ON `Member`.dep = `Department`.depNo;

SELECT * FROM `Sales` AS a #Sales테이블을 a로  선언
JOIN `Member` AS b	#Member테이블을 b로 선언
ON a.uid = b.uid;		# 서로 비교해서 합친다

SELECT * FROM `Member` AS a
JOIN `Department` AS b
ON a.dep = b.depNo;

SELECT * FROM `Sales` AS a, `Member` AS b
WHERE a.uid = b.uid;

SELECT 
	a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`
FROM `Sales` AS a
JOIN 	`Member` AS b
ON a.uid = b.uid;

SELECT 
	a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`
FROM `Sales` AS a
JOIN 	`Member` AS b
USING(`uid`);

SELECT 
	a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`
FROM `Sales` AS a
JOIN 	`Member` AS b ON a.uid = b.uid
WHERE `sale` >= 100000;

SELECT * 
FROM `Sales` 		AS a
JOIN `Member` 		AS b ON a.uid = b.uid 
JOIN `Department` AS c ON b.dep = c.depNo;

#실습 4-14 외부조인 - 결합하는 테이블의 한쪽(lEFT, FIGHT)의 모든 레코드를 표시
INSERT INTO `Sales`(`uid`,`year`,`month`,`sale`) VALUES('p101',2018,1,35000);

SELECT * FROM `Sales` AS a
LEFT JOIN `Member` AS b
ON a.uid = b.uid;

SELECT * FROM `Sales` AS a
RIGHT JOIN `Member` AS b
ON a.uid = b.uid;

#실습 4-15
SELECT 
	a.`uid`,a.`name`,a.`pos`,b.`name`
FROM `Member` AS a
JOIN `Department` AS b 
ON	a.dep = b.depNo;

#실습 4-16
SELECT 
	SUM(`sale`) AS `매출합`
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid
WHERE `name`='김유신' AND `year`=2019
GROUP BY `year`; # 여기서 GROUP BY는 생략가능


#실습 4-17
SELECT
	a.`year`,b.`name`,b.`pos`, c.`name`,
	SUM(`sale`) AS `매출합`
FROM `Sales` AS a
JOIN `Member` AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo
WHERE `sale` >= 50000 AND
		`year`='2019'
GROUP BY a.`uid`,c.`name` #?
HAVING
	`매출합`>='100000'
ORDER BY
	`매출합` DESC;

#정답
select 
	b.`name` AS `직원명`,
   c.`name` AS `부서명`,
   b.`pos`  AS `직급`,
   a.`year` AS `년도`,    
   SUM(`sale`) as `매출합`
from `Sales`      a
join `Member`     b on a.uid = b.uid
join `Department` c on b.dep = c.depNo
where `year`=2019 and `sale` >= 50000
group by a.`uid`
having `매출합` >= 100000
order by `매출합` DESC;
<<<<<<< HEAD
=======

>>>>>>> 9e624c64a1907d868a6e00a7d5657abb7550a774
