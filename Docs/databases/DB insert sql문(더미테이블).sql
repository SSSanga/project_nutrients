SELECT * FROM test_schema.dummy_table;

-- 3. 영양제 유니크 아이디 넣을 컬럼 생성
ALTER TABLE dummy_table
ADD COLUMN SUPP_ID VARCHAR(255);

-- 4. 유니크 아이디 더미테이블에 추가하기
UPDATE dummy_table
JOIN supp_spec ON dummy_table.product_name = supp_spec.product
SET dummy_table.SUPP_ID = supp_spec.SUPP_ID;

-- 5. 리뷰 넣을 컬럼 생성
ALTER TABLE dummy_table
ADD COLUMN product VARCHAR(500);

ALTER TABLE dummy_table
ADD COLUMN review_date VARCHAR(500);

ALTER TABLE dummy_table
ADD COLUMN review_content VARCHAR(500);

-- ALTER TABLE dummy_table DROP COLUMN review_content; 

ALTER TABLE dummy_table
ADD COLUMN review_star VARCHAR(500);

ALTER TABLE dummy_table
ADD COLUMN review_writer VARCHAR(500);

ALTER TABLE dummy_table
ADD COLUMN re_index VARCHAR(500);

UPDATE dummy_table
SET supp_id = CASE
    WHEN product_name = product THEN supp_id
    ELSE supp_id
END;


ALTER TABLE cdummy_tables
ADD COLUMN EFFECT_FLAG VARCHAR(500);

UPDATE cdummy_tables
JOIN supp_spec ON cdummy_tables.product = supp_spec.product
SET cdummy_tables.SUPP_ID = supp_spec.SUPP_ID;

update cdummy_tables
set EFFECT_FLAG = 'EFFECT_09';

insert into supp_spec(LOCATION, LINK)
select LOCATION, LINK  -- CSV 컬럼이름이랑 같음
from dummy_table;