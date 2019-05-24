package com.test.comtroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BootController {

    @RequestMapping(value="/index")
    public String index() {
        
        return "index.jsp";
    }
    
    @GetMapping("/hi")
	public String hi() {
		return "hi, I'm springboot !";
	}

}
