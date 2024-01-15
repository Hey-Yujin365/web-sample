insert into comm_product_categories values (1000, '문구');
insert into comm_product_categories values (1001, '컴퓨터');
insert into comm_product_categories values (1002, '주방');
insert into comm_product_categories values (1003, '가구');
insert into comm_product_categories values (1004, '가전');

insert into comm_product_companies
values(2000, '삼성회사', '02-1111-1111', '서울특별시');
insert into comm_product_companies
values(2001, 'LG회사', '02-2222-2222', '부산광역시');
insert into comm_product_companies
values(2002, '현대회사', '02-3333-1111', '인천광역시');
insert into comm_product_companies
values(2003, '대우회사', '02-4444-1111', '대전광역시');
insert into comm_product_companies
values(2004, '한화회사', '02-5555-1111', '울산광역시');

insert into comm_product_status values (5000, '입고예정');
insert into comm_product_status values (5001, '판매중');
insert into comm_product_status values (5002, '재고없음');
insert into comm_product_status values (5003, '판매종료');

insert into comm_events values (7000, '무료배송', '1만원 이상 무료배송입니다.');
insert into comm_events values (7001, '당일배송', '오후 12시 이전 주문건에 대하여 당일배송합니다.');
insert into comm_events values (7002, '1+1', '1개 주문시 하나를 더 드립니다.');
insert into comm_events values (7003, '2+1', '2개 주문시 하나를 더 드립니다.');
insert into comm_events values (7004, '카드할인', '카드결제시 1% 할인해드립니다.');
insert into comm_events values (7005, '통신사할인', '통신사할인 중복가능합니다.');

commit;