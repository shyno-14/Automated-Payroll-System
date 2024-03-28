<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Overtime.aspx.vb" Inherits="AutomatedPayrollSystem.Overtime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 355px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Overtime Date</td>
            <td>
                <asp:TextBox ID="Txtoverdt" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Hours Worked</td>
            <td>
                <asp:TextBox ID="Txthrs" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Overtime Rate</td>
            <td>
                <asp:TextBox ID="Txtoverrt" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Overtime Amount</td>
            <td>
                <asp:TextBox ID="Txtoveramt" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butovertime" runat="server" Text="Save" Width="107px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
