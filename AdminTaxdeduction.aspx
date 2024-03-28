<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminTaxdeduction.aspx.vb" Inherits="AutomatedPayrollSystem.AdminTaxdeduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:DropDownList ID="Dropadtax" runat="server" AutoPostBack="True" Width="265px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Tax Type</td>
            <td>
                <asp:DropDownList ID="droptx" runat="server" Width="271px" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Local Income Tax</asp:ListItem>
                    <asp:ListItem>Social Security Tax</asp:ListItem>
                    <asp:ListItem>Workers&#39; Compensation Insurance</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Tax Amount</td>
            <td>
                <asp:TextBox ID="Txttxamt" runat="server" Width="257px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Buttxded" runat="server" Text="SAVE" Width="158px" />
            </td>
        </tr>
    </table>

</asp:Content>
