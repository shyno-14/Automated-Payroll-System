<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Deduction.aspx.vb" Inherits="Employeepayroll.Deduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            width: 342px;
        }
        .auto-style4 {
            height: 42px;
            width: 341px;
        }
        .auto-style5 {
            height: 42px;
            width: 560px;
        }
    </style>
</head>
<body style="height: 249px">
    <form id="form1" runat="server">
        <table style="width: 100%; height: 115px; margin-bottom: 0px;">
            <tr>
                <td class="auto-style3">Deduction ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Employee ID</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Deduction Type</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div style="height: 37px">
    
        <table style="width: 100%; height: 22px;">
            <tr>
                <td class="auto-style4">Amount</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <asp:Button ID="ButSubDed" runat="server" Height="23px" style="margin-left: 106px" Text="SUBMIT" Width="130px" />
    </form>
</body>
</html>
