<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminDeduction.aspx.vb" Inherits="AutomatedPayrollSystem.AdminDeduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 297px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">Deduction&nbsp; Type</td>
            <td>
                <asp:DropDownList ID="dropdeduc" runat="server" Width="260px" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Health Insurance Premiums</asp:ListItem>
                    <asp:ListItem>Retirement Contributions</asp:ListItem>
                    <asp:ListItem>Absenteeism Deductions</asp:ListItem>
                    <asp:ListItem>Salary Advances</asp:ListItem>
                    <asp:ListItem>Penalties/Fines</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Amount</td>
            <td>
                <asp:TextBox ID="Txtdeduamt" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:DropDownList ID="Dropaddec" runat="server" Width="247px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butdedu" runat="server" Text="SAVE" Width="128px" />
            </td>
        </tr>
    </table>

</asp:Content>
