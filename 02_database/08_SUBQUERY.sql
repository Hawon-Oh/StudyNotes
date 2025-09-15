SELECT COUNT(*) AS 'count' FROM tbl_menu
GROUP BY category_code;

-- 가장 많은 메뉴가 포함된 카테고리의 메뉴 개수 조회
SELECT MAX(count) FROM(
					SELECT COUNT(*) AS 'count' 
					FROM tbl_menu
					GROUP BY category_code) as countmenu;
                    
# 상관 서브커리
-- 메인쿼리가 서브쿼리의 결과에 영향을 주는 경우
select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu a
where menu_price > (select avg(menu_price)
					from tbl_menu
                    where category_code = a.category_code
                    group by category_code);
# 위에꺼에서 where 키워드를 빼면 작동안됨.                    
select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu a
where menu_price > (select avg(menu_price)
					from tbl_menu
                    group by category_code);
                    
                    
# exists 조회결과가 있으면 True, 없으면 False

                    
                    
                    
                    
                    