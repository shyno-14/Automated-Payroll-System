<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminPosition.aspx.vb" Inherits="AutomatedPayrollSystem.AdminPosition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        width: 332px;
        text-align: left; /* Align the labels to the right */
    }
    .auto-style2 {
        width: 332px;
        height: 32px;
        text-align: left; /* Align the labels to the right */
    }
    .center-align {
        text-align: center; /* Center align textboxes */
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style2">Position Name</td>
            <td class="center-align">
            <%--<td class="auto-style3">--%>
                <asp:TextBox ID="Txtposn" runat="server" Width="261px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Basic Salary</td>
            <td class="center-align">
            <%--<td class="auto-style3">--%>
                <asp:TextBox ID="Txtbs" runat="server" Width="261px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Butps" runat="server" Text="Save" Width="123px" />
            </td>
        </tr>
    </table>

</asp:Content>
