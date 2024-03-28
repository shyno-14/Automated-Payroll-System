<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminAllowance.aspx.vb" Inherits="AutomatedPayrollSystem.AdminAllowance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 241px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">Allowance Type</td>
            <td>
                <asp:DropDownList ID="dropalloty" runat="server" Width="256px" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Housing Allowance</asp:ListItem>
                    <asp:ListItem>Transportation Allowance</asp:ListItem>
                    <asp:ListItem>Education Allowance</asp:ListItem>
                    <asp:ListItem>Healthcare Allowance</asp:ListItem>
                    <asp:ListItem>Travel Allowance</asp:ListItem>
                    <asp:ListItem>Overtime Allowance</asp:ListItem>
                    <asp:ListItem>Bonus Allowance</asp:ListItem>
                    <asp:ListItem>Special Allowance</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Amount</td>
            <td>
                <asp:TextBox ID="Txtalamt" runat="server" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:DropDownList ID="Dropallowance" runat="server" Width="257px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butallot" runat="server" Text="SAVE" Width="144px" />
            </td>
        </tr>
    </table>

</asp:Content>
