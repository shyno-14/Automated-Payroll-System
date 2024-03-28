<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Deduction.aspx.vb" Inherits="AutomatedPayrollSystem.Deduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 264px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Deduction Type</td>
            <td>
                <asp:TextBox ID="Txtdecty" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;Deduction Amount</td>
            <td>
                <asp:TextBox ID="Txtdecamt" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butdec" runat="server" Text="Save" Width="109px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
