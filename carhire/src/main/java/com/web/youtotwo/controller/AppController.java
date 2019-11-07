package com.web.youtotwo.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.web.youtotwo.entity.Motorcycles;
import com.web.youtotwo.entity.States;
import com.web.youtotwo.entity.Users;
import com.web.youtotwo.repository.MotorcyclesRepository;
import com.web.youtotwo.repository.UsersRepository;
import com.web.youtotwo.util.DataValidation;
import com.web.youtotwo.util.WebServiceUtils;

@Controller
@SessionAttributes({ "logedinUser" })
public class AppController {

	@Value("${spring.queries.users-query}")
	private String msg;

	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private WebServiceUtils webServiceUtils;

	@Autowired
	private DataValidation dataValidator;
	
	@Autowired
	private MotorcyclesRepository motorcyclesRepository;
	
	
	@PostMapping("sendmail")
	String sendmail(@RequestParam String email, @RequestParam String msg, @RequestParam String subject, Model model) {

		
		model.addAttribute("msg", webServiceUtils.sendMail(email, msg, subject));

		return "contact";
	}

	@GetMapping({ "/", "/index" })
	String index(Model model) {
		return "index";
	}

	@GetMapping("about")
	String about(Model model) {
		return "about";
	}

	@GetMapping("contact")
	String contact(Model model) {
		model.addAttribute("msg", "Please feel free to Email Us!");
		return "contact";
	}

	@GetMapping("email-{id}-{name}")
	String email(@PathVariable String id, @PathVariable String name, Model model) {
		model.addAttribute("msg", id + " Name is " + name);
		return "contact";
	}

	@GetMapping("login")
	String login(Model model) {
		model.addAttribute("msg", "Login");
		return "login";
	}

	@GetMapping("edituser-{id}")
	String edit(@PathVariable long id, Model model) {
		model.addAttribute("msg", "Update");
		// Users user=new Users();
		model.addAttribute("user", usersRepository.findById(id).get());
		return "updateuser";
	}

	@PostMapping("updateuser")
	String update(@ModelAttribute Users user, RedirectAttributes redirect) {
		try {
			Users usr = usersRepository.findById(user.getId()).get();
			MultipartFile multipartFile = (MultipartFile) user.getFile();
			if (multipartFile.getOriginalFilename() != null) {
				webServiceUtils.saveImage(user.getFile(), user.getId());
				usr.setImage(multipartFile.getOriginalFilename());
			}
			
			usr.setLname(user.getLname());
			usr.setFname(user.getFname());
			usr.setAddress(user.getAddress());
			usr.setCity(user.getCity());
			usr.setState(user.getState());
			usr.setZip(user.getZip());
			usr.setCity(user.getCity());
			usersRepository.save(usr);
			redirect.addFlashAttribute("logedinUser", usr);
			redirect.addFlashAttribute("success", "Update success for " + user.getLname());
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addFlashAttribute("error", "Unexpected Error" + e.getLocalizedMessage());
			return "redirect:/error";
		}
		return "redirect:/index";
	}

	@GetMapping("deleteuser-{id}")
	String delet(@PathVariable long id, RedirectAttributes redirect) {
		try {
			Users user = usersRepository.findById(id).get();
			usersRepository.delete(user);
			redirect.addFlashAttribute("success", "Delete Success");
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addFlashAttribute("error", "Delete Fail");
		}
		return "redirect:/index";
	}

	@PostMapping("login")
	String login(@ModelAttribute Users user, Model model) {
		Users usr = usersRepository.findByEmail(user.getEmail());
		if (usr != null && user.getPassword().equals(usr.getPassword())) {
			model.addAttribute("success", "Login Success");
			model.addAttribute("logedinUser", usr);
			return "redirect:/profile";
		} else {
			model.addAttribute("error", "Invalid credentials");
		}
		return "login";
	}

	@GetMapping("/user-{id}")
	public String profile(@PathVariable long id, Model model) {
		model.addAttribute("member", usersRepository.findById(id).get());
		webServiceUtils.getFiles(model, id);
		return "member";
	}

	@GetMapping("/profile")
	public String profile(@SessionAttribute("logedinUser") Users user, Model model) {

		webServiceUtils.getFiles(model, user.getId());

		return "profile";
	}

	@GetMapping("/logout")
	public String logout(Model model, WebRequest request, SessionStatus status, RedirectAttributes redirect) {
		status.setComplete();
		request.removeAttribute("logedinUser", WebRequest.SCOPE_SESSION);
		redirect.addFlashAttribute("success", "You have been signed out");
		return "redirect:/login";
	}

	@GetMapping("register")
	String register(Model model) {
		model.addAttribute("msg", "Register");
		Users user = new Users();
		model.addAttribute("users", user);
		return "register";
	}

	@PostMapping("register")
	String signup(@ModelAttribute Users user, BindingResult result, RedirectAttributes model) {

		try {
			dataValidator.validate(user, result);
			if (result.hasErrors()) {
				model.addAttribute("msg", "Register");
				return "register";
			}

			Users usr = usersRepository.findByEmail(user.getEmail());
			
			user.setCreatedDate(new Date());
			user.setRole("USER");
			usersRepository.save(user);
			model.addFlashAttribute("logedinUser", usr);
			model.addFlashAttribute("success", "Registration Success! Thank you!");

		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return "redirect:/login";
	}

	@PostMapping("search")
	String search(@RequestParam String lname, Model model) {
		try {
			model.addAttribute("list", usersRepository.findByName(lname));
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error", "Unexpected error occured");
		}
		return "index";
	}

	@PostMapping("looking")
	String lookup(@RequestParam String email, @RequestParam String lname, Model model) {
		try {
			model.addAttribute("list", usersRepository.findByNameOrEmail(lname, email));
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error", "Unexpected error occured");
		}
		return "index";
	}

	@PostMapping("editrole")
	String addrole(@RequestParam long id, @RequestParam String role, RedirectAttributes red) {
		try {
			Users usr = usersRepository.findById(id).get();
			usr.setRole(role);
			usersRepository.save(usr);
			red.addFlashAttribute("success", usr.getFname() + " has been assigned as " + role + ".");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/index";
	}

	@ModelAttribute("user")
	Users user() {
		return new Users();
	}

	// for populating states
	@ModelAttribute("states")
	public List<States> populateStates() {
		return Arrays.asList(States.values());
	}

	@GetMapping("why")
	String why(Model model) {
		// model.addAttribute("msg", "Why?");
		return "why";
	}

	@GetMapping("huh")
	String huh(Model model) {
		
		return "huh";
	}

	@GetMapping("members")
	String members(Model model) {
		model.addAttribute("list", usersRepository.findAll());
		return "members";
	}

	@GetMapping("updates")
	String comingSoon(Model model) {
		return "updates";
	}

	@GetMapping("addBike")
	String addBike(Model model) {
		Motorcycles bike = new Motorcycles();
		model.addAttribute("motorcycle", bike);
		return "addmotorcycle";
	}

	@PostMapping("addBike")
	String addBike(@ModelAttribute Motorcycles bikes, BindingResult result, RedirectAttributes redA) {
		
		try {
			 
			Motorcycles bike = motorcyclesRepository.findByModel(bikes.getModel());
			if(bike!=null) {
			motorcyclesRepository.save(bikes);
			String msg = "Motorcycle Added Successfully";
			redA.addAttribute("success", msg );
			}
			else{
				redA.addAttribute("umm", "Motorcycle already exists");
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return "redirect:/profile";				
	}
	
	@GetMapping("calculateAnswers")
	String results(@RequestParam String q1, @RequestParam int q2, @RequestParam int q3, @RequestParam String type, @RequestParam int level, @RequestParam int seat, Model model) {
		model.addAttribute("list", motorcyclesRepository.calculateAnswers(q1, q2, q3));		
		return "results";
	
	}
	@PostMapping("calculateAnswers")
	String questions(@RequestParam String q1, @RequestParam int q2, @RequestParam int q3, Model model) {
		List<Motorcycles> motor = motorcyclesRepository.calculateAnswers(q1, q2, (q3+3));
		model.addAttribute("motorcycle", motor);	
		return "results";
	}
	@GetMapping("results")
	String results2(@RequestParam String q1, @RequestParam int q2, @RequestParam int q3, @RequestParam String type, @RequestParam int level, @RequestParam int seat, Model model) {
		List<Motorcycles> motor = motorcyclesRepository.calculateAnswers(q1, q2, q3);
		
		model.addAttribute("list2", motor);
		
		
		return "results";
	
	}
	@GetMapping("/motorcycles-{id}")
	public String motorcyclepics(@PathVariable Long id, Model model) {
		model.addAttribute("bikePic", motorcyclesRepository.findById(id).get());
		webServiceUtils.getFiles(model, id);
		return "results";
	}
	@GetMapping("dictionary")
	public String dictionary(Model model) {
		
		return "dictionary";
	}
}
