CREATE TABLE COMM_PRODUCT_CATEGORIES (
    category_no     number(4),
    category_name   varchar2(255) not null,
    constraint product_catno_pk primary key (category_no)
);

create table comm_product_companies (
    company_no      number(4),
    company_name    varchar2(255) not null,
    company_tel     varchar2(255) not null,
    company_city    varchar2(255) not null,
    
    constraint product_companyno_pk primary key (company_no)
);

create table comm_events (
    event_no            number(4),
    event_title         varchar2(255) not null,
    event_description   varchar2(255) not null,
    
    constraint eventno_pk primary key (event_no)
);

create table comm_product_status (
    status_no       number(4),
    status_name     varchar2(255) not null,
    
    constraint product_statusno_pk primary key (status_no)
);

create table comm_products (
    product_no              number(6),
    product_name            varchar2(255) not null,
    category_no             number(4) not null,
    company_no              number(4) not null,
    product_price           number(8) not null,
    product_discount_price  number(8) not null,
    product_description     varchar2(1000) not null,
    status_no               number(4) not null,
    product_stock           number(5) default 100,
    product_updated_date    date      default sysdate,
    product_created_date    date      default sysdate,
    
    constraint productno_pk primary key(product_no),
    constraint product_catno_fk foreign key (category_no)
                                references comm_product_categories (category_no),
    constraint product_companyno_fk foreign key (company_no)
                              references comm_product_companies (company_no),
    constraint product_statusno_fk foreign key (status_no)
                            references comm_product_status (status_no)
);

create table comm_product_events (
    product_no number(6) not null,
    event_no number(4) not null,
    
    constraint events_productno_fk foreign key (product_no)
                                    references comm_products (product_no),
    constraint events_eventno_fk foreign key (event_no)
                                   references comm_events (event_no)
);
