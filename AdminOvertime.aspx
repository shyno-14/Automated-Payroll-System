<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminOvertime.aspx.vb" Inherits="AutomatedPayrollSystem.AdminOvertime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 254px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:DropDownList ID="Dropadover" runat="server" AutoPostBack="True" Width="327px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Overtime Date</td>
            <td>
                <asp:TextBox ID="Txtovdt" runat="server" Type="date" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Hours Worked</td>
            <td>
                <asp:TextBox ID="Txthrwr" runat="server" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Overtime Rate</td>
            <td>
                <asp:TextBox ID="Txtovrt" runat="server" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Overtime Amount</td>
            <td>
                <asp:TextBox ID="Txtovamt" runat="server" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butoverti" runat="server" Text="SAVE" Width="139px" />
            </td>
        </tr>
    </table>

</asp:Content>
