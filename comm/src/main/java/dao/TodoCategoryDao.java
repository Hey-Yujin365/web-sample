package dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ibatis.IbatisUtil;
import vo.TodoCategory;

public class TodoCategoryDao {

	private SqlMapClient ibatis = IbatisUtil.getSqlMapClient();
	
	@SuppressWarnings("unchecked")
	public List<TodoCategory> getAllCategories () throws SQLException {
		return (List<TodoCategory>) ibatis.queryForList("todo-categories.getAllCategories");
	}
	
	public List<TodoCategory> getAllCategories2 () throws SQLException {	// 위의 것이랑 같은 것인데 풀어서 쓴 것
		@SuppressWarnings("unchecked")
		List<TodoCategory> categories = ibatis.queryForList("todo-categories.getAllCategories");
		return categories;
	}
	
}
