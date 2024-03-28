<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Allowance.aspx.vb" Inherits="AutomatedPayrollSystem.Allowance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 299px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Allowance Type</td>
            <td>
                <asp:TextBox ID="Txtallty" runat="server" Height="28px" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Amount</td>
            <td>
                <asp:TextBox ID="Txtamount" runat="server" Height="28px" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butallowance" runat="server" Text="Save" Width="112px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
