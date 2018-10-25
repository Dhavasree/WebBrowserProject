package com.cg.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class WebController {

	@RequestMapping("/home")
	public String sourceForm() {
		return "source";
	}
	@RequestMapping("/add")
	public String Source()
	{
		return "add";
	}

}
