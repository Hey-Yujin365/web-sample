package hr.dao;

import java.util.List;

import helper.JdbcTemplate;
import hr.vo.Job;

public class JobDao {

	public List<Job> getAllJobs() {
		String sql = """
			select
					job_id,
					job_title,
					min_salary,
					max_salary
			from
					jobs
			order by
					job_id asc
		""";
		
		return JdbcTemplate.selectList(sql, rs -> {
			Job job = new Job();
			job.setId(rs.getString("job_id"));
			job.setTitle(rs.getNString("job_title"));
			job.setMinSalary(rs.getInt("min_salary"));
			job.setMaxSalary(rs.getInt("max_salary"));
			
			return job;
		});
	}
	
	public Job getJobById(String jobId) {
		String sql = """
			select 
					job_id,
					job_title,
					min_salary,
					max_salary
			from
					jobs
			where
					job_id = ?
			order by
					job_id asc
		""";
		return JdbcTemplate.selectOne(sql, rs -> {
			Job job = new Job();
			job.setId(rs.getString("job_id"));
			job.setTitle(rs.getString("job_title"));
			job.setMinSalary(rs.getInt("min_salary"));
			job.setMaxSalary(rs.getInt("max_salary"));
			
			return job;
		}, jobId);
	}
	
	public void insertJob(Job job) {
		String sql = """
			insert into jobs
			(job_id, job_title, min_salary, max_salary)
			values
			(?, ?, ?, ?)	
				""";
		JdbcTemplate.insert(sql, job.getId(),
								 job.getTitle(),
								 job.getMinSalary(), 
								 job.getMaxSalary());
	}
	
}
