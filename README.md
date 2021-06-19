# P.I.C (Play In Cheonan)

2020년도 1학기 웹 졸업 프로젝트 입니다. 
고객에게 천안의 문화와 명소, 놀거리를 제공하기 위해 만들어 졌습니다. 



![image](https://user-images.githubusercontent.com/50399088/122643172-4e375900-d149-11eb-8dba-4a0699aac3ab.png)
유스케이스 다이어그램 

## 1. 개발 환경 구성
Jdk 1.8
MariaDB
Tomcat9.0
spring Framework

## 2. DB table 정보

-- DROP TABLE user; 
CREATE TABLE user(
user_idx INT NOT NULL AUTO_INCREMENT,
id VARCHAR(40),
pw VARCHAR(40),
user_name VARCHAR(20),
join_date DATE,
CONSTRAINT user_PK PRIMARY KEY(user_idx)
)
;

-- DROP TABLE user_pic_history;
CREATE TABLE user_pic_history(
user_idx INT,
tourist_idx INT,
pic_date DATETIME
)
;


-- DROP TABLE tourist;
CREATE TABLE tourist(
tourist_idx INT NOT NULL AUTO_INCREMENT,
tourist_name VARCHAR(100),
tourist_address VARCHAR(200),
category_code VARCHAR(4),reg_date DATE,
 CONSTRAINT tourist_PK PRIMARY KEY(tourist_idx)
)
;

INSERT INTO tourist (tourist_name, tourist_address, category_code, reg_date)VALUES('장소이름', '장
소의 주소', '0002', now());
INSERT INTO tourist (tourist_name, tourist_address, category_code, reg_date)VALUES('아라리오 갤
러리', '충남 천안시 동남구 만남로 43', '0003', now());
INSERT INTO tourist (tourist_name, tourist_address, category_code, reg_date)VALUES('신세계 백화
점 충청점', '충남 천안시 동남구 만남로 43 신세계백화점', '0003', now());
-- DROP TABLE tourist_picture;
CREATE TABLE tourist_picture(
tourist_picture_idx INT NOT NULL AUTO_INCREMENT,
tourist_idx INT,
tourist_picture_uid VARCHAR(50),
file_name VARCHAR(40),
 file_ext VARCHAR(10),
file_physical_path VARCHAR(40),
reg_date DATE,
 CONSTRAINT tourist_picture_PK PRIMARY KEY(tourist_picture_idx)
)
;
INSERT INTO tourist_picture (tourist_idx, tourist_picture_uid, file_name, file_ext, file_physical_path, 
reg_date)values('1', 'b53e4707-efbc-4001-be9b-03be93021efc', 'aa.jpg', 'jpg', 'C:\\PIC\\touristImages\\', 
'2020-06-23');
INSERT INTO tourist_picture (tourist_idx, tourist_picture_uid, file_name, file_ext, file_physical_path, 
reg_date)values('2', '1d108a4b-f8c1-4a1d-9907-31e74ff5799a', 'bb.jpg', 'jpg', 'C:\\PIC\\touristImages\\', 
'2020-06-23');
INSERT INTO tourist_picture (tourist_idx, tourist_picture_uid, file_name, file_ext, file_physical_path, 
reg_date)values('3', '94e6dc40-cd93-4057-be7c-8f7337a8cc1c', 'cc.jpg', 'jpg', 'C:\\PIC\\touristImages\\', 
'2020-06-23');
;-- DROP TABLE category;
CREATE TABLE category(
category_code VARCHAR(4),
category_name VARCHAR(40)
)
;
INSERT INTO category values('0001', '맛집');
INSERT INTO category values('0002', '명소');
INSERT INTO category values('0003', '놀거리')
