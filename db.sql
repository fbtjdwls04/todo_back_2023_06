# todo_2023_06 DB 생성
DROP DATABASE IF EXISTS todo_2023_06;
CREATE DATABASE todo_2023_06;
USE todo_2023_06;

# todo 테이블 생성
CREATE TABLE todo (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	user_code CHAR(50) NOT NULL,
	`no` INT UNSIGNED NOT NULL,
	performDate DATETIME NOT NULL,
	content VARCHAR(200) NOT NULL,
	is_completed TINYINT UNSIGNED NOT NULL DEFAULT 0
);

# user_code와 no의 조합에 대해서 unique 설정
ALTER TABLE todo ADD UNIQUE INDEX(`user_code`,`no`);

INSERT INTO todo
SET regDate = NOW(),
updateDate = NOW(),
user_code = 'localhost',
`no` = 1,
performDate = NOW(),
content = '기상';

INSERT INTO todo
SET regDate = NOW(),
updateDate = NOW(),
user_code = 'localhost',
`no` = 2,
performDate = NOW(),
content = '공부';

INSERT INTO todo
SET regDate = NOW(),
updateDate = NOW(),
user_code = 'localhost',
`no` = 3,
performDate = NOW(),
content = '운동';

SELECT * FROM todo;