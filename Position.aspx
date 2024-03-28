<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Position.aspx.vb" Inherits="AutomatedPayrollSystem.Position" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 330px;
    }
    .auto-style2 {
        width: 330px;
        height: 36px;
    }
    .auto-style3 {
        height: 36px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Position Name </td>
            <td>
                <asp:TextBox ID="Txtposnm" runat="server" Height="28px" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Basic Salary</td>
            <td class="auto-style3">
                <asp:TextBox ID="Txtbssalary" runat="server" Height="28px" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butpos" runat="server" Text="Save" Width="126px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
