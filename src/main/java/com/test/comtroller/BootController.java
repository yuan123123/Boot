package com.test.comtroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class BootController {

    @GetMapping("/hi")
	public String hi() {
		return "hi, I'm springboot !";
	}

    @RequestMapping("/index")
    public String index() {

        return "index";
    }
    
    @RequestMapping("/")
    public String welcome(){

        return "index";
        
    }
}
