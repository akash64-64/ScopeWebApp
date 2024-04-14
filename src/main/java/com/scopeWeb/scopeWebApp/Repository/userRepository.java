package com.scopeWeb.scopeWebApp.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.scopeWeb.scopeWebApp.Model.userModel;

@Repository
public interface userRepository extends CrudRepository<userModel,Integer>{

	public userModel findByVerificationcode(String code);

	public userModel findByEmail(String email);
	
}
