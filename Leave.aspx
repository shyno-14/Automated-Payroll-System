<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Leave.aspx.vb" Inherits="Employeepayroll.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 399px;
        }
        .auto-style2 {
            width: 399px;
            height: 51px;
        }
        .auto-style3 {
            height: 51px;
        }
        .auto-style4 {
            width: 399px;
            height: 44px;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            width: 399px;
            height: 48px;
        }
        .auto-style7 {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 109px;">
            <tr>
                <td class="auto-style1">Employee ID</td>
                <td>
                    <asp:TextBox ID="Txtemp" runat="server" Height="32px" Width="317px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Leave Type</td>
                <td>
                    <asp:TextBox ID="TxtLeaveTyp" runat="server" Height="32px" Width="317px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
        <table style="width: 100%; height: 102px;">
            <tr>
                <td class="auto-style2">Start Date</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtStart" runat="server" Height="32px" Width="317px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">End Date</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtEnd" runat="server" Height="32px" Width="317px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">Status</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtStatus" runat="server" Height="32px" Width="317px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="ButLeave" runat="server" style="margin-left: 161px" Text="SUBMIT" Width="144px" />
        </p>
    </form>
</body>
</html>
