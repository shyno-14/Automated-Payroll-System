<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EmployeeData.aspx.vb" Inherits="AutomatedPayrollSystem.EmployeeData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 381px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">First Name</td>
            <td>
                <asp:TextBox ID="Txtfst" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Last Name</td>
            <td>
                <asp:TextBox ID="Txtlst" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Date Of Birth</td>
            <td>
                <asp:TextBox ID="Txtbirth" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Gender</td>
            <td>
                <asp:TextBox ID="Txtgender" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Contact Number</td>
            <td>
                <asp:TextBox ID="Txtcontact" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Email</td>
            <td>
                <asp:TextBox ID="Txtemail" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Address</td>
            <td>
                <asp:TextBox ID="Txtaddress" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Position</td>
            <td>
                <asp:TextBox ID="Txtposit" runat="server" Height="28px" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butempdata" runat="server" Text="Save" Width="114px" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
