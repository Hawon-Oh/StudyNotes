use menudb;

select menu_name from tbl_menu;

select menu_code, menu_name, menu_price from tbl_menu
order by menu_price, menu_name;

select menu_name, menu_code * menu_price as '연산결과' from tbl_menu
order by '연산결과';

select menu_name, menu_price from tbl_menu
where 10000 < menu_price and menu_price <= 20000;