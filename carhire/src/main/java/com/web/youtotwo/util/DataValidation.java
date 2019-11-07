package com.web.youtotwo.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.*;

import com.web.youtotwo.entity.Users;
import com.web.youtotwo.repository.UsersRepository;

@Component
public class DataValidation implements Validator {
	
	private UsersRepository userRepository;
	
	String emailRegex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
			
	@Autowired
	public DataValidation(UsersRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public boolean supports(Class<?> clazz) {
		return Users.class.isAssignableFrom(clazz);
	}

	public void validate(Object o, Errors errors) {
		Users user = (Users) o;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lname", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fname", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");		
		if (userRepository.findByEmail(user.getEmail()) !=null) {
	    	errors.rejectValue("email", "size.user.unique");
	    }
		
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() <=0  ||  user.getPassword().length() < 4) {
	    	errors.rejectValue("password", "size.user.password");
	    }
        
        if (!user.getEmail().equalsIgnoreCase(user.getEmail2())) {
	    	errors.rejectValue("email2", "size.user.match");
	    }
        
        if (!user.getEmail().matches(emailRegex)) {
        	errors.rejectValue("email", "size.user.email");
	    }
        
		
	}
}