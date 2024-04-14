package com.scopeWeb.scopeWebApp.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.scopeWeb.scopeWebApp.Model.courseModel;

@Repository
public interface courseRepository extends CrudRepository<courseModel,Integer> {

	public courseModel findByCourseid(int courseid);
}
