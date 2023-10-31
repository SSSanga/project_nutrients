-- dummy_tables_supp 만들기_필수-- 
CREATE TABLE dummy_tables_supp (
	SUPP_ID VARCHAR(500),
    PRODUCT VARCHAR(500),
    EFFECT_FLAG VARCHAR(500),
    EFFECT_ID VARCHAR(500),
    EFFECT VARCHAR(500),
    REVIEW_ID VARCHAR(500),
    WRITING_DATE timestamp,
    TITLE VARCHAR(500),
    STAR VARCHAR(500),
    CONTENT VARCHAR(10000),
    COL_F VARCHAR(500));

INSERT INTO dummy_tables_supp(REVIEW_ID,WRITING_DATE, TITLE, STAR, SUPP_ID)
SELECT REVIEW_ID, WRITING_DATE, TITLE, STAR, SUPP_ID
FROM project_nutrients.review;

UPDATE dummy_tables_supp
JOIN supp_spec
ON dummy_tables_supp.SUPP_ID= supp_spec.SUPP_ID
SET dummy_tables_supp.PRODUCT = supp_spec.PRODUCT;

UPDATE dummy_tables_supp
JOIN supp_list 
ON dummy_tables_supp.SUPP_ID = supp_list.SUPP_ID
SET dummy_tables_supp.EFFECT_FLAG = supp_list.EFFECT_FLAG;

UPDATE dummy_tables_supp
JOIN supp_list
ON dummy_tables_supp.SUPP_ID = supp_list.SUPP_ID
SET dummy_tables_supp.EFFECT_ID = supp_list.EFFECT_ID;

UPDATE dummy_tables_supp
JOIN effect
ON dummy_tables_supp.EFFECT_ID = effect.EFFECT_ID
SET dummy_tables_supp.EFFECT = effect.EFFECT;

-- ALTER TABLE 테이블명
-- MODIFY COLUMN 열명 VARCHAR(새로운크기);

ALTER TABLE dummy_tables_supp
MODIFY COLUMN COL_A VARCHAR(10000);

-- ALTER TABLE 테이블명
-- DROP COLUMN 열명;
ALTER TABLE dummy_tables_supp
DROP COLUMN COL_B;


UPDATE dummy_tables_supp
JOIN review
ON dummy_tables_supp.REVIEW_ID = review.REVIEW_ID
SET dummy_tables_supp.CONTENT = review.CONTENT;