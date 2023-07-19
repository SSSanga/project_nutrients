insert into COMMONS_CODE 
(COMMON_CODE_ID,NAME,ORDER_NUMBER,ATTRIBUTION_1,ATTRIBUTION_2,DESCRIPTION,SYSTEM_CODE_YN,USE_YN,PARENT_COMMON_CODE_ID,REGISTER_SEQ,REGISTRY_DATE,MODIFIER_SEQ,MODIFY_DATE) 
select 'CarInforSearch','CarInfor Search',1,NULL,NULL,'CarInfor Search','System_Code_Yes','Yes',NULL,'UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'Car-01','YEAR',1,NULL,NULL,'Using Yes','System_Code_Yes','Yes','CarInforSearch','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'Car-02','CAR_NAME',2,NULL,NULL,'Using No','System_Code_Yes','Yes','CarInforSearch','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'Use_YN','Yes or No',1,NULL,NULL,'Using Yes or No','System_Code_Yes','Yes',NULL,'UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'Yes','Yes',1,NULL,NULL,'Using Yes','System_Code_Yes','Yes','Use_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'No','No',2,NULL,NULL,'Using No','System_Code_Yes','Yes','Use_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'System_Code_YN','Sytem Yes or No',1,NULL,NULL,'Sytem Using Yes or No','System_Code_Yes','Yes',NULL,'UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'System_Code_Yes','Yes',1,NULL,NULL,'Sytem Using Yes','System_Code_Yes','Yes','System_Code_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'System_Code_No','No',2,NULL,NULL,'Sytem Using No','System_Code_Yes','Yes','System_Code_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual 
;

INSERT INTO history (DISEASE, HISTORY_ID)
VALUES
('고혈압', 'history_01'),
('심장병', 'history_02'),
('당뇨', 'history_03'),
('계란알레르기', 'history_04'),
('해산물알레르기', 'history_05'),
('갑각류알레르기', 'history_06'),
('견과류알레르기', 'history_07'),
('천식', 'history_08'),
('신장질환', 'history_09'),
('간질환', 'history_10'),
('혈관질환', 'history_11'),
('비염', 'history_12'),
('꽃가루알레르기', 'history_13'),
('등푸른생선알레르기', 'history_14'),
('과일알레르기', 'history_15')
;

INSERT INTO membersandadmin (UNIQUE_ID, NAME, ID, PASSWORD, BIRTHDATE, AGE, SEX, ADDRESS, PHONE, REGISTRATIONDATE, EMAIL, ADMINE_ID, HISTORY_ID)
VALUES
('MEMB_01', '김영수', 'kimys', '123456', '1990-01-15', 32, '남성', '서울시 강남구', '010-1234-5678', '2022-01-01', 'kimys@example.com', 'admine', 'history_01'),
('MEMB_02', '이지현', 'eejh', 'abcdef', '1985-02-28', 37, '여성', '서울시 서대문구', '010-2345-6789', '2020-03-15', 'eejh@example.com', 'admine', 'history_02'),
('MEMB_03', '박준호', 'parkjh', 'qazwsx', '1978-10-05', 43, '남성', '부산시 해운대구', '010-3456-7890', '2015-11-20', 'parkjh@example.com', 'admine', 'history_03'),
('MEMB_04', '송지은', 'songje', '987654', '1993-06-20', 28, '여성', '대구시 동구', '010-4567-8901', '2019-02-28', 'songje@example.com', 'admine', 'history_04'),
('MEMB_05', '최민준', 'choimj', 'qwerty', '2001-08-07', 21, '남성', '인천시 중구', '010-5678-9012', '2021-12-10', 'choimj@example.com', 'admine', 'history_05'),
('MEMB_06', '정지현', 'jeongjh', '13579a', '1999-09-03', 24, '여성', '경기도 성남시', '010-6789-0123', '2020-10-05', 'jeongjh@example.com', 'admine', 'history_06'),
('MEMB_07', '박성민', 'parksm', 'asdfgh', '1982-12-18', 39, '남성', '서울시 송파구', '010-7890-1234', '2017-06-20', 'parksm@example.com', 'admine', 'history_07'),
('MEMB_08', '윤지수', 'yunjis', 'zxcvbn', '1997-12-30', 26, '여성', '대전시 서구', '010-8901-2345', '2023-02-15', 'yunjis@example.com', 'admine', 'history_08'),
('MEMB_09', '김민준', 'kimmj', '123123', '1990-08-02', 33, '남성', '인천시 남동구', '010-9012-3456', '2018-04-05', 'kimmj@example.com', 'admine', 'history_09'),
('MEMB_10', '이예진', 'eeyj', 'abcd1234', '1994-02-13', 29, '여성', '경기도 고양시', '010-0123-4567', '2014-01-28', 'eeyj@example.com', 'admine', 'history_10'),
('MEMB_11', '박준서', 'parkjs', 'qwer1234', '1986-01-05', 37, '남성', '서울시 강서구', '010-3456-7890', '2011-05-20', 'parkjs@example.com', 'admine', 'history_11'),
('MEMB_12', '김서연', 'kimsy', '98765432', '1995-12-10', 28, '여성', '부산시 사하구', '010-5678-9012', '2022-07-18', 'kimsy@example.com', 'admine', 'history_12'),
('MEMB_13', '정예준', 'jeongyj', 'qwertyuiop', '1998-09-24', 24, '남성', '대구시 수성구', '010-6789-0123', '2021-09-10', 'jeongyj@example.com', 'admine', 'history_13'),
('MEMB_14', '송지현', 'songjh', '12345678', '1982-08-07', 41, '여성', '인천시 남구', '010-7890-1234', '2018-02-14', 'songjh@example.com', 'admine', 'history_14'),
('MEMB_15', '최서윤', 'choisy', 'asdfghjkl', '1993-03-30', 29, '여성', '경기도 성남시', '010-8901-2345', '2013-12-30', 'choisy@example.com', 'admine', 'history_15'),
('MEMB_16', '윤준우', 'yunjw', 'zxcvbnm', '1989-10-17', 32, '남성', '서울시 송파구', '010-9012-3456', '2020-06-05', 'yunjw@example.com', 'admine', 'history_01'),
('MEMB_17', '김민서', 'kimms', '12345678', '1992-10-25', 31, '여성', '대전시 중구', '010-0123-4567', '2018-07-10', 'kimms@example.com', 'admine', 'history_02'),
('MEMB_18', '이영진', 'eeyj', 'abcd1234', '2001-03-14', 22, '남성', '인천시 서구', '010-3456-7890', '2019-04-18', 'eeyj@example.com', 'admine', 'history_03'),
('MEMB_19', '박서준', 'parksj', 'qwer1234', '1990-01-10', 32, '남성', '경기도 부천시', '010-5678-9012', '2020-04-02', 'parksj@example.com', 'admine', 'history_04'),
('MEMB_20', '김지윤', 'kimjy', '98765432', '1994-02-26', 29, '여성', '대구시 동구', '010-7890-1234', '2016-01-15', 'kimjy@example.com', 'admine', 'history_05');