<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="TaxDeduction.aspx.vb" Inherits="AutomatedPayrollSystem.TaxDeduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 280px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Tax Type</td>
            <td>
                <asp:TextBox ID="Txttaxty" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Tax Amount</td>
            <td>
                <asp:TextBox ID="Txttax" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Buttax" runat="server" Text="Save" Width="129px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
