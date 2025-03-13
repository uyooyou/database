drop table stdScore;

create table stdScore1 (
 no int not null auto_increment,
 id varchar(50) not null,
 loc varchar(100) not null,
 kor tinyint unsigned default 0,
 eng tinyint unsigned default 0,
 primary key(no)
);

-- not null : null 값 허용 안함(누락 방지)
-- auto_increment : 자동 숫자 등록(1부터 시작), 고유성 보장 받음 - 데이터 삭제시 자동 재생 불가, 중복 데이터 허용 안함, primary key 반드시 설정 
-- primary key : 중복 값 없는 컬럼에서 설정(고유성 보장, 빠른검색)
-- unsigned : 음수공간을 양수공간으로 전이
-- default : 초기값 설정(누락시 효과)


-- insert into stdScore(id,loc,kor,eng)
-- 	values('asdf','전남','250','255');
select * from stdscore1;

/*
update stdscore1 set loc = '서울' where loc = '1';
update stdscore1 set loc = '대구' where loc = '2';
update stdscore1 set loc = '원주' where loc = '3';
update stdscore1 set loc = '전주' where loc = '4';
*/

select * from stdscore1;
select eng from stdscore1 order by eng desc;
select * from stdscore1 order by id asc;	-- a ~ z
select * from stdscore1 order by id desc;	-- z ~ a

select max(eng) as '영어최고점' from stdscore1;	-- 최고점 출력
-- round : 반올림
select round(avg(eng),2) as '영어평균' from stdscore1;	-- 평균 출력
select round((eng+kor)/2,2) as '평균' from stdscore1 where id = 'spring7';

-- (4)
select * from stdscore1 where eng < 60;
-- (5)
select * from stdscore1 where eng >= 60 and kor >= 60;
-- (6)
select * from stdscore1 where eng < 60 or kor < 60;
-- (6-1) 평균이 60이상인 학생들 출력
select id,(eng+kor)/2 as 'avg' from stdscore1 where (eng+kor)/2 >= 60;
-- (7) 1~5등 출력
select id,eng from stdscore1 order by eng desc limit 5;		-- limit 0,5 -> 기본 0번은 생략가능
-- (8) 6~10등 출력	(limit 자리번호(0번부터), 출력개수)
select id,eng from stdscore1 order by eng desc limit 5,5;
-- 행번호(index번호) 존재 (출력 안됨)
select * from stdscore1;
select * from stdscore1 limit 10,10;
-- (9) 1등의 정보(아이디, 총합점수
select * from stdscore1 order  by (eng+kor) desc limit 1;
-- ----------------------------------------
select * from stdscore1 where (eng+kor) = (select max(eng+kor) from stdscore1);
-- ----------------------------------------
select max(eng+kor) from stdscore1;

-- (10) 'spring7' 의 영어 점수를 +10 해줌
update stdscore1 set eng = eng + 10 where id = 'spring7';		-- 10점 더하기
update stdscore1 set eng = 90 where id = 'spring7';				-- 무조건 90점 만들기..
-- spring7의 정보 변경( 구리, 80,70)
update stdscore1 set eng = 70,kor = 80,loc = '구리' where id = 'spring7';
-- (11)
select * from stdscore1 where loc = '대구';
-- (12)
select count(*) from stdscore1 where loc = '대구';
-- (13)
select id,eng from stdscore1 where loc = '대구' and eng = (select max(eng) from stdscore1 where loc = '대구');
-- (14)
select id,(eng+kor) '총점' from stdscore1 where loc = '대구' and (eng+kor) = (select max(eng+kor) from stdscore1 where loc = '대구');
-- -------------------------------------
update stdscore1 set loc = '서울특별시 강남구' where loc = '서울';
update stdscore1 set loc = '대구광역시 수성구' where loc = '대구';
update stdscore1 set loc = '강원도 원주시' where loc = '원주';
update stdscore1 set loc = '전라북도 전주시' where loc = '전주';
update stdscore1 set loc = '경기도 구리시 토평동' where loc = '구리';

select * from stdscore1;
-- -------------- 검색(LIKE) => % : 임의의 문자열(이 올 수도 있고 안 올 수도 있음)
-- "수성구" 라는 단어가 들어가 있는 주소
select * from stdscore1 where loc like '%수성구%';
-- "토평" 이라는 단어가 들어가 있는 주소
select * from stdscore1 where loc like '%토평%';
-- "강원" 이라는 단어로 시작하는 주소 검색
select * from stdscore1 where loc like '강원%';
-- "원주시" 라는 단어로 끝나는 주소 검색 
select * from stdscore1 where loc like '%원주시';
-- "st"로 시작하는 아이디 검색
select * from stdscore1 where id like 'st%';
-- "st"로 시작하는 아이디 검색 (정확하게 5자리 값)
-- select * from stdscore1 where id like 'st.';
select * from stdscore1 where id like 'st%' and length(id) = 5;
-- ---------------------------------------------------
select count(*) from stdscore1 where loc like '%대구%';
select avg(eng) from stdscore1 where loc like '강원도%';





-- select * from stdScore where no = 5;		-- 빠른 검색~

-- truncate table stdScore;	-- 데이터 초기화

-- delete from stdScore where no = 6;
