<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Position.aspx.vb" Inherits="Employeepayroll.Position" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 344px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 150px;">
            <tr>
                <td class="auto-style1">Position Name</td>
                <td>
                    <asp:TextBox ID="TxtPostName" runat="server" Height="38px" Width="407px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Basic Salary</td>
                <td>
                    <asp:TextBox ID="TxtBasicSal" runat="server" Height="38px" Width="407px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:Button ID="ButPosition" runat="server" style="margin-left: 122px" Text="SUBMIT" Width="164px" />
    </form>
</body>
</html>
