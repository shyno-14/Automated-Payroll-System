<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminSalary.aspx.vb" Inherits="AutomatedPayrollSystem.AdminSalary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 406px;
        }
        .auto-style2 {
            width: 406px;
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
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:DropDownList ID="Dropsalary" runat="server" Width="326px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Month</td>
            <td>
                <asp:TextBox ID="Txtmont" runat="server" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Year</td>
            <td>
                <asp:TextBox ID="Txtyr" runat="server" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Basic Salary</td>
            <td>
                <asp:TextBox ID="Txtbsy" runat="server" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Total Allowance</td>
            <td class="auto-style3">
                <asp:TextBox ID="Txttotal" runat="server" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Total Deduction</td>
            <td>
                <asp:TextBox ID="Txttotdedc" runat="server" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Net Salary</td>
            <td>
                <asp:TextBox ID="Txtnetsal" runat="server" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Butsal" runat="server" Text="SAVE" Width="185px" />
            </td>
        </tr>
    </table>

</asp:Content>
