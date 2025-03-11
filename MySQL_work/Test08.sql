-- 1. 영진 출판사가 몇개가 있는지 출력
select count(*) from bookInfo where maker = '영진';
-- 2. 'linux 첫걸음 교재의 가격은 50000원 입니다.' 형식으로 출력
select concat(title,'의 가격은 ',price,'원 입니다.') from bookInfo;
-- 3. 'linux 첫걸음(9)' 형식으로 출력
select concat(title,'(',length(title),')') from bookInfo;