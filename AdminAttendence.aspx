<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminAttendence.aspx.vb" Inherits="AutomatedPayrollSystem.AdminAttendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
            width: 284px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">Date</td>
            <td>
                <asp:TextBox ID="Txtdt" runat="server" Type="date" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Time In</td>
            <td>
                <asp:TextBox ID="Txtti" runat="server" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Time Out</td>
            <td class="auto-style3">
                <asp:TextBox ID="Txtto" runat="server" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Is Present</td>
            <td>
                <asp:TextBox ID="Txtip" runat="server" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butatten" runat="server" Text="SAVE" Width="131px" />
            </td>
        </tr>
    </table>

</asp:Content>
