<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Location.aspx.vb" Inherits="Employeepayroll.Location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 343px;
            height: 40px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            width: 343px;
            height: 39px;
        }
        .auto-style5 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 120px;">
            <tr>
                <td class="auto-style4">Employee ID</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt" runat="server" Height="30px" Width="328px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">Location Time</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtLocationt" runat="server" Height="30px" Width="328px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
        <asp:Button ID="ButLocation" runat="server" style="margin-left: 145px" Text="SUBMIT" Width="183px" />
    </form>
</body>
</html>
