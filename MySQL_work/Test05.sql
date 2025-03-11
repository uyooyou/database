-- create table flowerInfo (
-- code varchar(10),
-- name varchar(20),
-- color varchar(30);
-- price int
-- );

-- insert into flowerInfo(code,name,color,price)
-- 				values('101','rose','red','1600');
-- insert into flowerInfo(code,name,color,price)
-- 				values('102','rose','yellow','5500');
-- insert into flowerInfo(code,name,color,price)
-- 				values('103','herb','green','5000');

/*
-- 전체출력
select * from flowerInfo;
-- 컬럼선택 출력
select name from flowerInfo;
select name,price from flowerInfo;
-- rose의 가격은 500원입니다.
select concat(name,'의 가격은 ',price,'원 입니다.') from flowerInfo;
-- 이름 대문자 출력
select ucase(name),price from flowerInfo;
*/

-- where 조건문 
select * from flowerInfo where name = 'rose';
select * from flowerInfo where price >= 1000;
select * from flowerInfo where price < 1000;
select * from flowerInfo where name = 'rose' and color = 'yellow';
select * from flowerInfo where price >= 1000 and price <= 2000;
