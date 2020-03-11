package com.ccs.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ccs.model.Person;

/**
 * Person dao interface
 * 
 * @author DevCrumb.com
 */
@Repository
public interface PersonDao extends CrudRepository<Person, Long> {
	
	public List<Person> findBySurname(String surname);
}
