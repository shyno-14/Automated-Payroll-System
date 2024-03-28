<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Salary.aspx.vb" Inherits="AutomatedPayrollSystem.Salary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 305px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Month</td>
            <td>
                <asp:TextBox ID="Txtmonth" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Year</td>
            <td>
                <asp:TextBox ID="Txtyear" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Basic Salary</td>
            <td>
                <asp:TextBox ID="Txtbssal" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Total Allowance</td>
            <td>
                <asp:TextBox ID="Txttotallo" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Total Deduction</td>
            <td>
                <asp:TextBox ID="Txtsaldec" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Net Salary</td>
            <td>
                <asp:TextBox ID="Txtnet" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butsal" runat="server" Text="Save" Width="103px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
