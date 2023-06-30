# 날짜: 2023/06/29
# 이름: 이지민
# 내용: 모델링 실습3

#Users 고객
INSERT INTO `Users` VALUES ('user1','김유신','1976-01-21','M','010-1101-1976','kimys@naver.com',0,1,'서울','2022-01-10 10:50:12');
INSERT INTO `Users` (`userId`,`userName`,`userBirth`,`userGender`,`userHp`,`userPoint`,`userLevel`,`userAddr`,`userRegDate`)
							VALUES ('user2','계백','1975-06-11','M','010-1102-1975',1000,1,'서울','2022-01-10 10:50:12');
INSERT INTO `Users` (`userId`,`userName`,`userBirth`,`userGender`,`userHp`,`userPoint`,`userLevel`,`userAddr`,`userRegDate`)
							VALUES ('user3','김춘추','1989-05-30','M','010-1103-1989',1200,2,'서울','2022-01-10 10:50:12');
INSERT INTO `Users` VALUES ('user4','이사부','1979-04-13','M','010-2101-1979','leesabu@gmail.com',2600,1,'서울','2022-01-10 10:50:12');
INSERT INTO `Users` VALUES ('user5','장보고','1966-09-12','M','010-2104-1966','jangbg@naver.com',9400,4,'대전','2022-01-10 10:50:12');

INSERT INTO `Users` VALUES ('user6','선덕여왕','1979-07-28','M','010-3101-1979','gueen@naver.com',1600,2,'대전','2022-01-10 10:50:12');
INSERT INTO `Users` VALUES ('user7','강감찬','1984-06-15','F','010-4101-1984','kang@daum.net',800,0,'대구','2022-01-10 10:50:12');
INSERT INTO `Users` VALUES ('user8','신사임당','1965-10-21','M','010-5101-1965','sinsa@gmail.com',1599,1,'대구','2022-01-10 10:50:12');
INSERT INTO `Users` VALUES ('user9','이이','1972-11-28','F','010-6101-1975','leelee@nate.com',3400,3,'부산','2022-01-10 10:50:12');
INSERT INTO `Users` (`userId`,`userName`,`userBirth`,`userGender`,`userHp`,`userPoint`,`userLevel`,`userAddr`,`userRegDate`)
							VALUES ('user10','허난설헌','1992-09-07','F','010-7103-1992',4100,3,'광주','2022-01-10 10:50:12');

#Points 포인트
INSERT INTO `Points` VALUES (1,'user1',1000,'회원가입 1000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (2,'user2',6000,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (3,'user3',2835,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (4,'user4',3610,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (5,'user5',3000,'이벤트 응모 3000 적립','2022-01-10 10:50:12');

INSERT INTO `Points` VALUES (6,'user6',1000,'회원가입 1000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (7,'user7',2000,'이벤트 응모 2000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (8,'user8',2615,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (9,'user9',1500,'이벤트 응모 1500 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES (10,'user10',15840,'상품구매 2% 적립','2022-01-10 10:50:12');


#Order 주문
INSERT INTO `Orders` VALUES ('22010210001','user2',52300,'서울시 마포구 121',1,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010210002','user3',56700,'서울시 강남구 21-1',1,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010210010','user4',72200,'서울시 강서구 큰대로 38',2,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010310001','user5',127000,'경기도 광주시 초월로 21',1,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010310100','user1',120000,'경기도 수원시 120번지',0,'2022-01-10 10:50:12');

INSERT INTO `Orders` VALUES ('22010410101','user6',792000,'부산시 남구 21-1',2,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010510021','user7',92200,'부산시 부산진구 56 10층',4,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010510027','user8',112000,'대구시 팔달로 19',3,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010510031','user10',792000,'대전시 한밭로 24-1',2,'2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES ('22010710110','user9',94500,'광주시 충열로 11',1,'2022-01-10 10:50:12');

#Categories 상품 카테고리
INSERT INTO `Categories` VALUES (10,'여성의류패션');
INSERT INTO `Categories` VALUES (11,'남성의류패션');
INSERT INTO `Categories` VALUES (12,'식품·생필품');
INSERT INTO `Categories` VALUES (13,'취미·반려견');
INSERT INTO `Categories` VALUES (14,'홈·문구');

INSERT INTO `Categories` VALUES (15,'자동차·공구');
INSERT INTO `Categories` VALUES (16,'스포츠·건강');
INSERT INTO `Categories` VALUES (17,'컴퓨터·가전·디지털');
INSERT INTO `Categories` VALUES (18,'여행');
INSERT INTO `Categories` VALUES (19,'도서');

#Sellers 판매자
INSERT INTO `Sellers` VALUES (10001,'(주)다팔아','02-201-1976','정우성','서울');
INSERT INTO `Sellers` VALUES (10002,'판매의민족','02-102-1975','이정재','서울');
INSERT INTO `Sellers` VALUES (10003,'멋남','031-103-1989','원빈','경기');
INSERT INTO `Sellers` VALUES (10004,'스타일살아','032-201-1979','이나영','경기');
INSERT INTO `Sellers` VALUES (10005,'(주)삼성전자','02-214-1966','장동건','서울');

INSERT INTO `Sellers` VALUES (10006,'복실이옷짱','051-301-1979','고소영','부산');
INSERT INTO `Sellers` VALUES (10007,'컴퓨존(주)','055-401-1984','유재석','대구');
INSERT INTO `Sellers` VALUES (10008,'(주)LG전자','02-511-1965','강호동','서울');
INSERT INTO `Sellers` VALUES (10009,'굿바디스포츠','070-6101-1972','조인성','부산');
INSERT INTO `Sellers` VALUES (10010,'누리푸드','051-710-1992','강동원','부산');

#Products 상품
INSERT INTO `Products` VALUES (100101,11,10003,'반팔티 L~2XL',869,25000,132,20);
INSERT INTO `Products` VALUES (100110,10,10004,'트레이닝 통바지',1602,38000,398,15);
INSERT INTO `Products` VALUES (110101,10,10003,'신상 여성운동화',160,76000,40,5);
INSERT INTO `Products` (`prodNo`,`cateNo`,`sellerNo`,`prodName`,`prodPrice`,`prodSold`,`prodDiscount`)
								VALUES (120101,12,10010,'암소 1등급 구이셋트 1.2kg',150000,87,15);
INSERT INTO `Products` (`prodNo`,`cateNo`,`sellerNo`,`prodName`,`prodPrice`,`prodSold`,`prodDiscount`)
								VALUES (120103,12,10010,'바로구이 부채살 250g',21000,61,10);

INSERT INTO `Products` VALUES (130101,13,10006,'[ANF] 식스프리 강아지 사료',58,56000,142,0);
INSERT INTO `Products` VALUES (130112,13,10006,'중대형 사계절 강아지옷',120,15000,80,0);
INSERT INTO `Products` (`prodNo`,`cateNo`,`sellerNo`,`prodName`,`prodPrice`,`prodSold`,`prodDiscount`)
								VALUES (141001,14,10001,'라떼 2인 소파/방수 패브릭',320000,42,0);
INSERT INTO `Products` VALUES (170115,17,10007,'지포스 3080 그래픽카드',28,900000,12,12);
INSERT INTO `Products` VALUES (160103,16,10009,'치닝디핑 22BR 철봉',32,120000,28,0);

#OrderItems 주문상품상세
INSERT INTO `OrderItems` VALUES (1,'22010210001',100110,38000,15,1);
INSERT INTO `OrderItems` VALUES (2,'22010210001',100101,25000,20,1);
INSERT INTO `OrderItems` VALUES (3,'22010210002',120103,21000,10,3);
INSERT INTO `OrderItems` VALUES (4,'22010310001',130112,15000,0,1);
INSERT INTO `OrderItems` VALUES (5,'22010310001',130101,56000,0,2);
INSERT INTO `OrderItems` VALUES (6,'22010210010',110101,76000,5,1);

INSERT INTO `OrderItems` VALUES (7,'22010310100',160103,120000,0,1);
INSERT INTO `OrderItems` VALUES (8,'22010410101',170115,900000,12,1);
INSERT INTO `OrderItems` VALUES (9,'22010510021',110101,76000,5,1);
INSERT INTO `OrderItems` VALUES (10,'22010510027',130101,56000,0,2);
INSERT INTO `OrderItems` VALUES (11,'22010510021',100101,25000,20,1);
INSERT INTO `OrderItems` VALUES (12,'22010510031',170115,900000,12,1);
INSERT INTO `OrderItems` VALUES (13,'22010710110',120103,21000,10,5);

#Carts 장바구니
INSERT INTO `Carts` VALUES (1,'user1',100101,1,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (2,'user1',100110,2,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (3,'user3',120103,1,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (4,'user4',130112,1,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (5,'user5',130101,1,'2022-01-10 10:50:12');

INSERT INTO `Carts` VALUES (6,'user2',110101,3,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (7,'user2',160103,1,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (8,'user2',170115,1,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (9,'user3',110101,1,'2022-01-10 10:50:12');
INSERT INTO `Carts` VALUES (10,'user6',130101,1,'2022-01-10 10:50:12');

#문제1
SELECT `userName`,`prodName`,`cartProdCount`
FROM `Carts` AS a
JOIN `Users` AS b ON a.userId = b.userId
JOIN `Products` AS c ON a.prodNo = c.prodNo
WHERE `cartProdCount` >=2;

#문제2
SELECT `prodNo`,`cateName`,`prodName`,`prodPrice`,`sellerManager`,`sellerPhone`
FROM `Products` AS a
JOIN `Categories` AS b ON a.cateNo = b.cateNo 
JOIN `Sellers` AS c ON a.sellerNo = c.sellerNo;

#문제3
SELECT a.`userId`,`userName`,`userHp`,`userPoint`,
		SUM(`userPoint`+`point`)AS `적립포인트 총합`
FROM `Users` AS a
JOIN `Points` AS b ON a.userId = b.userId
GROUP BY a.`userId`;

#문제4
SELECT a.`orderNo`,a.`userId`,`userName`,`orderTotalPrice`,`orderDate`
FROM `Orders` AS a
JOIN `Users` AS b ON a.userId = b.userId
WHERE `orderTotalPrice`>=100000
GROUP BY a.`orderNo`,a.`userId`
ORDER BY `orderTotalPrice` DESC ,`userName` ASC;

#문제5

SELECT ANY_VALUE(a.`orderNo`),ANY_VALUE(a.`userId`),ANY_VALUE(`userName`),
			GROUP_CONCAT(`prodName` SEPARATOR ', ') AS `상품명`,
			ANY_VALUE(`orderDate`)
FROM `Orders` AS a
JOIN `Users` AS b ON a.userId = b.userId
JOIN `OrderItems` AS c ON a.orderNo = c.orderNo
JOIN `Products` AS d ON c.prodNo = d.prodNo
GROUP BY a.`orderNo`; #중복제거가 안돼

#문제6
SELECT `prodNo`,`prodName`,`prodPrice`,`prodDiscount`,
			FLOOR(COALESCE(`prodPrice`*(1- `ProdDiscount`/100),`prodPrice`)) AS `할인된 가격`
FROM `Products`;

#문제7 고소영 판매자가 판매하는 모든 상품의 상품번호, 상품명, 상품가격, 재고수량, 판매자 이름을 조회하시오

#문제8

#문제9 
SELECT *
FROM `OrderItems`;
#문제10

