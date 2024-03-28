<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminLocation.aspx.vb" Inherits="AutomatedPayrollSystem.AdminLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 348px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">Latitude</td>
            <td>
                <asp:TextBox ID="Txtlat" runat="server" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Longitude</td>
            <td>
                <asp:TextBox ID="Txtlong" runat="server" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Location Time</td>
            <td>
                <asp:TextBox ID="Txtlocti" runat="server" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butloca" runat="server" Text="SAVE" Width="135px" />
            </td>
        </tr>
    </table>

</asp:Content>
