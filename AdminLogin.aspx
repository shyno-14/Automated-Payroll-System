<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminLogin.aspx.vb" Inherits="AutomatedPayrollSystem.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
      body {
  display: flex;
  align-items: center;
  justify-content: center;
  background-image: url("https://www.yudiz.com/codepen/animation-form/banner.jpg");
  background-size: cover;
  background-position: center;
  min-height: 700px;
  font-family: "Georgia", serif;
  background-repeat: no-repeat;
  height: 100vh;
}

.container {
  width: 100%;
  max-width: 400px;
  padding: 0 20px;
  box-sizing: border-box;
}
.card {
  width: 100%;
  background-color: #d1a04d;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
  color: #fff;
}

form {
  display: flex;
  flex-direction: column;
  /*border: .1rem solid black;*/
  border-radius: 1rem;
  padding: 1.5rem 3rem;
  background-color: #9E9E9E;
  opacity:0.7;
}

input {
  padding: 10px;
  margin-bottom: 12px;
  border: 1px solid #555;
  border-radius: 4px;
  transition: border-color 0.3s ease-in-out;
  outline: none;
  
}

input:focus {
  border-color: #a5783d;
}

button {
  background-color: #3498db;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
}

button:hover {
  background-color: #2980b9;
}

        .auto-style1 {
            height: 27px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     
<table id="Table1" align="center" class="auto-style1"  runat="server">
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="LOGIN" Font-Size="X-Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Username Or Email"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="inemail" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="inpass" runat="server" TextMode="Password" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="fgin" runat="server">Forgot Password</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btin" runat="server" Text="SIGN IN" Width="129px" BackColor="#FFCC00" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="New User ? "></asp:Label>
                    <asp:LinkButton ID="fgin2" runat="server">SIGN UP</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
