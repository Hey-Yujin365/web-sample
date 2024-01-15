select
    A.board_no              as no,
    A.board_title           as title,
    A.user_no               as "user.no",
    B.user_name             as "user.name",
    A.board_reply_cnt       as replyCnt,
    A.board_content         as content,
    a.board_created_date    as createdDate,
    a.board_updated_date    as updatedDate
from comm_boards A, comm_users B
where A.board_no = 100000
and A.user_no = B.user_no;