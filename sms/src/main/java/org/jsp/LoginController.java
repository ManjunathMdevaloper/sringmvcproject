package org.jsp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController 
{
	@RequestMapping("/login")
	public ModelAndView login(ModelAndView mv,@RequestParam String email,@RequestParam String password)
	{
		if(email.equals("raj@gmail.com") && password.equals("123"))
		{
			mv.setViewName("index.jsp");
			return mv;
		}
		return mv;
	}
}
