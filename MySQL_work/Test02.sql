select concat('my','sql');		-- 문자열 연결
select concat('html','java','를 배우고 있습니다.');
select concat('10  + 20 ',(10+20));
select length('html');
select lpad('mysql',7,'*');		-- lpad(데이터값, 출력길이, 채울 값)
select rpad('mysql',7,'*');
select rpad('920320-',14,'*');
select md5('1234');		-- 암호화

select abs(-100);		-- 절대값
select least(10,20,50,30);		-- 작은 수 리턴 >> java -> Math.min(10,20)'
select greatest(50,48,3,451);	-- 큰 수 리턴
select round(1.56);		-- 반올림 함수
select ceil(1.24);		-- 올림 함수
select floor(1.052);	-- 내림 함수
select 35/10;			-- 나누기(실수값)
select 35%10;			-- 나눈 나머지값
select mod(35,10);		-- 나눈 나머지값(잘 안씀)
