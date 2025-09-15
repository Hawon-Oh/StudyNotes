use menudb;

select * from tbl_menu;

# insert
-- insert into 테이블명 values (컬럼순으로, 삽입할, 데이터, 나열, ...)
-- menu_code는 auto increment라 null 넣어도 됨.
insert into tbl_menu values (null, '해짬', 10000, 6, 'Y');

-- insert into 테이블명(컬럼명1, 컬럼명2, 컬러명3, ...)
-- values(데이터1, 데이터2, 데이터3, ...)
insert into tbl_menu(menu_name, menu_price, category_code, orderable_status)
values('멸치', 100, 1, 'Y');

-- multi insert
insert into tbl_menu(menu_name, menu_price, category_code, orderable_status)
values('떡', 100, 1, 'Y'), ('짜장', 100, 1, 'Y'), ('불닭마요', 100, 1, 'Y');

# update
update tbl_menu
set menu_name = '불닭짜장',
	menu_price = 200
where menu_code = 26;

# delete
delete from tbl_menu where menu_code = 26;

-- code 뒤에 있는거 3개 삭제
-- 여기서 limit의 offset 지정불가. 오직 삭제될 수만 지정가능
delete
from tbl_menu
order by menu_code desc
limit 3;

# replace
-- replace는 into 생략가능
replace into tbl_menu values (22, '해물짬뽕', 100, 10, 'Y');
replace tbl_menu values (22, '해물짬뽕', 100, 10, 'Y');
