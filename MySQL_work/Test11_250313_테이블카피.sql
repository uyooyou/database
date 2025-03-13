-- 테이블 카피

-- 1 : 1 qhrtk
create table post11 as select * from post1;

select count(*) from post11;

-- 부분 카피
create table post1_seoul as select * from post1 where p2 like '%서울%';
select * from post1_seoul;

-- 구조만 카피
create table post12 as select * from post1 where 1=2;
select * from post12;
desc post12;	-- 구조 확인 명령어