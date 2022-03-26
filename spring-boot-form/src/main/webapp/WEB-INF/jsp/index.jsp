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
        display: flex;
        flex-direction: column;
        gap: 15px;
        color: #e6e6e6;
        font-weight: bold;
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
        margin-bottom: 15px;
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
                <legend class="title">Student Details</legend>
                <label for="studentName">
                  <span>Name</span>
                  <input type="text" name="studentName" />
                </label>
                <label for="studentSurname">
                  <span>Surname</span>
                  <input type="text" name="studentSurname" />
                </label>
                <label for="studentCard">
                  <span>UCA card name</span>
                  <input type="text" name="studentCard" />
                </label>
                <label for="birthday">
                  <span>Birthday</span>
                  <input type="text" name="birthday" />
                </label>
                <label for="placeofResidence">
                  <span>Place of residence</span>
                  <select name="placeofResidence" class="residence">
                    <option value="Ahuachapan">Ahuachap&atilde;n</option>
                    <option value="Santa Ana">Santa Ana</option>
                    <option value="Sonsonate">Sonsonate</option>
                    <option value="La Libertad">La Libertad</option>
                    <option value="Chalatenango">Chalatenango</option>
                    <option value="Cuscatlan">Cuscatl&atilde;n</option>
                    <option value="San Salvador">San Salvador</option>
                    <option value="La Paz">La Paz</option>
                    <option value="Cabanas">Caba&ntilde;as</option>
                    <option value="San Vicente">San Vicente</option>
                    <option value="Usulutan">Usulut&atilde;n</option>
                    <option value="San Miguel">San Miguel</option>
                    <option value="Morazan">Moraz&atilde;n</option>
                    <option value="La Union">La Uni&otilde;n</option>
                  </select>
                </label>
              </fieldset>
              <input type="submit" value="Submit" />
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
