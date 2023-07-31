use project_nutrients;

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

insert into auth_names 
(AUTH_NAME, UNIQUE_ID)
values
('SYSTEM_MANAGER','ROLE_MANAGER'),
('ADMIN','ROLE_ADMIN'),
('USER','ROLE_USER'),
('GUEST','ROLE_GUEST')
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

INSERT INTO inquiry (INQUIRY_ID, WRITING_DATE, CONTENT, RESPONSE, RESPONSE_DATE, ADMINE_ID, UNIQUE_ID) VALUES
(01, NOW(), '비타민C 제품의 성분은 무엇인가요?', '제품은 고품질 비타민C와 다양한 필수 영양소를 함유하고 있습니다.', '2023-07-20', 'admine', 'MEMB_01'),
(02, NOW(),'서울까지 배송은 얼마나 걸리나요?', '주문 후 일반적으로 2-3일 내로 배송됩니다.', '2023-07-21', 'admine', 'MEMB_02'),
(03, NOW(),'환불하려면 어떻게 해야 하나요?', '원하시는 환불 사유를 적어 고객센터에 문의해주시면 됩니다.', '2023-07-22', 'admine', 'MEMB_03'),
(04, NOW(),'해당 제품의 재고가 언제 들어오나요?', '재고는 다음 주에 입고 예정입니다.', '2023-07-23', 'admine', 'MEMB_04'),
(05, NOW(),'천연 성분을 포함한 제품 추천 부탁드려요.', '저희의 천연 성분 비타민D 제품을 추천드립니다.', '2023-07-24', 'admine', 'MEMB_05'),
(06, NOW(),'이 제품의 사용 방법을 알려주세요.', '하루에 한 번, 한 캡슐씩 복용하시면 됩니다.', '2023-07-25', 'admine', 'MEMB_06'),
(07, NOW(),'제품 구매 후 고객 리뷰 작성 방법을 알려주세요.', '구매 확정 후 나타나는 리뷰 작성 창에서 후기를 작성해주시면 됩니다.', '2023-07-26', 'admine', 'MEMB_07'),
(08, NOW(),'제품이 효과가 없는 것 같아요.', '제품의 효과는 개인의 체질에 따라 다르며, 일정 기간 이상 꾸준히 복용해야 보입니다.', '2023-07-27', 'admine', 'MEMB_08'),
(09, NOW(),'제품 복용 시 주의사항은 무엇인가요?', '식사 후에 복용하시고, 알레르기가 있는 성분은 사전에 확인하신 후 복용해주세요.', '2023-07-28', 'admine', 'MEMB_09'),
(10, NOW(),'비타민B 제품에 대해 궁금합니다.', '저희 비타민B 제품은 B군 비타민을 모두 함유하고 있습니다.', '2023-07-29', 'admine', 'MEMB_10'),
(11, NOW(),'혹시 이 제품에 대한 할인은 없나요?', '다음 달에 프로모션이 예정되어 있습니다. 그 때 이용해보세요.', '2023-07-30', 'admine', 'MEMB_11'),
(12, NOW(),'제품 배송 시 손상이 발생했어요.', '불편을 드려 죄송합니다. 즉시 교환 처리해드리겠습니다.', '2023-07-31', 'admine', 'MEMB_12'),
(13, NOW(),'이 제품을 먹으면 알레르기 반응이 나타났어요.', '알레르기 반응이 확인된다면, 즉시 복용을 중단하고 의사와 상의하세요.', '2023-08-01', 'admine', 'MEMB_13'),
(14, NOW(),'제품이 도착하지 않았어요.', '배송 지연 사과드립니다. 빠르게 처리하겠습니다.', '2023-08-02', 'admine', 'MEMB_14'),
(15, NOW(),'제품에 대한 상세 정보를 알려주세요.', '제품 페이지에 상세 정보가 기재되어 있습니다. 확인 부탁드립니다.', '2023-08-03', 'admine', 'MEMB_15'),
(16, NOW(),'이 제품은 임산부에게 안전한가요?', '임산부 사용에 안전한 제품이나, 개인 상태에 따라 달라질 수 있으니 의사와 상의하시길 권장합니다.', '2023-08-04', 'admine', 'MEMB_16'),
(17, NOW(),'환불 시 제품 회수는 어떻게 되나요?', '환불 요청 후, 회수 일정을 안내드립니다.', '2023-08-05', 'admine', 'MEMB_17'),
(18, NOW(),'이 제품과 함께 복용하면 좋은 제품이 있나요?', '이 제품과 함께면 비타민D 제품의 복용을 추천드립니다.', '2023-08-06', 'admine', 'MEMB_18'),
(19, NOW(),'제품의 유통기한은 언제까지인가요?', '제품 별로 다르지만, 일반적으로 제품 배송 후 1년 이내입니다.', '2023-08-07', 'admine', 'MEMB_19'),
(20, NOW(),'제품 구매 시 포인트는 어떻게 적립되나요?', '구매 금액의 1%가 포인트로 적립됩니다.', '2023-08-08', 'admine', 'MEMB_20');

INSERT INTO SUPP_SPEC (SUPP_ID, PRODUCT, MANUFACTURE, DOSAGE, FREQUENCY, LOCATION, LINK)
VALUES
('SUPP_01', '간 건강엔 밀크씨슬', '(주)비오팜', '1회 1정', '1일 1회', '/images/SUPP_01.png', 'https://frombio.co.kr/product/%EA%B0%84%EA%B1%B4%EA%B0%95%EC%97%94-%EB%B0%80%ED%81%AC%EC%94%A8%EC%8A%AC-%EB%B9%84%EC%98%A4%ED%8B%B4-1%EA%B0%9C%EC%9B%94-30%EC%A0%95x1%EB%B0%95%EC%8A%A4/420/'),
('SUPP_02', '더 스포츠 에센셜 비타민 B Complex', '독일 C. HEDENKAMP GMBH & CO.KG', '1회 1정', '1일 1회', '/images/SUPP_02.png', 'https://smartstore.naver.com/naeilstore/products/8545227538?NaPm=ct%3Dlkp4hqfc%7Cci%3D0ebe1b9fb7364115231cf3195d04ffdc8d8cd89e%7Ctr%3Dslsl%7Csn%3D5727826%7Chk%3D2b0bd5508abb113f23100eabe222ebe3a7154f68'),
('SUPP_03', '간기보', '(주)서흥', '1회 2정', '1일 1회', '/images/SUPP_03.png', 'https://www.11st.co.kr/products/2522606549'),
('SUPP_04', '동국 간에다 활력 밀크씨슬', '(주)화인내츄럴', '1회 1정', '1일 1회', '/images/SUPP_04.png', 'https://smartstore.naver.com/bellatany/products/7037658111?NaPm=ct%3Dlkp4qyzk%7Cci%3D7cc52dbfb7ac9ecb95283a3b2a9b4b07b037527c%7Ctr%3Dslsl%7Csn%3D6506994%7Chk%3D4ca424a4992aa784b9e87ec7dc04f0fc814dbb41'),
('SUPP_05', '닥터 쎈 실리마린 간건강 골드', '(주)세종바이오팜', '1회 1정', '1일 1회', '/images/SUPP_05.png', 'https://www.eyoumall.co.kr/shop/goods/item_view.php?no=482667&category=012005#:~:text=%EC%9D%B4%EC%9C%A0%EB%AA%B0%20%2D%20%5B%EC%95%BD%EA%B5%AD%ED%8C%90%EB%A7%A4%EC%9A%A9%5D,90%EC%A0%95%5B3%EA%B0%9C%EC%9B%94%EB%B6%84%5D&text=69%2C800%EC%9B%90%20%EC%B5%9C%EC%B4%88%ED%8C%90%EB%A7%A4%EA%B0%80%20%3F'),
('SUPP_06', '간에 좋은 실리마린 밀크씨슬', '엠에스바이오텍(주)', '1회 1정', '1일 1회', '/images/SUPP_06.png', 'https://www.tmon.co.kr/deal/18891987374'),
('SUPP_07', '간과 피로에 좋은 밀크씨슬', '중외제약', '1회 1정', '1일 1회', '/images/SUPP_07.png', 'https://shopping.interpark.com/product/productInfo.do?prdNo=11609265128&dispNo=016001&bizCd=P01397&NaPm=ct%3Dlkp4wbw0%7Cci%3D074a78a71bd55631bab5f1ac0b6fb9a27c665711%7Ctr%3Dsls%7Csn%3D3%7Chk%3D8a4f5da59a993e40bef145a5367ece54858e8dad&utm_medium=affiliate&utm_source=naver&utm_campaign=shop_20211015_navershopping_p01397_cps&utm_content=conversion_47'),
('SUPP_08', '드리내 간건강 실리마린 밀크씨슬 아연', '주식회사 네추럴웨이', '1회 1정', '1일 1회', '/images/SUPP_08.png', 'https://www.ssg.com/item/itemView.ssg?itemId=1000349030838'),
('SUPP_09', '밸런스:간건강', '(주)포터블뉴트리션', '2회 1정/1회 1정', '1일 1회/1일 2회', '/images/SUPP_09.png', 'https://www.coupang.com/vp/products/334289635?itemId=1067084947&vendorItemId=5552582278&src=1032001&spec=10305201&addtag=400&ctag=334289635&lptag=I1067084947&itime=20230730165208&pageType=PRODUCT&pageValue=334289635&wPcid=12918469624583878176714&wRef=cr.shopping.naver.com&wTime=20230730165208&redirect=landing&mcid=434ca0b91faa4eee83e2dfe512fa63ef&isAddedCart='),
('SUPP_10', '듀오락 간케어', '(주)쎌바이오텍', '1회 1캡슐', '1일 1회', '/images/SUPP_10.png', 'https://front.wemakeprice.com/product/166694328'),
('SUPP_11', '솔브앤고 피로&스트레스 케어', '(주)서울에프엔비', '1회 1포', '1일 1회', '/images/SUPP_11.png', 'https://www.coupang.com/vp/products/7338680488?itemId=18856802309&vendorItemId=85985937320&src=1032034&spec=10305201&addtag=400&ctag=7338680488&lptag=P7338680488&itime=20230728122050&pageType=PRODUCT&pageValue=7338680488&wPcid=16862016366442340478692&wRef=prod.danawa.com&wTime=20230728122050&redirect=landing&mcid=55d86b9d3fd4486b8f5d2da28e42c0d7'),
('SUPP_12', '곰피로간건강+', '주식회사 네추럴웨이', '1회 1정', '1일 1회', '/images/SUPP_12.png', 'https://www.coupang.com/vp/products/7423246645?itemId=19262298797&vendorItemId=86377728692&src=1032001&spec=10305201&addtag=400&ctag=7423246645&lptag=I19262298797&itime=20230728122538&pageType=PRODUCT&pageValue=7423246645&wPcid=16862016366442340478692&wRef=cr.shopping.naver.com&wTime=20230728122538&redirect=landing&mcid=906171d7f9f74a79ba4af21340431dea&isAddedCart='),
('SUPP_13', '마이니 슈퍼비 스트레스 피로케어', '(주)알피바이오', '1회 2정', '1일 1회', '/images/SUPP_13.png', 'https://www.tmon.co.kr/deal/20156061806'),
('SUPP_14', '피로날린', '큐어라벨(주)', '1회 1정', '1일 1회', '/images/SUPP_14.png', 'https://www.lotteon.com/p/product/LD193568044?sitmNo=LD193568044_0&ch_no=100071&ch_dtl_no=1000227&entryPoint=pcs&dp_infw_cd=CHT&service_id=estimatedn'),
('SUPP_15', '피로개선 활력비타민', '(주)알피바이오', '1회 1정', '1일 1회', '/images/SUPP_15.png', 'https://smartstore.naver.com/drjeahn/products/5198994588?NaPm=ct%3Dlkp5efw8%7Cci%3Dc22d964ac2cf6220c49f33404be9b8e08af384b8%7Ctr%3Dsls%7Csn%3D2290580%7Chk%3Df7e5442bb98fe6863c30b6b19829202dfd6e6c06'),
('SUPP_16', '바이탈헬스 피로개선 올인원', '(주)알피바이오', '1회 1정', '1일 1회', '/images/SUPP_16.png', 'http://itempage3.auction.co.kr/DetailView.aspx?itemno=C402530651'),
('SUPP_17', '피로 바이타민 B-컴플렉스', '콜마비앤에이치(주)', '1회 1정', '1일 1회', '/images/SUPP_17.png', 'http://thessan.com/m/product.html?branduid=607768'),
('SUPP_18', '피로아웃티', '코스맥스바이오(주)', '1회 1포(6g)', '1일 1회', '/images/SUPP_18.png', 'http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=D347408786&frm3=V2'),
('SUPP_19', '노즈엔돌 징코 뷰티 리퀴드', '(주)세종바이오팜', '1회 1봉', '1일 1회', '/images/SUPP_19.png', 'https://www.lotteon.com/p/product/LO1489124356?sitmNo=LO1489124356_1489124357&mall_no=1&dp_infw_cd=SCH%ED%99%8D%EA%B2%BD%EC%B2%9C'),
('SUPP_20', '데일리플러스 스트레스 피로 케어', '에스케이내추럴팜(주)', '1회 1포', '1일 1회', '/images/SUPP_20.png', 'https://front.wemakeprice.com/product/2178454379?search_keyword=%25ED%2599%258D%25EA%25B2%25BD%25EC%25B2%259C&_service=3&_no=16&buyingConditionId=31070656&catalogId=1030074019'),
('SUPP_21', '지큐랩 콜레스테롤 솔루션 300억', '노바렉스', '1회 1캡슐', '1일 1회', '/images/SUPP_21.png', 'http://mitem.gmarket.co.kr/Item?goodsCode=2740397522'),
('SUPP_22', '세라엑스 혈당콜레스테롤 프로케어', '한미양행', '1회 1정', '1일 2회', '/images/SUPP_22.png', 'http://www.11st.co.kr/products/4143279378'),
('SUPP_23', '콜레스테롤·혈압 코엔자임Q10/홍국', '(주)한풍네이처팜', '1회 2 캡슐', '1일 1회', '/images/SUPP_23.png', 'https://wiselycompany.com/product/%EC%BD%9C%EB%A0%88%EC%8A%A4%ED%85%8C%EB%A1%A4%C2%B7%ED%98%88%EC%95%95-%EC%BD%94%EC%97%94%EC%9E%90%EC%9E%84q10%ED%99%8D%EA%B5%AD/303/'),
('SUPP_24', '콜레스테롤엔 MKA 모나콜린케이', '엠에스바이오텍(주)', '1회 1정', '1일 1회', '/images/SUPP_24.png', 'http://m.11st.co.kr/products/m/5856906414'),
('SUPP_25', '콜레스테롤엔 콜레스타', '우리바이오(주)', '1회 2정', '1일 1회', '/images/SUPP_25.png', 'https://front.wemakeprice.com/deal/629050779'),
('SUPP_26', '콜레스테롤 개선 마늘', '주식회사 내츄럴엔', '1회 3정', '1일 1회', '/images/SUPP_26.png', 'http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=2520739929&GoodsSale=Y&jaehuid=200013954&utm_source=google&utm_medium=im_productda&utm_campaign=pmax&utm_content=roas_feed&utm_term=always_item&gclid=CjwKCAjwzo2mBhAUEiwAf7wjkqj1Yagz9m2Vj7W8GHuAJqW_ixlBJDNREnPczH34BfjLGlyAJmBeSRoCpNUQAvD_BwE'),
('SUPP_27', '콜레스테롤 케어솔루션 골드라벨', '(주)세종바이오팜', '1회 1정', '1일 2회', '/images/SUPP_27.png', 'https://shopping.interpark.com/product/productInfo.do?prdNo=8793318562'),
('SUPP_28', '그린픽 콜레스테롤건강', '콜마비앤에이치(주)', '1회 1정', '1일 1회', '/images/SUPP_28.png', 'https://front.wemakeprice.com/product/2158610018'),
('SUPP_29', '콜레스테롤체크', '콜마비앤에이치(주)', '1회 1정', '1일 1회', '/images/SUPP_29.png', 'https://smartstore.naver.com/mybodymall/products/7237011419?NaPm=ct%3Dlkpahgmo%7Cci%3D77f90178a1514fb20560469990128a7d81ab72fa%7Ctr%3Dslsf%7Csn%3D6865975%7Chk%3D0025c59a95030bb0cd6d156eb9c15f5f19522705'),
('SUPP_30', '콜레스테롤리듀스', '바이오에비뉴', '1회 1정', '1일 1회', '/images/SUPP_30.png', 'https://www.coupang.com/vp/products/6079210526?itemId=17928504766&vendorItemId=85390534470&src=1032001&spec=10305201&addtag=400&ctag=6079210526&lptag=I17928504766&itime=20230730195754&pageType=PRODUCT&pageValue=6079210526&wPcid=12918469624583878176714&wRef=cr.shopping.naver.com&wTime=20230730195754&redirect=landing&mcid=514863fcf4e749f8bc15cec7e0ddc500&isAddedCart='),
('SUPP_31', '눈 건강엔 포커스 루테인', '(주)한풍네이처팜', '1회 1정', '1일 1회', '/images/SUPP_31.png', 'https://www.lotteon.com/m/product/LO1951089647?sitmNo=LO1951089647_1951089648&mall_no=1&dp_infw_cd=BSGP34984'),
('SUPP_32', '미니막스 랩 눈 차즈기 스틱젤리', '코스맥스바이오(주)', '1회 1정', '1일 1회', '/images/SUPP_32.png', 'http://itempage3.auction.co.kr/DetailView.aspx?itemno=C568184551'),
('SUPP_33', '닥터린 루테인 지아잔틴 24', '노바렉스', '1회 1정', '1일 1회', '/images/SUPP_33.png', 'https://www.coupang.com/vp/products/6331337766?itemId=13680852141&vendorItemId=84639400451&src=1032001&spec=10305201&addtag=400&ctag=6331337766&lptag=I13680852141&itime=20230731093318&pageType=PRODUCT&pageValue=6331337766&wPcid=8375052375338407363418&wRef=cr.shopping.naver.com&wTime=20230731093318&redirect=landing&mcid=81febfde164d401cb92c893f67972a92&isAddedCart='),
('SUPP_34', '눈의 정석 빌베리', '노바렉스', '1회 1정', '1일 1회', '/images/SUPP_34.png', 'http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=C843105366&frm3=V2'),
('SUPP_35', '전립선·눈건강·지구력에 맨즈파워 트리플맥스', '우리바이오(주)', '1회 1정', '1일 1회', '/images/SUPP_35.png', 'http://m.11st.co.kr/products/m/5630514248?trTypeCd=21&trCtgrNo=585021'),
('SUPP_36', '피로한 눈엔 루테인 아스타잔틴', '(주)케이지앤에프', '1회 1정', '1일 1회', '/images/SUPP_36.png', 'http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=2575542211&GoodsSale=Y&jaehuid=200013954&utm_source=google&utm_medium=im_productda&utm_campaign=pmax&utm_content=roas_feed&utm_term=always_item&gclid=CjwKCAjwlJimBhAsEiwA1hrp5qrewl_TYyE2xvJDkfjYZS-G0v132xptIzctmlW1rKjBdCmLZg2w3hoC6F8QAvD_BwE'),
('SUPP_37', '올키 아이눈엔 베타카로틴', '코스맥스', '1회 1정', '1일 1회', '/images/SUPP_37.png', 'https://www.11st.co.kr/products/6046049335?gclid=CjwKCAjwlJimBhAsEiwA1hrp5iiFyURg5PupgYgAWOau-uZidKEVxx2QWcDMrjMN49ZGgr_7WpGHCBoCNYgQAvD_BwE&utm_term=&utm_campaign=googleshopping_pc_basic_new&utm_source=%B1%B8%B1%DB_PC_S_%BC%EE%C7%CE&utm_medium=%B0%CB%BB%F6'),
('SUPP_38', '눈건강 비타민A', '케이지랩', '1회 1정', '1일 1회', '/images/SUPP_38.png', 'https://shopping.interpark.com/product/productInfo.do?prdNo=10921286109'),
('SUPP_39', '세나큐브 눈사랑 루테인 아스타잔틴', '엔피케이(주)', '1회 1정', '1일 1회', '/images/SUPP_39.png', 'https://www.lotteon.com/p/product/LO1470797264?sitmNo=LO1470797264_1470797265&mall_no=1&dp_infw_cd=BSGP3541'),
('SUPP_40', '보니바시 눈 건강', '한미양행', '1회 1정', '1일 1회', '/images/SUPP_40.png', 'https://smartstore.naver.com/herohealthcare/products/8645298377?NaPm=ct%3Dlkp42a3k%7Cci%3Da86a1faee61a0e63d982fda00d124d2c3bf5c7b4%7Ctr%3Dsls%7Csn%3D7361445%7Chk%3D1259bede4f89de05abba2605e1f16392a101ef46');




INSERT INTO sideeffects (SIDEEFFECT,SIDEEFFECT_ID)
VALUES 
('구토', 'SIDE_01'),
('설사', 'SIDE_02'),
('복통', 'SIDE_03'),
('속쓰림', 'SIDE_04'),
('가스 증가', 'SIDE_05'),
('불면증', 'SIDE_06'),
('피부 발진', 'SIDE_07'),
('두통', 'SIDE_08'),
('어지러움', 'SIDE_09'),
('식욕 변화', 'SIDE_10'),
('신경과민성', 'SIDE_11'),
('지속성 복통', 'SIDE_12'),
('심장 빈맥', 'SIDE_13'),
('피로감', 'SIDE_14'),
('소화 문제', 'SIDE_15'),
('알레르기 반응', 'SIDE_16'),
('혈압 변화', 'SIDE_17'),
('신장 문제', 'SIDE_18'),
('간 기능 이상', 'SIDE_19'),
('뼈 손상', 'SIDE_20'),
('혈액 응고 문제', 'SIDE_21'),
('빈혈', 'SIDE_22'),
('면역 기능 저하', 'SIDE_23'),
('감각 이상', 'SIDE_24'),
('기억력 저하', 'SIDE_25'),
('항응고제 상호작용', 'SIDE_26'),
('호르몬 수준 변화', 'SIDE_27'),
('체중 증가', 'SIDE_28'),
('기관지 경련', 'SIDE_29'),
('간염', 'SIDE_30'),
('부작용 없음', 'SIDE_31');

INSERT INTO effect (EFFECT_ID, EFFECT)
VALUES 
('EFFECT_01', '간 건강에 도움을 줄 수 있음'),
('EFFECT_02', '체내 에너지 생성에 필요'),
('EFFECT_03', '대사에 필요'),
('EFFECT_04', '정상적인 면역기능에 필요'),
('EFFECT_05', '스트레스로 인한 피로 개선에 도움을 줄 수 있음'),
('EFFECT_06', '항산화 작용'),
('EFFECT_07', '유산균 증식 및 유해균 억제, 배변활동 원활, 장 건강에 도움을 줄 수 있음'),
('EFFECT_08', '스트레스로 인한 긴장완화에 도움을 줄 수 있음'),
('EFFECT_09', '콜레스테롤 개선'),
('EFFECT_10', '기억력 개선'),
('EFFECT_11', '혈행 개선'),
('EFFECT_12', '높은 혈압 감소'),
('EFFECT_13', '시력 개선'),
('EFFECT_14', '눈의 피로도 개선에 도움을 줄 수 있음'),
('EFFECT_15', '지구력 증진에 도움을 줄 수 있음'),
('EFFECT_16', '전립선 건강의 유지에 도움을 줄 수 있음'),
('EFFECT_17', '노화로 인해 감소될 수 있는 황반색소밀도를 유지하여 눈 건강에 도움을 줄 수 있음'),
('EFFECT_18', '어두운 곳에서 시각 적응을 위해 필요'),
('EFFECT_19', '피부와 점막을 형성하고 기능을 유지하는데 필요'),
('EFFECT_20', '상피세포의 성장과 발달에 필요'),
('EFFECT_21', '칼슘과 인이 흡수되고 이용되는데 필요'),
('EFFECT_22', '뼈의 형성과 유지에 필요'),
('EFFECT_23', '골다공증 발생 위험 감소에 도움을 줌'),
('EFFECT_24', '결합조직 형성과 기능유지에 필요'),
('EFFECT_25', '철의 흡수에 필요');

INSERT INTO component (COMPONENT_ID, COMPONENT)
VALUES
('COMP_01', '실리마린'),
('COMP_02', '비타민 B3'),
('COMP_03', '로사빈'),
('COMP_04', '비타민 B1'),
('COMP_05', '비타민 C'),
('COMP_06', '비타민 E'),
('COMP_07', '코로솔산'),
('COMP_08', '비타민 B12'),
('COMP_09', '코엔자임Q10'),
('COMP_10', '카테킨'),
('COMP_11', '알리인'),
('COMP_12', '구연산마그네슘'),
('COMP_13', '비타민 A'),
('COMP_14', '비타민 D'),
('COMP_15', '루테인'),
('COMP_16', '아스타잔틴'),
('COMP_17', '오메가-3'),
('COMP_18', '비타민 B2'),
('COMP_19', '셀레늄'),
('COMP_20', '비타민 B5'),
('COMP_21', 'L-테아닌'),
('COMP_22', '프로바이오틱스'),
('COMP_23', '아연'),
('COMP_24', 'B.breve IDCC 4401 열 처리배양건조물 3.0*10^10cells/450mg'),
('COMP_25', '플라보놀 배당체');

INSERT INTO supp_side (SUPP_ID, SIDEEFFECT_ID) 
VALUES
('SUPP_01', 'SIDE_16'),
('SUPP_01', 'SIDE_02'),
('SUPP_01', 'SIDE_03'),
('SUPP_01', 'SIDE_15'),
('SUPP_02', 'SIDE_16'),
('SUPP_02', 'SIDE_02'),
('SUPP_02', 'SIDE_03'),
('SUPP_02', 'SIDE_15'),
('SUPP_03', 'SIDE_16'),
('SUPP_03', 'SIDE_02'),
('SUPP_03', 'SIDE_03'),
('SUPP_03', 'SIDE_15'),
('SUPP_04', 'SIDE_16'),
('SUPP_04', 'SIDE_02'),
('SUPP_04', 'SIDE_03'),
('SUPP_04', 'SIDE_15'),
('SUPP_05', 'SIDE_16'),
('SUPP_05', 'SIDE_02'),
('SUPP_05', 'SIDE_03'),
('SUPP_05', 'SIDE_15'),
('SUPP_06', 'SIDE_16'),
('SUPP_06', 'SIDE_02'),
('SUPP_06', 'SIDE_03'),
('SUPP_06', 'SIDE_15'),
('SUPP_07', 'SIDE_16'),
('SUPP_07', 'SIDE_02'),
('SUPP_07', 'SIDE_03'),
('SUPP_07', 'SIDE_15'),
('SUPP_08', 'SIDE_16'),
('SUPP_08', 'SIDE_02'),
('SUPP_08', 'SIDE_03'),
('SUPP_08', 'SIDE_15'),
('SUPP_09', 'SIDE_16'),
('SUPP_09', 'SIDE_02'),
('SUPP_09', 'SIDE_03'),
('SUPP_09', 'SIDE_15'),
('SUPP_10', 'SIDE_16'),
('SUPP_10', 'SIDE_02'),
('SUPP_10', 'SIDE_03'),
('SUPP_10', 'SIDE_15'),
('SUPP_11', 'SIDE_27'),
('SUPP_12', 'SIDE_30'),
('SUPP_13', 'SIDE_16'),
('SUPP_14', 'SIDE_16'),
('SUPP_15', 'SIDE_25'),
('SUPP_16', 'SIDE_16'),
('SUPP_16', 'SIDE_02'),
('SUPP_16', 'SIDE_03'),
('SUPP_16', 'SIDE_15'),
('SUPP_17', 'SIDE_16'),
('SUPP_18', 'SIDE_16'),
('SUPP_19', 'SIDE_16'),
('SUPP_19', 'SIDE_02'),
('SUPP_19', 'SIDE_03'),
('SUPP_19', 'SIDE_15'),
('SUPP_20', 'SIDE_16'),
('SUPP_21', 'SIDE_11'),
('SUPP_21', 'SIDE_25'),
('SUPP_22', 'SIDE_30'),
('SUPP_23', 'SIDE_11'),
('SUPP_23', 'SIDE_25'),
('SUPP_23', 'SIDE_27'),
('SUPP_23', 'SIDE_30'),
('SUPP_24', 'SIDE_11'),
('SUPP_24', 'SIDE_25'),
('SUPP_24', 'SIDE_27'),
('SUPP_24', 'SIDE_30'),
('SUPP_25', 'SIDE_11'),
('SUPP_25', 'SIDE_25'),
('SUPP_25', 'SIDE_27'),
('SUPP_26', 'SIDE_26'),
('SUPP_27', 'SIDE_11'),
('SUPP_27', 'SIDE_25'),
('SUPP_27', 'SIDE_27'),
('SUPP_28', 'SIDE_23'),
('SUPP_29', 'SIDE_31'),
('SUPP_30', 'SIDE_15'),
('SUPP_31', 'SIDE_31'),
('SUPP_32', 'SIDE_15'),
('SUPP_33', 'SIDE_31'),
('SUPP_34', 'SIDE_15'),
('SUPP_35', 'SIDE_31'),
('SUPP_36', 'SIDE_15'),
('SUPP_37', 'SIDE_31'),
('SUPP_38', 'SIDE_15'),
('SUPP_39', 'SIDE_31'),
('SUPP_40', 'SIDE_15');

INSERT INTO supp_comp (SUPP_ID, COMPONENT_ID) VALUES
('SUPP_01', 'COMP_03'),
('SUPP_01', 'COMP_01'),
('SUPP_02', 'COMP_02'),
('SUPP_02', 'COMP_18'),
('SUPP_03', 'COMP_03'),
('SUPP_03', 'COMP_02'),
('SUPP_04', 'COMP_03'),
('SUPP_04', 'COMP_02'),
('SUPP_05', 'COMP_01'),
('SUPP_05', 'COMP_19'),
('SUPP_06', 'COMP_01'),
('SUPP_06', 'COMP_05'),
('SUPP_07', 'COMP_01'),
('SUPP_07', 'COMP_15'),
('SUPP_08', 'COMP_01'),
('SUPP_08', 'COMP_23'),
('SUPP_09', 'COMP_01'),
('SUPP_09', 'COMP_05'),
('SUPP_10', 'COMP_01'),
('SUPP_10', 'COMP_22'),
('SUPP_11', 'COMP_03'),
('SUPP_11', 'COMP_21'),
('SUPP_12', 'COMP_02'),
('SUPP_12', 'COMP_05'),
('SUPP_13', 'COMP_04'),
('SUPP_13', 'COMP_18'),
('SUPP_14', 'COMP_05'),
('SUPP_14', 'COMP_04'),
('SUPP_15', 'COMP_04'),
('SUPP_15', 'COMP_20'),
('SUPP_16', 'COMP_03'),
('SUPP_16', 'COMP_05'),
('SUPP_17', 'COMP_04'),
('SUPP_17', 'COMP_18'),
('SUPP_18', 'COMP_18'),
('SUPP_18', 'COMP_02'),
('SUPP_19', 'COMP_01'),
('SUPP_19', 'COMP_02'),
('SUPP_20', 'COMP_06'),
('SUPP_20', 'COMP_23'),
('SUPP_21', 'COMP_08'),
('SUPP_21', 'COMP_24'),
('SUPP_22', 'COMP_07'),
('SUPP_22', 'COMP_25'),
('SUPP_23', 'COMP_09'),
('SUPP_23', 'COMP_21'),
('SUPP_24', 'COMP_25'),
('SUPP_25', 'COMP_10'),
('SUPP_25', 'COMP_25'),
('SUPP_26', 'COMP_11'),
('SUPP_27', 'COMP_10'),
('SUPP_28', 'COMP_24'),
('SUPP_28', 'COMP_21'),
('SUPP_29', 'COMP_05'),
('SUPP_29', 'COMP_02'),
('SUPP_30', 'COMP_12'),
('SUPP_30', 'COMP_15'),
('SUPP_31', 'COMP_13'),
('SUPP_31', 'COMP_15'),
('SUPP_32', 'COMP_05'),
('SUPP_32', 'COMP_16'),
('SUPP_33', 'COMP_06'),
('SUPP_33', 'COMP_24'),
('SUPP_34', 'COMP_14'),
('SUPP_34', 'COMP_17'),
('SUPP_35', 'COMP_15'),
('SUPP_35', 'COMP_05'),
('SUPP_36', 'COMP_15'),
('SUPP_36', 'COMP_16'),
('SUPP_37', 'COMP_13'),
('SUPP_38', 'COMP_08'),
('SUPP_38', 'COMP_03'),
('SUPP_39', 'COMP_14'),
('SUPP_39', 'COMP_17'),
('SUPP_39', 'COMP_06'),
('SUPP_40', 'COMP_05'),
('SUPP_40', 'COMP_03');

INSERT INTO supp_list (SUPP_ID, EFFECT_ID, EFFECT_FLAG) VALUES
('SUPP_01', 'EFFECT_01', 'EFFECT_01'),
('SUPP_01', 'EFFECT_02', 'EFFECT_01'),
('SUPP_02', 'EFFECT_01', 'EFFECT_01'),
('SUPP_02', 'EFFECT_02', 'EFFECT_01'),
('SUPP_03', 'EFFECT_01', 'EFFECT_01'),
('SUPP_03', 'EFFECT_02', 'EFFECT_01'),
('SUPP_04', 'EFFECT_01', 'EFFECT_01'),
('SUPP_05', 'EFFECT_01', 'EFFECT_01'),
('SUPP_05', 'EFFECT_04', 'EFFECT_01'),
('SUPP_06', 'EFFECT_01', 'EFFECT_01'),
('SUPP_06', 'EFFECT_02', 'EFFECT_01'),
('SUPP_07', 'EFFECT_01', 'EFFECT_01'),
('SUPP_07', 'EFFECT_05', 'EFFECT_01'),
('SUPP_08', 'EFFECT_01', 'EFFECT_01'),
('SUPP_08', 'EFFECT_02', 'EFFECT_01'),
('SUPP_08', 'EFFECT_04', 'EFFECT_01'),
('SUPP_09', 'EFFECT_01', 'EFFECT_01'),
('SUPP_09', 'EFFECT_06', 'EFFECT_01'),
('SUPP_10', 'EFFECT_01', 'EFFECT_01'),
('SUPP_10', 'EFFECT_07', 'EFFECT_01'),
('SUPP_11', 'EFFECT_05', 'EFFECT_05'),
('SUPP_12', 'EFFECT_02', 'EFFECT_05'),
('SUPP_13', 'EFFECT_05', 'EFFECT_05'),
('SUPP_13', 'EFFECT_02', 'EFFECT_05'),
('SUPP_14', 'EFFECT_06', 'EFFECT_05'),
('SUPP_14', 'EFFECT_02', 'EFFECT_05'),
('SUPP_15', 'EFFECT_02', 'EFFECT_05'),
('SUPP_16', 'EFFECT_01', 'EFFECT_05'),
('SUPP_16', 'EFFECT_06', 'EFFECT_05'),
('SUPP_17', 'EFFECT_05', 'EFFECT_05'),
('SUPP_17', 'EFFECT_02', 'EFFECT_05'),
('SUPP_18', 'EFFECT_05', 'EFFECT_05'),
('SUPP_18', 'EFFECT_02', 'EFFECT_05'),
('SUPP_19', 'EFFECT_05', 'EFFECT_05'),
('SUPP_19', 'EFFECT_02', 'EFFECT_05'),
('SUPP_20', 'EFFECT_05', 'EFFECT_05'),
('SUPP_20', 'EFFECT_06', 'EFFECT_05'),
('SUPP_20', 'EFFECT_04', 'EFFECT_05'),
('SUPP_21', 'EFFECT_09', 'EFFECT_09'),
('SUPP_22', 'EFFECT_10', 'EFFECT_09'),
('SUPP_22', 'EFFECT_11', 'EFFECT_09'),
('SUPP_22', 'EFFECT_09', 'EFFECT_09'),
('SUPP_23', 'EFFECT_10', 'EFFECT_09'),
('SUPP_23', 'EFFECT_11', 'EFFECT_09'),
('SUPP_23', 'EFFECT_06', 'EFFECT_09'),
('SUPP_23', 'EFFECT_12', 'EFFECT_09'),
('SUPP_23', 'EFFECT_09', 'EFFECT_09'),
('SUPP_24', 'EFFECT_09', 'EFFECT_09'),
('SUPP_25', 'EFFECT_10', 'EFFECT_09'),
('SUPP_25', 'EFFECT_11', 'EFFECT_09'),
('SUPP_25', 'EFFECT_12', 'EFFECT_09'),
('SUPP_25', 'EFFECT_06', 'EFFECT_09'),
('SUPP_25', 'EFFECT_09', 'EFFECT_09'),
('SUPP_26', 'EFFECT_09', 'EFFECT_09'),
('SUPP_27', 'EFFECT_06', 'EFFECT_09'),
('SUPP_27', 'EFFECT_13', 'EFFECT_09'),
('SUPP_27', 'EFFECT_09', 'EFFECT_09'),
('SUPP_28', 'EFFECT_09', 'EFFECT_09'),
('SUPP_29', 'EFFECT_09', 'EFFECT_09'),
('SUPP_30', 'EFFECT_09', 'EFFECT_09'),
('SUPP_31', 'EFFECT_13', 'EFFECT_13'),
('SUPP_32', 'EFFECT_14', 'EFFECT_13'),
('SUPP_32', 'EFFECT_04', 'EFFECT_13'),
('SUPP_33', 'EFFECT_01', 'EFFECT_13'),
('SUPP_33', 'EFFECT_17', 'EFFECT_13'),
('SUPP_33', 'EFFECT_06', 'EFFECT_13'),
('SUPP_34', 'EFFECT_14', 'EFFECT_13'),
('SUPP_35', 'EFFECT_15', 'EFFECT_13'),
('SUPP_35', 'EFFECT_16', 'EFFECT_13'),
('SUPP_35', 'EFFECT_17', 'EFFECT_13'),
('SUPP_35', 'EFFECT_18', 'EFFECT_13'),
('SUPP_35', 'EFFECT_19', 'EFFECT_13'),
('SUPP_35', 'EFFECT_20', 'EFFECT_13'),
('SUPP_35', 'EFFECT_21', 'EFFECT_13'),
('SUPP_36', 'EFFECT_17', 'EFFECT_13'),
('SUPP_36', 'EFFECT_14', 'EFFECT_13'),
('SUPP_37', 'EFFECT_24', 'EFFECT_13'),
('SUPP_37', 'EFFECT_25', 'EFFECT_13'),
('SUPP_37', 'EFFECT_06', 'EFFECT_13'),
('SUPP_37', 'EFFECT_14', 'EFFECT_13'),
('SUPP_38', 'EFFECT_18', 'EFFECT_13'),
('SUPP_38', 'EFFECT_19', 'EFFECT_13'),
('SUPP_38', 'EFFECT_20', 'EFFECT_13'),
('SUPP_39', 'EFFECT_17', 'EFFECT_13'),
('SUPP_39', 'EFFECT_14', 'EFFECT_13'),
('SUPP_39', 'EFFECT_25', 'EFFECT_13'),
('SUPP_40', 'EFFECT_01', 'EFFECT_13'),
('SUPP_40', 'EFFECT_17', 'EFFECT_13'),
('SUPP_40', 'EFFECT_06', 'EFFECT_13'),
('SUPP_40', 'EFFECT_14', 'EFFECT_13');

INSERT INTO REVIEW 
(REVIEW_ID, WRITING_DATE, TITLE, CONTENT, VIEW_COUNT, UNIQUE_ID, IMAGES) 
VALUES
('REVIEW_01', NOW(), '간 건강엔 밀크씨슬', '간 건강엔 밀크씨슬에 대한 리뷰입니다.', '100', 'MEMB_03', '/images/SUPP_01.png'),
('REVIEW_02', NOW(), '더 스포츠 비타민', '더 스포츠 의학적인 비타민 B Complex에 대한 리뷰입니다.', '150', 'MEMB_02', '/images/iamcat2.png'),
('REVIEW_03', NOW(), '간기보 리뷰', '간기보에 대한 리뷰입니다.', '200', 'MEMB_04', '/images/SUPP_03.png'),
('REVIEW_04', NOW(), '동국내다 옥내씨슬', '동국내다 옥내씨슬에 대한 리뷰입니다.', '120', 'MEMB_09', '/images/iamcat2.png'),
('REVIEW_05', NOW(), '닥터 쎈 실리마린', '닥터 쎈 실리마린 간건강 스파급수에 대한 리뷰입니다.', '180', 'MEMB_08', '/images/SUPP_05.png'),
('REVIEW_06', NOW(), '간에 좋은 실리마린 밀크씨슬', '간에 좋은 실리마린 밀크씨슬에 대한 리뷰입니다.', '90', 'MEMB_19', '/images/SUPP_06.png'),
('REVIEW_07', NOW(), '간과 피로에 좋은 밀크씨슬, 홍경천', '간과 피로에 좋은 밀크씨슬, 홍경천에 대한 리뷰입니다.', '110', 'MEMB_14', '/images/iamcat2.png'),
('REVIEW_08', NOW(), '드리내 간건강', '드리내 간건강 실리마린 아우씨 아연슬에 대한 리뷰입니다.', '130', 'MEMB_12', '/images/SUPP_08.png'),
('REVIEW_09', NOW(), '균형:간건강', '균형:간건강에 대한 리뷰입니다.', '95', 'MEMB_12', '/images/iamcat.png'),
('REVIEW_10', NOW(), '듀오락 간케어', '듀오락 간케어에 대한 리뷰입니다.', '140', 'MEMB_11', '/images/SUPP_10.png'),
('REVIEW_11', NOW(), '솔브앤고 뜸&스트레스 케어', '솔브앤고 뜸&스트레스 케어에 대한 리뷰입니다.', '160', 'MEMB_13', '/images/SUPP_11.png'),
('REVIEW_12', NOW(), '곰피로간건강+', '곰피로간건강+에 대한 리뷰입니다.', '105', 'MEMB_19', '/images/SUPP_12.png'),
('REVIEW_13', NOW(), '마이니 슈퍼비 스트레스 피로케어', '마이니 슈퍼비 긴장 케어에 대한 리뷰입니다.', '170', 'MEMB_17', '/images/SUPP_13.png'),
('REVIEW_14', NOW(), '피로날린', '피로날린에 대한 리뷰입니다.', '200', 'MEMB_10', '/images/SUPP_14.png'),
('REVIEW_15', NOW(), '피로개선 비타민', '피로개선 활력비타민에 대한 리뷰입니다.', '120', 'MEMB_14', '/images/lc_1.png'),
('REVIEW_16', NOW(), '바이탈헬스 피로개선 올인원', '바이탈헬스 피로개선 올인원에 대한 리뷰입니다.', '130', 'MEMB_02', '/images/SUPP_16.png'),
('REVIEW_17', NOW(), '피로 바이타민 B', '피로 바이타민 B-컴플렉스에 대한 리뷰입니다.', '110', 'MEMB_07', '/images/SUPP_17.png'),
('REVIEW_18', NOW(), '피로아웃티', '피로아웃티에 대한 리뷰입니다.', '90', 'MEMB_06', '/images/iamcat2.png'),
('REVIEW_19', NOW(), '경희 피로가라', '경희 피로가라에 대한 리뷰입니다.', '100', 'MEMB_05', '/images/SUPP_19.png'),
('REVIEW_20', NOW(), '프리미엄 피로개선', '프리미엄 피로개선 홍경천 플러스에 대한 리뷰입니다.', '150', 'MEMB_01', '/images/SUPP_20.png'),
('REVIEW_21', NOW(), '지큐랩 콜레스테롤', '지큐랩 콜레스테롤 솔루션 300억에 대한 리뷰입니다.', '130', 'MEMB_20', '/images/SUPP_21.png');