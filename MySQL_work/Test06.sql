create table bookInfo (
	code int,
	title varchar(100),
	writer varchar(50),
	price int,
	maker varchar(50)
);
desc bookInfo;

-- 1 ~ 4 : 정상입력
insert into bookInfo(code,title,writer,price,maker)
	values('1','java1교재','홍길동','35000','영진');
insert into bookInfo(code,title,writer,price,maker)
	values('2','java2교재','홍길동','38000','');
-- 세팅 안된 데이터는 null값채워짐
insert into bookInfo(code,title,writer)
	values('3','mySQL교재','이순신');
-- 컬럼세팅 생략 가능 --> 단, 모든 데이터 삽입에 대한 조건
insert into bookInfo
	values('4','linux 첫걸음','눅스','50000','한빛');	-- ok
    
-- 모든 데이터 삽입에 대한 조건에 부합되지 않음
insert into bookInfo
	values('5','html 첫걸음','발냄시');					-- 오류
   
-- 숫자 타입의 데이터 값은 생략불가(기본으로 0 채우기 가능)
insert into bookInfo(code,title,writer,price,maker)
	values('6','java1교재','','','영진');				-- 오류
    
-- 문자 타입의 데이터는 반드시 홑따옴표 표기 해야함
insert into bookInfo(code,title,writer,price,maker)
	values(7,오라클공부하는학생,서영란,39000,영진);			-- 오류
    
select * from bookInfo;