package com.web.youtotwo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.youtotwo.entity.Users;
import com.web.youtotwo.repository.UsersRepository;
import com.web.youtotwo.util.WebServiceUtils;

@Controller
public class UploadController {

	@Autowired
	private UsersRepository usersRepository;
	
	@Autowired
	private WebServiceUtils webServiceUtils;
	
	@PostMapping("uploadMultipleFiles")
    public String uploadMultipleFiles(Model model, @RequestParam long id,@RequestParam("uploadingFiles") MultipartFile[] files){
  	    try {
		
		  if(webServiceUtils.multiplesave(files, id)=="Success") {
		  model.addAttribute("msg", files.length+ " Files uploaded<br>"); }
		  else {
		  model.addAttribute("msg", " Please select files<br>"); 
		  }	
		  webServiceUtils.getFiles(model, id);
    	  	
    	} catch (Exception e) {
			model.addAttribute("error",  " unxpected error<br>");	
    		
			e.printStackTrace();
		}    	
        return "profile";
    }
	
	@GetMapping("setasprofile")
	String setprofile(RedirectAttributes red, 
			@RequestParam String email, @RequestParam String image, Model model) {			    	
    	
    	try {				
    		Users user= usersRepository.findByEmail(email);
    		user.setImage(image);
    		usersRepository.save(user);
    		red.addFlashAttribute("success", "Image set to "+ image);
		} catch (Exception e) {
			e.printStackTrace();
		}
	 
	    return "redirect:/index";		
	}
	
	@GetMapping("deleteimage")
	String removeImage(RedirectAttributes red, @RequestParam long id,
			@RequestParam String image, Model model) {			    	
    	
    	try {				
    		webServiceUtils.removefiles(id, image);
    		red.addFlashAttribute("success", "Image deleted");
    		
		} catch (Exception e) {
			e.printStackTrace();
		}
	 
	    return "redirect:/profile";		
	}
	
}
