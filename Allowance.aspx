<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Allowance.aspx.vb" Inherits="Employeepayroll.Allowance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 352px;
        }
        .auto-style3 {
            width: 352px;
            height: 50px;
        }
        .auto-style4 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 102px;">
            <tr>
                <td class="auto-style2">Employee ID</td>
                <td>
                    <asp:TextBox ID="Txt" runat="server" Width="263px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Allowance Type</td>
                <td>
                    <asp:TextBox ID="TxtAllowance" runat="server" Width="263px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
        <table style="width: 100%; height: 34px;">
            <tr>
                <td class="auto-style3">Amount</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtAllowAmount" runat="server" Width="263px"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="ButAllow" runat="server" style="margin-left: 149px" Text="SUBMIT" Width="145px" />
    </form>
</body>
</html>
