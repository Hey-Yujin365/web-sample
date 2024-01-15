-- �Խñ� ������ �߰�
INSERT INTO COMM_BOARDS
(BOARD_NO, BOARD_TITLE, USER_NO, BOARD_CONTENT)
VALUES
(BOARDS_SEQ.NEXTVAL, '����-' || BOARDS_SEQ.CURRVAL, 1000, '�Խñ� �ۼ� �����Դϴ�.');

/*
    ����¡ ó���� ���� ��� ��ȸ
    SELECT
    FROM (SELECT �÷�, �÷�, �÷�, ROW_NUMBER() OVER (ORDER BY �÷��� DESW) NUM
          FROM ���̺��)
    WHERE
        NUM BETWEEN 1 AND 10;
        
    * ROW_NUMBER() OVER (ORDER BY �÷��� DESW) NUM
      ������ �÷����� ���� �������� ������������ ���� �����ϰ� �� �࿡ ������ �ο��Ѵ�.
*/
SELECT *
FROM (SELECT ROW_NUMBER() OVER (ORDER BY BOARD_NO DESC) NUM,
             BOARD_NO,
             BOARD_TITLE,
             USER_NO,
             BOARD_CONTENT,
             BOARD_REPLY_CNT,
             BOARD_CREATED_DATE
      FROM
             COMM_BOARDS
      WHERE
             BOARD_DELETED = 'N')
WHERE NUM BETWEEN 1 AND 10;