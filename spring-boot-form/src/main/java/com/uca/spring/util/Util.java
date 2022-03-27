package com.uca.spring.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.*;

public class Util {
  private static final String DATE_FORMAT = "dd/MM/yyyy";

  public static String patternsValidator(String value, String regex, String message, boolean required) {
    try {
      if (value == null || value.isEmpty()) {
        if (required) {
          throw (new Exception("Must not be empty"));
        }
      } else {
        if (!Pattern.matches(regex, value)) {
          throw (new Exception(message));
        }
      }
    } catch (Exception e) {
      return e.getMessage();
    }
    return "";
  }

  public static String getAgeByBirthday(String birthday){
    try {
      SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);

      Date d = sdf.parse(birthday);

      Calendar Birthday = Calendar.getInstance();
      
      Birthday.setTime(d);

      int year = Birthday.get(Calendar.YEAR);
      int month = Birthday.get(Calendar.MONTH) + 1;
      int date = Birthday.get(Calendar.DATE);

      LocalDate birth = LocalDate.of(year, month, date);
      LocalDate actual = LocalDate.now();

      Period age = Period.between(birth, actual);

      Integer ageInt = age.getYears();

      return ageInt.toString();
    }
    catch (ParseException e){
      return "";
    }
  }
}
