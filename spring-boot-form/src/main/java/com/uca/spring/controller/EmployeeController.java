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
    String age = Util.getAgeByBirthday(birthday);

    String errorAge = Util.patternsValidator(age, "(200|[1][0-9][0-9]|[1-9][0-9]|[0-9])", "Invalid date", true);
    String errorStudentName = Util.patternsValidator(studentName, "[a-zA-Z/á/é/í/ó/ú/ñ]{2,200}", "Invalid student name",
        true);
    String errorStudentSurname = Util.patternsValidator(studentSurname, "[a-zA-Z/á/é/í/ó/ú/ñ]{2,200}",
        "Invalid student surname",
        true);
    String errorStudentCard = Util.patternsValidator(studentCard, "[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]",
        "Invalid student card",
        true);
    String errorPlaceofResidence = Util.patternsValidator(placeofResidence,
        "(Ahuachapán|Santa Ana|Sonsonate|La Libertad|Chalatenango|Cuscatlán|San Salvador|La Paz|Cabañas|San Vicente|Usulután|San Miguel|Morazán|La Unión)",
        "Invalid student place of residence",
        true);

    if (!errorStudentName.isBlank()
        || !errorStudentSurname.isBlank()
        || !errorStudentCard.isBlank()
        || !errorAge.isBlank()
        || !errorPlaceofResidence.isBlank()) {
      modelMap.put("errorStudentDate", errorAge);
      modelMap.put("errorStudentName", errorStudentName);
      modelMap.put("errorStudentSurname", errorStudentSurname);
      modelMap.put("errorStudentCard", errorStudentCard);
      modelMap.put("errorStudentPlaceOfResidence", errorPlaceofResidence);

      return "index.jsp";
    }

    modelMap.put("studentName", studentName);
    modelMap.put("studentSurname", studentSurname);
    modelMap.put("studentCard", studentCard);
    modelMap.put("placeofResidence", placeofResidence);
    modelMap.put("Age", age);

    return "success.jsp";
  }

}
