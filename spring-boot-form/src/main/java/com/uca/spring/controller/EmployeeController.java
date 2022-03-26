package com.uca.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.uca.spring.util.Util;

@Controller
public class EmployeeController {


  @GetMapping("/")
  public String getForm() {
    return "index.jsp";
  }

  @PostMapping("/saveDetails")
  public String saveDetails(@RequestParam("studentName") String studentName,
      @RequestParam("studentSurname") String studentSurname,
      @RequestParam("studentCard") String studentCard,
      @RequestParam("birthday") String birthday, 
      @RequestParam("placeofResidence") String placeofResidence,
      ModelMap modelMap) {
	
    if (Util.isDateValid(birthday)) {
      System.out.println("Valid Birthday");
    }

    modelMap.put("studentName", studentName);
    modelMap.put("studentSurname", studentSurname);
    modelMap.put("studentCard", studentCard);
    modelMap.put("placeofResidence", placeofResidence);
    return "success.jsp";
  }


}
