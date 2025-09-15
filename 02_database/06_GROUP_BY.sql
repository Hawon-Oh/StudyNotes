use menudb;

select category_code, count(category_code) from tbl_menu
group by category_code;

select category_code, count(1) from tbl_menu
group by category_code;

select category_code, count(*) from tbl_menu
group by category_code;


select category_code, count(category_code), avg(menu_price) from tbl_menu
group by category_code;

# with rollup 사용법
# https://habakkuk.tistory.com/2