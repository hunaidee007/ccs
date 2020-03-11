package com.ccs.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ccs.model.Blogs;
import com.ccs.model.Person;

/**
 * Person dao interface
 * 
 * @author DevCrumb.com
 */
@Repository
public interface BlogsDao extends CrudRepository<Blogs, Long> {
	
	public List<Blogs> findByUrl(String url);
	
	 
}
