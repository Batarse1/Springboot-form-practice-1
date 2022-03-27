<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        min-height: 100vh;
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
        font-weight: normal;
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
        display: block;
        padding: 15px 0px;
        color: #e6e6e6;
        font-weight: bold;
      }

      .the-form label span {
        padding: 15px 0px;
      }

      .the-form [type="text"],
      .the-form [type="password"],
      .the-form .residence {
        padding: 15px;
        font-size: 16px;
        width: 100%;
        background: rgba(0, 0, 0, 0.2);
        border: 1px solid rgba(255, 255, 255, 0.1);
        border-radius: 3px;
        -webkit-transition: background 0.3s;
        transition: background 0.3s;
        color: #e6e6e6;
      }

      .the-form .residence {
        -moz-appearance: none; /* Firefox */
        -webkit-appearance: none; /* Safari and Chrome */
        appearance: none;
      }

      .the-form [type="text"]::-webkit-input-placeholder,
      .the-form [type="password"]::-webkit-input-placeholder {
        color: rgba(255, 255, 255, 0.3);
      }

      .the-form [type="text"]::-moz-placeholder,
      .the-form [type="password"]::-moz-placeholder {
        color: rgba(255, 255, 255, 0.3);
      }

      .the-form [type="text"]:-ms-input-placeholder,
      .form-container
        .form-body
        .the-form
        [type="password"]:-ms-input-placeholder {
        color: rgba(255, 255, 255, 0.3);
      }

      .the-form [type="text"]::-ms-input-placeholder,
      .form-container
        .form-body
        .the-form
        [type="password"]::-ms-input-placeholder {
        color: rgba(255, 255, 255, 0.3);
      }

      .the-form [type="text"]::placeholder,
      .form-container .form-body .the-form [type="password"]::placeholder {
        color: rgba(255, 255, 255, 0.3);
      }

      .the-form [type="text"]:hover,
      .the-form [type="password"]:hover {
        background: rgba(0, 0, 0, 0.1);
      }

      .the-form [type="text"]:focus,
      .the-form [type="password"]:focus {
        background: #ffffff;
        -webkit-box-shadow: inset 0 2px 4px 0 rgba(0, 0, 0, 0.06);
        box-shadow: inset 0 2px 4px 0 rgba(0, 0, 0, 0.06);
        border-color: #4a304d;
        color: #222222;
      }

      .the-form [type="text"]:focus::-webkit-input-placeholder,
      .form-container
        .form-body
        .the-form
        [type="password"]:focus::-webkit-input-placeholder {
        color: #666666;
      }

      .the-form [type="text"]:focus::-moz-placeholder,
      .the-form [type="password"]:focus::-moz-placeholder {
        color: #666666;
      }

      .the-form [type="text"]:focus:-ms-input-placeholder,
      .the-form [type="password"]:focus:-ms-input-placeholder {
        color: #666666;
      }

      .the-form [type="text"]:focus::-ms-input-placeholder,
      .the-form [type="password"]:focus::-ms-input-placeholder {
        color: #666666;
      }

      .the-form [type="text"]:focus::placeholder,
      .the-form [type="password"]:focus::placeholder {
        color: #666666;
      }

      .the-form [type="submit"] {
        background: #ffb37b;
        border: 1px solid rgba(0, 0, 0, 0.1);
        padding: 18px;
        font-size: 20px;
        border-radius: 3px;
        cursor: pointer;
        margin-top: 20px;
        color: black;
        -webkit-box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1),
          0 2px 4px -1px rgba(0, 0, 0, 0.06);
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1),
          0 2px 4px -1px rgba(0, 0, 0, 0.06);
      }

      .the-form [type="submit"]:hover {
        opacity: 0.9;
      }

      .form-footer div {
        text-align: center;
        padding: 25px 20px;
        font-size: 18px;
        color: #e6e6e6;
      }

      .form-footer div a {
        color: #ffb37b;
      }
      .error {
        display: block;

        padding: 5px 3px;

        color: #ed4337;

        font-weight: normal;
        font-size: 14px;
      }
      .none {
        display: none;
        padding: 0px;
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
                <legend class="title">Student Details</legend>
                <label for="studentName">
                  <span>Name</span>
                </label>
                <input type="text" name="studentName" id="studentName" />
                <span class="error">${errorStudentName}</span>
                <label for="studentSurname">
                  <span>Surname</span>
                </label>
                <input type="text" name="studentSurname" id="studentSurname" />
                <span class="error">${errorStudentSurname}</span>
                <label for="studentCard">
                  <span>UCA card name</span>
                </label>
                <input type="text" name="studentCard" id="studentCard" />
                <span class="error">${errorStudentCard}</span>
                <label for="birthday">
                  <span>Birthday</span>
                </label>
                <input type="text" name="birthday" id="birthday" />
                <span class="error">${errorStudentDate}</span>
                <label for="placeofResidence">
                  <span>Place of residence</span>
                </label>
                <select
                  name="placeofResidence"
                  class="residence"
                  id="placeofResidence"
                >
                  <option value="Ahuachapán">Ahuachap&atilde;n</option>
                  <option value="Santa Ana">Santa Ana</option>
                  <option value="Sonsonate">Sonsonate</option>
                  <option value="La Libertad">La Libertad</option>
                  <option value="Chalatenango">Chalatenango</option>
                  <option value="Cuscatlán">Cuscatl&atilde;n</option>
                  <option value="San Salvador">San Salvador</option>
                  <option value="La Paz">La Paz</option>
                  <option value="Cabañas">Caba&ntilde;as</option>
                  <option value="San Vicente">San Vicente</option>
                  <option value="Usulután">Usulut&atilde;n</option>
                  <option value="San Miguel">San Miguel</option>
                  <option value="Morazán">Moraz&atilde;n</option>
                  <option value="La Unión">La Uni&otilde;n</option>
                </select>
                <span class="error">${errorStudentPlaceOfResidence}</span>
              </fieldset>
              <input type="submit" value="Save" />
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
