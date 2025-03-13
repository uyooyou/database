create table post1 (
p1 varchar(100),
p2 varchar(100),
p3 varchar(100),
p4 varchar(100),
p5 varchar(100),
p6 varchar(100),
p7 varchar(100),
p8 varchar(100)
);
select * from post1;
-- 1. 전체 데이터 행 개수
select count(*) from post1;
-- 2. 서울 지역 데이터 개수
select count(*) from post1 where p2 like '%서울%';
select count(*) from post1 where p2 like '서울%';
-- 3. 서울 지역 데이터 출력(일정 개수 만큼) __ 게시판 출력 개수 설정시 사용
select * from post1 where p2 like '%서울%' limit 20;	-- 생략
select * from post1 where p2 like '%서울%' limit 0,20;
select * from post1 where p2 like '%서울%' limit 20,20;
select * from post1 where p2 like '%서울%' limit 40,20;
-- 4. 서울 지역 서초구
select * from post1 where p2 like '%서울%' and p3 like '%서초구%';
-- 5. 양재동을 검색하여 출력 
select * from post1 where p4 like '%양재%';
-- 6. 양재동이 무슨 구에 속해있는지 '구' 이름만 출력 
select distinct(p3) from post1 where p4 like '%양재%';	-- distinct() : 중복된 내용의 단일 출력
-- 7. 달서구청을 검색하여 정확한 주소를 찾아 출력 
select * from post1 where p8 like '%달서구청%';
select * from post1 where p8 like '%롯데캐슬%';
-- 8. 대구 지역의 구 이름만 출력 (단일데이터로 출력)
select distinct(p4) from post1 where p3 like '%구리시%';
select count(distinct(p4)) from post1 where p3 like '%구리시%';
-- 9. 우편번호 검색하여 결과값을 모두 연결하여 출력
select concat(p1,' ',p2,' ',p3,' ',p4,' ',p5,' ',p6,' ',p7,' ',p8) from post1 where p1 = '471708';

-- 10. 테이블 카피













