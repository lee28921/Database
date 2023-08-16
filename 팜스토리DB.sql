#날짜 : 2023/08/16
#이름 : 이지민
#내용 : 팜스토리 프로젝트 데이터베이스 설계

# 데이터베이스 생성
CREATE DATABASE `Farmstory`;

#회원 테이블
CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13)		UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(100),
	`ragDate`	DATETIME,
	`leaveDate`	DATETIME
);

#약관 테이블
CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);

#게시물 테이블
CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`writer`		VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`radte`		DATETIME NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);

#파일 테이블
CREATE TABLE `File`(
	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
	`ano`			INT NOT NULL,
	`oriName`	VARCHAR(255)	NOT NULL,
	`newName`	VARCHAR(255)	NOT NULL,
	`download`	INT	DEFAULT 0,
	`rdate`		DATETIME	NOT NULL,
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);

#상품 테이블
CREATE TABLE `Product` (
	`pNo`			INT AUTO_INCREMENT PRIMARY KEY,
	`cate`		TINYINT NOT NULL, # 상품
	`pName`		VARCHAR(100) NOT NULL, # 상품이름
	`price`		INT DEFAULT 0,
	`delivery`	INT DEFAULT 0, #배송비
	`stock`		INT DEFAULT 0, #재고
	`sold`		INT DEFAULT 0, #판매갯수
	`thumb1`		VARCHAR(255) NOT NULL, #상품 이미지
	`thumb2`		VARCHAR(255) NOT NULL,
	`thumb3`		VARCHAR(255) NOT NULL,
	`seller`		VARCHAR(20) NOT NULL, #판매자
	`etc`			VARCHAR(255), # 코멘트
	`rdate`		DATETIME	NOT NULL, #등록일
	FOREIGN KEY (`seller`) REFERENCES `User` (`uid`)
);

#주문 테이블
CREATE TABLE `Order` (
	`orderNo`		INT AUTO_INCREMENT PRIMARY KEY,
	`orderProduct`	INT NOT NULL,
	`orderCount`	INT NOT NULL,
	`orderDelivery`INT NOT NULL,
	`orderPrice`	INT NOT NULL,
	`orderTotal`	INT NOT NULL,
	`orderUser`		VARCHAR(20) NOT NULL,
	`orderDate`		DATETIME NOT NULL,
	FOREIGN KEY (`orderProduct`) REFERENCES `Product` (`pNo`),
	FOREIGN KEY (`orderUser`) REFERENCES `User` (`uid`)
);