﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Forgetpassword.aspx.vb" Inherits="AutomatedPayrollSystem.Forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}

.form {
  position: relative;
  right: 180px;
  z-index: 1;
  background: #FFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}

.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}

.form button:hover,
.form button:active,
.form button:focus {
  background: #43A047;
}

.form .message {
  margin: 35px 0 0;
  color: #000000;
  font-size: 14px;
}

.form .message a {
  margin: 35px 0 0;
  color: #00fff;
  font-size: 14px text-decoration: none;
}

.form .register-form {
  display: none;
}

.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}

.container:before,
.container:after {
  content: "";
  display: block;
  clear: both;
}

.container .info {
  margin: 50px auto;
  text-align: center;
}

.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}

.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}

.container .info span a {
  color: #000000;
  text-decoration: none;
}

.container .info span .fa {
  color: #EF3B3A;
}

/*body {
  background-image: url("http://i.huffpost.com/gen/2326360/images/o-TRAVEL-ADVENTURE-facebook.jpg");
  background-size: 100%;
}*/
    </style>
    <script>$('.message a').click(function () {
    $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
});

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-page">
  <div class="form">
   
    <form class="login-form">
      <asp:TextBox ID="txtEmail" runat="server" placeholder="Email id"></asp:TextBox>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="New Password"></asp:TextBox>
<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    </form>
  </div>
</div>
        </form>
</body>
</html>
