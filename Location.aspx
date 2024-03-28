<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Location.aspx.vb" Inherits="AutomatedPayrollSystem.Location" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 309px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">Latitude</td>
            <td>
                <asp:TextBox ID="Txtlatitude" runat="server" Height="28px" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Longitude</td>
            <td>
                <asp:TextBox ID="Txtlongitude" runat="server" Height="28px" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Location Time</td>
            <td>
                <asp:TextBox ID="Txtloc" runat="server" Height="28px" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butloc" runat="server" Text="Save" />
            </td>
        </tr>
    </table>
</form>

</asp:Content>
