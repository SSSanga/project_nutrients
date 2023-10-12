SELECT * FROM test_schema.supp_spec;

-- 1. 더미 테이블에 supp product 데이터 들어오면 2. 영양제 유니크 아이디 생성
insert into test_schema.supp_spec(SUPP_ID, PRODUCT)
select concat('SUPP', '_', `index`),
       product_name
from test_schema.dummy_table;