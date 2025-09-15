use menudb;

select menu_code, menu_name, menu_price from tbl_menu;
select menu_code, menu_name, menu_price from tbl_menu
limit 2, 5;
-- index 2부터 시작해서 5개 가져옴.
-- limit 5하면 5개 가져옴.