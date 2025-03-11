-- count 함수 : 행(레코드,row)의 개수를 얻어줌
create table bookInfo (
	code varchar(20),
    title varchar(50),
    country varchar(30)
);


-- 풀어보기
-- 1. 'linux 첫걸음'의 제목으로 되어있는 레코드 출력
select * from bookInfo where title = 'linux 첫걸음';
-- 1.1 지은이가 '리눅이'로 되어있는 레코드 출력
select * from bookInfo where writer = '홍길동';
-- 2. maker에서 공백인 데이터 출력
select * from bookInfo where maker = '';		-- null값은 안 나옴

-- 3. maker에서 null값인 데이터 출력
select * from bookInfo where maker = 'null';	-- 안나옴
select * from bookInfo where maker = null;		-- 안나옴
select * from bookInfo where maker is null;		-- 출력

-- 3.1 price에서 null값인 데이터 출력
select * from bookInfo where price is null;

-- 3.2 price에서 null값이 아닌 데이터 출력
select * from bookInfo where price is not null;

-- 4. maker 에서 완전한 데이터들만 출력
select * from bookInfo where maker != ''and maker is not null;

-- 4.1 maker+price에서 완전 데이터들만 출력
select * from bookInfo where maker != '';


-- sum() 함수 : 컬럼 세로 합계, avg() 함수
-- *** 가격의 함계와 평균 ***
select sum(price) from bookInfo;
select avg(price) from bookInfo;
select sum(price),avg(price) from bookInfo;




















