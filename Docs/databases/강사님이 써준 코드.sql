UPDATE dummy_tables
JOIN review ON dummy_tables.SUPP_ID = review.SUPP_ID
SET dummy_tables.REVIEW_ID = review.REVIEW_ID;

create index idx_01 on dummy_tables(SUPP_ID);
create index idx_02 on dummy_tables(REVIEW_ID);

create index idx_03 on review(SUPP_ID);
create index idx_04 on review(REVIEW_ID);


select * from dummy_tables
;

select count(*), count(distinct REVIEW_ID) from review
;

-- start temp
create table review_temp
as 
select * from review
limit 1
;

create table dummy_tables_temp
as
select * from dummy_tables
limit 1
;

insert into dummy_tables_temp
select * from dummy_tables
;


insert into review_temp
select * from review
;

create index idx_01_temp1 on dummy_tables_temp(SUPP_ID);
create index idx_01_temp2 on dummy_tables_temp(REVIEW_ID);

create index idx_03_temp on review_temp(SUPP_ID);
create index idx_04_temp on review_temp(REVIEW_ID);


select count(*) from review_temp;

select * 
from dummy_tables_temp a
where exists
(
	select * from review_temp b
    where a.SUPP_ID = b.SUPP_ID
)
;

update dummy_tables_temp a set a.REVIEW_ID = b.REVIEW_ID;
where exists
(
	select * from review_temp b
    where a.SUPP_ID = b.SUPP_ID
)
;


select 
	a.*,
    (
		select 
			REVIEW_ID
        from review_temp b
        where a.SUPP_ID = b.SUPP_ID
    ) b
from dummy_tables_temp a 
;

select 
	*
from dummy_tables_temp a
where exists
(
	select * from review_temp  b
    where a.SUPP_ID = b.SUPP_ID 
)
;

select 
	*
from  review_temp  b
where exists
(
	select * from dummy_tables_temp a
    where a.SUPP_ID = b.SUPP_ID 
)
;

select 
	count(distinct SUPP_ID), count(*)
from review_temp
;

select 
	count(SUPP_ID), count(distinct SUPP_ID), count(*)
from review_temp
;

select 
	SUPP_ID, count(*)
from review_temp
group by SUPP_ID
having count(SUPP_ID) > 1

;
