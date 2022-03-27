<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="en">
  <head>
    <title>spring boot form submit example</title>
    <style>
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

      .main-container {
        max-width: 900px;
        margin: 0 auto;
      }

      .success-container {
        max-width: 450px;
        margin: 20px auto;
      }

      @media only screen and (max-width: 500px) {
        .success-container {
          margin: 0px auto;
        }
      }

      .success-body {
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
        .success-body {
          padding: 50px 40px;
        }
      }

      @media only screen and (max-width: 455px) {
        .success-body {
          padding: 45px 30px;
        }
      }

      @media only screen and (max-width: 340px) {
        .success-body {
          padding: 30px 20px;
        }
      }

      .success-body .title {
        margin: 0;
        padding: 5px;
        text-align: center;
        font-weight: normal;
        width: 100%;
      }

      .success-body .subtitle {
        margin: 0;
        padding: 5px;
        text-align: center;
        font-weight: normal;
        width: 100%;
        font-size: 16px;
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

      .information h4 {
        font-weight: 600;
      }
    </style>
  </head>
  <body>
    <div class="main-container">
      <div class="success-container">
        <div class="success-body">
          <h2 class="title">UCA</h2>
          <h3 class="subtitle">Details has being submitted successfully</h3>
          <div class="information">
            <h4>Student Name</h4>
            <p>${studentName}</p>
            <h4>Student Surname</h4>
            <p>${studentSurname}</p>
            <h4>Student UCA Card name</h4>
            <p>${studentCard}</p>
            <h4>Student Place of Residence</h4>
            <p>${placeofResidence}</p>
            <h4>Student Age</h4>
            <p>${Age}</p>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
