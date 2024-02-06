<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SalaryDetails.aspx.vb" Inherits="Employeepayroll.SalaryDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 37px;
        }
        .auto-style5 {
            height: 47px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            height: 43px;
        }
        .auto-style10 {
            height: 47px;
            width: 388px;
        }
        .auto-style11 {
            height: 42px;
            width: 388px;
        }
        .auto-style12 {
            height: 43px;
            width: 388px;
        }
        .auto-style19 {
            height: 37px;
            width: 387px;
        }
        .auto-style20 {
            height: 33px;
            width: 388px;
        }
        .auto-style21 {
            height: 33px;
        }
        .auto-style22 {
            height: 9px;
            width: 388px;
        }
        .auto-style23 {
            height: 9px;
        }
        .auto-style24 {
            height: 3px;
            width: 388px;
        }
        .auto-style25 {
            height: 3px;
        }
    </style>
</head>
<body style="height: 407px; width: 1733px">
    <form id="form1" runat="server">
        <table style="width: 100%; height: 112px;">
            <tr>
                <td class="auto-style20">Employee ID</td>
                <td class="auto-style21">
                    <asp:TextBox ID="Txtemp" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style22">Month</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TxtMonth" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style23"></td>
            </tr>
        </table>
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">Year</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtYear" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style11">Basic Salary</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtBasic" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style12">Total Allowance</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtTotAll" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
        <table style="width: 100%; height: 54px; margin-bottom: 0px;">
            <tr>
                <td class="auto-style24">Total Deduction</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style25"></td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style19">Net Salary</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox9" runat="server" Height="26px" Width="279px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="ButSalary" runat="server" style="margin-left: 181px" Text="SUBMIT" Width="130px" />
        </p>
    </form>
</body>
</html>
