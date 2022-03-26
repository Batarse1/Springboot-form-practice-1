package com.uca.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.uca.spring.util.Util;
import java.time.LocalDate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.time.Period;

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
	
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	  
    if (Util.isDateValid(birthday)) {
      System.out.println("Valid Birthday");
      
      	try {
      		Date d = sdf.parse(birthday);
      		
      		Calendar Birthday = Calendar.getInstance();
          	Birthday.setTime(d);
          	
          	int year = Birthday.get(Calendar.YEAR);
          	int month = Birthday.get(Calendar.MONTH) + 1;
            int date = Birthday.get(Calendar.DATE);
            
            LocalDate birth = LocalDate.of(year, month, date);
            LocalDate actual = LocalDate.now();
            
            Period age = Period.between(birth, actual);
            int realAge = 0;
            realAge = age.getYears();
            modelMap.put("Age", realAge);
            
      	} catch (ParseException e) {
      		// TODO Auto-generated catch block
      		e.printStackTrace();
      	}
      	
    }

    modelMap.put("studentName", studentName);
    modelMap.put("studentSurname", studentSurname);
    modelMap.put("studentCard", studentCard);
    modelMap.put("placeofResidence", placeofResidence);
    return "success.jsp";
  }


}
