/*
    ������������ ���̺�
*/

CREATE TABLE COMM_TODO_CATEGORIES (
    CATEGORY_NO NUMBER(3),
    CATEGORY_NAME VARCHAR2(255) NOT NULL,
    
    CONSTRAINT TODO_CATNO_PK PRIMARY KEY (CATEGORY_NO)
);

CREATE TABLE COMM_TODOS (
    TODO_NO             NUMBER(6),
    CATEGORY_NO         NUMBER(3)       NOT NULL,
    TODO_TITLE          VARCHAR2(255)   NOT NULL,
    USER_NO             NUMBER(4)       NOT NULL,
    TODO_DATE           CHAR(10)        NOT NULL,
    TODO_CONTENT        VARCHAR2(2000)  NOT NULL,
    TODO_STATUS         VARCHAR2(255)   DEFAULT 'ó������',
    TODO_DELETED        CHAR(1)         DEFAULT 'N',
    TODO_UPDATED_DATE   DATE            DEFAULT SYSDATE,
    TODO_CREATED_DATE   DATE            DEFAULT SYSDATE,
    
    CONSTRAINT TODO_NO_PK PRIMARY KEY (TODO_NO),
    CONSTRAINT TODO_CATEGORYNO_FK FOREIGN KEY (CATEGORY_NO)
                                  REFERENCES COMM_TODO_CATEGORIES (CATEGORY_NO),
    CONSTRAINT TODO_USERNO_FK FOREIGN KEY (USER_NO)
                              REFERENCES COMM_USERS (USER_NO),
    CONSTRAINT TODO_STATUS_CK CHECK (TODO_STATUS IN ('ó������', 'ó���Ϸ�', '���'))
);

CREATE SEQUENCE TODOS_SEQ START WITH 100000 NOCACHE;

INSERT INTO COMM_TODO_CATEGORIES VALUES(101, 'ȸ��');
INSERT INTO COMM_TODO_CATEGORIES VALUES(102, '����');
INSERT INTO COMM_TODO_CATEGORIES VALUES(103, '�ް�');
INSERT INTO COMM_TODO_CATEGORIES VALUES(104, '����');
INSERT INTO COMM_TODO_CATEGORIES VALUES(105, '�׽�Ʈ');
INSERT INTO COMM_TODO_CATEGORIES VALUES(106, '����');
INSERT INTO COMM_TODO_CATEGORIES VALUES(107, '����');
INSERT INTO COMM_TODO_CATEGORIES VALUES(108, '�ܱ�');
INSERT INTO COMM_TODO_CATEGORIES VALUES(109, '�ܺ�ȸ��');
INSERT INTO COMM_TODO_CATEGORIES VALUES(110, '��Ÿ');

COMMIT;

select category_no, category_name
from comm_todo_categories
order by category_no asc;

/*
Todo ��ü
    int no;                     -- ������ȣ
    String title;               -- ��������
    TodoCategory category;      -- ī�װ���ȣ, ī�װ��̸�
    User user;                  -- �ۼ�������
    String expectedDate;        -- ��������
    String content;             -- ��������
    String status;
    String deleted;
    Date createdDate;
    Date updatedDate;


<select id="getTodos" parameterClass="" resultClass="" >
~~
</select>
*/
select a.todo_no                as "no",
       a.category_no            as "category.no",
       b.category_name          as "category.name",
       a.todo_title             as "title",
       a.todo_expected_date     as "expectedDate",
       a.todo_status            as "status",
       a.todo_created_date      as "createdDate",
       a.todo_updated_date      as "updatedDate"
from (select
        row_number() over (order by todo_expected_date asc) num,
        todo_no,
        category_no,
        todo_title,
        todo_expected_date,
        todo_status,
        todo_created_date,
        todo_updated_date
    from
        comm_todos
    where
        todo_deleted = 'N') A, comm_todo_categories B
where a.num between 1 and 10
and A.category_no = b.category_no
order by A.todo_expected_date asc;

insert into comm_todos
(todo_no, category_no, todo_title, user_no, todo_expected_date, todo_content)
values
(todos_seq.nextval, 102, '����' || todos_seq.nextval, 1000, '2024-01-07', '�����Դϴ�'|| todos_seq.nextval);
commit;