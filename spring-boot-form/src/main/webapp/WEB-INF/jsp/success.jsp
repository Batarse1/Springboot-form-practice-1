<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>spring boot form submit example</title>
<style type="text/css">
*,
      *::before,
      *::after {
        box-sizing: border-box;
        -webkit-box-sizing: border-box;
      }

      body {
        margin: 0;
        padding: 0;
        color: #222222;
        background-color: #f2f2f0;
        background-color: #56385a;
        background-image: url("../images/cover.png");
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        background-attachment: fixed;
        padding: 20px;
        overflow-x: hidden;
      }

      body,
      input,
      button {
        font-family: "Muli", sans-serif, -apple-system, BlinkMacSystemFont,
          "Helvetica Neue", Helvetica, sans-serif;
        outline: none;
      }

      legend {
        padding: 0;
        display: table;
      }
      fieldset {
        border: 0;
        padding: 0.01em 0 0 0;
        margin: 0;
        min-width: 0;
      }
      body:not(:-moz-handler-blocked) fieldset {
        display: table-cell;
      }

      .main-container {
        max-width: 900px;
        margin: 0 auto;
      }

      a {
        color: inherit;
        outline: none;
        text-decoration: none;
      }

      a:hover {
        text-decoration: underline;
      }

      .form-container {
        max-width: 450px;
        margin: 20px auto;
      }

	  @media only screen and (max-width: 500px) {
        .form-container {
		  margin: 0px auto;
        }
      }

      .form-body {
        background-color: #4a304d;
        padding: 50px;
        color: #ffffff;
        border-radius: 3px;
        -webkit-box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1),
          0 10px 10px -5px rgba(0, 0, 0, 0.04);
        box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1),
          0 10px 10px -5px rgba(0, 0, 0, 0.04);
      }

      @media only screen and (max-width: 500px) {
        .form-body {
          padding: 50px 40px;
        }
      }

      @media only screen and (max-width: 455px) {
        .form-body {
          padding: 45px 30px;
        }
      }

      @media only screen and (max-width: 340px) {
        .form-body {
          padding: 30px 20px;
        }
      }

      .form-body .title {
        margin: 0;
        padding: 5px;
        text-align: center;        
        width: 100%;
      }

      .the-form {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
      }

      .the-form label {
        display: flex;
        flex-direction: column;
        gap: 15px;
        color: #e6e6e6;
        font-weight: bold;
        padding-top: 35px;        
      }
      .required {
        color: red;
        font-weight: normal;
      }
</style>
</head>
<body>	
	<div class="main-container">
      <div class="form-container">
        <div class="form-body">
          <h2 class="title">UCA</h2>
          <div>
            <form method="post" action="saveDetails" class="the-form">
              <fieldset>
                <legend class="title">Details has being submitted successfully</legend>
                <label for="studentName">
                  <span>Student Name : ${studentName}</span>
                </label>
                <label for="studentSurname">
                  <span>Student Surname : ${studentSurname}</span>                  
                </label>
                <label for="studentCard">
                  <span>Student Card : ${studentCard}</span>                  
                </label>
                <label for="placeofResidence">
                  <span>Student Place of Residence : ${placeofResidence}</span>             
                </label>
                <label for="age">
                  <span>Student Age : ${Age}</span>                  
                </label>
              </fieldset>              
            </form>
          </div>
        </div>
      </div>
    </div>
</body>
</html>
