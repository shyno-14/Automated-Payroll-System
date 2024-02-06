<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Tax.aspx.vb" Inherits="Employeepayroll.Tax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 418px;
        }
        .auto-style3 {
            width: 417px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            width: 418px;
            height: 56px;
        }
        .auto-style6 {
            height: 56px;
        }
    </style>
</head>
<body style="height: 163px">
    <form id="form1" runat="server">
    <div style="height: 162px">
    
        <table style="width: 100%; height: 105px;">
            <tr>
                <td class="auto-style5">Employee ID</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Txt" runat="server" Height="29px" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">Tax Type</td>
                <td>
                    <asp:TextBox ID="TxtTaxt" runat="server" Height="29px" Width="242px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 43px; margin-top: 0px;">
            <tr>
                <td class="auto-style3">Tax Amount</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtTaxamount" runat="server" Height="29px" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    
    </div>
        <p>
            <asp:Button ID="ButTax" runat="server" style="margin-left: 159px" Text="SUBMIT" Width="153px" />
        </p>
    </form>
</body>
</html>
