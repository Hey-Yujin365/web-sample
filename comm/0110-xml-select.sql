select A.product_no,
       D.category_name,
       A.product_name,
       B.company_name,
       A.product_price,
       A.product_discount_price,
       A.product_stock,
       C.status_name,
       A.product_created_date,
       A.product_updated_date
from comm_products A, comm_product_companies B, comm_product_status C, comm_product_categories D
where A.company_no = B.company_no
and A.status_no = C.status_no
and A.category_no = D.category_no
and A.product_no = 100007;

select 
    b.event_no              as no,
    b.event_title           as title,
    b.event_description     as description
from comm_product_events A, comm_events B
where A.event_no = b.event_no
and a.product_no = 100010;

		select
            event_no		    as no,
            event_title		    as title,
            event_description	as description
		from
            comm_events
		where
            event_no in (select event_no
                         from comm_product_events
                         where product_no = 100008);