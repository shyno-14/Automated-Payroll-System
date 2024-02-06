<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmployeeDetails.aspx.vb" Inherits="Employeepayroll.EmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 364px;
        }
        .auto-style2 {
            width: 365px;
        }
        .auto-style4 {
            width: 364px;
            height: 42px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            width: 364px;
            height: 50px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            width: 364px;
            height: 38px;
        }
        .auto-style9 {
            height: 38px;
        }
    </style>
</head>
<body style="height: 438px">
    <form id="form1" runat="server">
    <table style="width: 100%; height: 102px; margin-top: 0px; margin-bottom: 0px;">
        <tr>
            <td class="auto-style6">First Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtFname" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style1">Last Name</td>
            <td>
                <asp:TextBox ID="TxtLname" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%; height: 123px;">
        <tr>
            <td class="auto-style4">Date Of Birth</td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtDob" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style8">Gender</td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtGender" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style1">Contact Number</td>
            <td>
                <asp:TextBox ID="TxtContact" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%; height: 120px;">
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Position ID</td>
            <td>
                <asp:TextBox ID="TxtPos" runat="server" Width="289px" Height="27px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <p>
            &nbsp;</p>
        <asp:Button ID="ButSubEmp" runat="server" style="margin-left: 89px" Text="SUMBIT" Width="139px" />
    </form>
</body>
</html>
