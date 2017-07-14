package com.techno.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showPage() {
		return "main-menu";
	}
	
	@RequestMapping("/Formone")
	public String firstForm()
	{
		
		
		return "Formone";
	}
	/*@RequestMapping("/resourceAccess")
	public String firstForm()
	{
		
		
		return "resourceAccess";
	}

*/	
	@RequestMapping("/angularAccess")
	public String angulaAccess()
	{
		
		
		return "angularAccess";
	}

	
	@RequestMapping("Formtwo")
	public String application(HttpServletRequest request,Model model)
	{
		String name=request.getParameter("studentName");
		
		name="hey hi "+name;
		
		model.addAttribute("message", name);
		
		
		
		return"Formtwo";
	}
}
