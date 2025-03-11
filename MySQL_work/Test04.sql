-- 테이블 생성
create table sports (code int, name varchar(10));
-- 테이블 데이터 입력
insert into sports (code,name) values(101,'축구');
insert into sports (code,name) values(102,'야구');
insert into sports (code,name) values(103,'배구');
-- 테이블 데이터 출력
select * from sports;
select code,name from sports;
-- 테이블 데이터 수정
update sports set name = '농구' where code = '101';
-- 테이블 데이터 삭제
delete from sports where code = '101';