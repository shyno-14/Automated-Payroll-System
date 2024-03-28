<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Leave.aspx.vb" Inherits="AutomatedPayrollSystem.Leave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
        .auto-style2 {
            width: 334px;
            height: 36px;
        }
        .auto-style3 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td class="auto-style1">Leave Type</td>
                <td>
                    <asp:DropDownList ID="dropleave" runat="server" Width="197px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Annual Leave</asp:ListItem>
                        <asp:ListItem>Sick Leave</asp:ListItem>
                        <asp:ListItem>Maternity Leave</asp:ListItem>
                        <asp:ListItem>Personal Leave</asp:ListItem>
                        <asp:ListItem>Parental Leave</asp:ListItem>
                        <asp:ListItem>Educational Leave</asp:ListItem>
                        <asp:ListItem>Unpaid Leave</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Start Date</td>
                <td>
                    <asp:TextBox ID="Txtstr" runat="server" Type="date" Height="28px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">End Date</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtend" runat="server" Type="date" Height="28px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Butleave" runat="server" Text="Apply" Width="153px" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>
