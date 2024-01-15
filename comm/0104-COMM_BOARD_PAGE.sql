-- 게시글 데이터 추가
INSERT INTO COMM_BOARDS
(BOARD_NO, BOARD_TITLE, USER_NO, BOARD_CONTENT)
VALUES
(BOARDS_SEQ.NEXTVAL, '연습-' || BOARDS_SEQ.CURRVAL, 1000, '게시글 작성 연습입니다.');

/*
    페이징 처리를 위한 목록 조회
    SELECT
    FROM (SELECT 컬럼, 컬럼, 컬럼, ROW_NUMBER() OVER (ORDER BY 컬럼명 DESW) NUM
          FROM 테이블명)
    WHERE
        NUM BETWEEN 1 AND 10;
        
    * ROW_NUMBER() OVER (ORDER BY 컬럼명 DESW) NUM
      지정된 컬럼명의 값을 기준으로 내림차순으로 행을 정렬하고 각 행에 순번을 부여한다.
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