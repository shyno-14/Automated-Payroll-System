<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmployeeAttendance.aspx.vb" Inherits="Employeepayroll.EmployeeAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 403px;
        }
        .auto-style2 {
            width: 403px;
            height: 47px;
        }
        .auto-style3 {
            height: 47px;
        }
        .auto-style4 {
            width: 403px;
            height: 45px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 403px;
            height: 41px;
        }
        .auto-style7 {
            height: 41px;
        }
        .auto-style8 {
            width: 403px;
            height: 58px;
        }
        .auto-style9 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 111px;">
            <tr>
                <td class="auto-style8">Employee ID</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="298px"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style1">Date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="298px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
        <table style="width: 100%; height: 112px;">
            <tr>
                <td class="auto-style2">Time In</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="298px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">Time Out</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="298px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">Is Present</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="298px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="ButAttendance" runat="server" style="margin-left: 183px" Text="SUBMIT" Width="169px" />
        </p>
    </form>
</body>
</html>
