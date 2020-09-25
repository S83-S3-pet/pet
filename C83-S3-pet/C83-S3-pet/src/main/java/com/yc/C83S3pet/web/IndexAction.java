package com.yc.C83S3pet.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexAction {
	
	@GetMapping(path= {"/"})
	public String index(){
		return "index";
	}

}
