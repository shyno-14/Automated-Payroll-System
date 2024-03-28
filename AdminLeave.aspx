<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminLeave.aspx.vb" Inherits="AutomatedPayrollSystem.AdminLeave" %>
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
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:DropDownList ID="Dropadleave" runat="server" AutoPostBack="True" Width="298px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Start Date</td>
            <td class="center-align">
                <asp:TextBox ID="Txtsd" runat="server" Type="date" Width="296px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">End Date</td>
            <td class="center-align">
                <asp:TextBox ID="Txted" runat="server" Type="date" Width="296px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Status</td>
            <td class="center-align">
                <asp:DropDownList ID="dropst" runat="server" Width="311px" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Rejected</asp:ListItem>
                    <asp:ListItem>Processing</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <br />
            </td>
            <td class="center-align">
                <asp:Button ID="Butleav" runat="server" Text="SAVE" Width="142px" />
            </td>
        </tr>
    </table>

</asp:Content>
