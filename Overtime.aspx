<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Overtime.aspx.vb" Inherits="Employeepayroll.Overtime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 416px;
        }
        .auto-style5 {
            width: 417px;
            height: 44px;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style7 {
            width: 417px;
            height: 46px;
        }
        .auto-style8 {
            height: 46px;
        }
    </style>
</head>
<body style="height: 271px">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 95px;">
            <tr>
                <td class="auto-style7">Employee ID</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Txt" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">Overtime Date</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtOverdate" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
        <table style="width: 100%; height: 122px;">
            <tr>
                <td class="auto-style3">Hours Worked</td>
                <td>
                    <asp:TextBox ID="TxtHours" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Overtime Rate</td>
                <td>
                    <asp:TextBox ID="TxtOverrate" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Overtime Amount</td>
                <td>
                    <asp:TextBox ID="TxtOveramount" runat="server" Width="276px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <asp:Button ID="ButOvertime" runat="server" style="margin-left: 175px" Text="SUBMIT" Width="144px" />
    
    </div>
    </form>
</body>
</html>
