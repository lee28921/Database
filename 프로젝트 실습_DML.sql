# 닉네임 조회
SELECT
	a.*,
	b.nick
FROM `Article` AS a
JOIN `User` AS b ON a.writer = b.uid
ORDER BY `no` DESC;

SELECT
	a.*,
	b.nick
FROM `Article` AS a
JOIN `User` AS b ON a.writer = b.uid
ORDER BY `no` ASC
LIMIT 10, 10;

# 게시물 채우기
INSERT INTO `Article` (`title`,`content`,`writer`,`regip`,`rdate`)
SELECT `title`,`content`,`writer`,`regip`,`rdate` FROM `Article`;

# 전체 게시물 갯수
SELECT COUNT(*) FROM `Article`;
