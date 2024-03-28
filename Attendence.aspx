<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Attendence.aspx.vb" Inherits="AutomatedPayrollSystem.Attendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 453px;
        }
        .auto-style2 {
            width: 453px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td class="auto-style2">Date </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtdate" runat="server" Type="date" Height="28px" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Time In</td>
                <td>
                    <asp:TextBox ID="Txttimein" runat="server" Height="28px" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Time Out</td>
                <td>
                    <asp:TextBox ID="Txttimeout" runat="server" Height="28px" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Is Present</td>
                <td>
                    <asp:TextBox ID="Txtispresent" runat="server" Height="28px" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Butatt" runat="server" Text="Save" Width="114px" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>
