<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EmployeeDetails.aspx.vb" Inherits="AutomatedPayrollSystem.EmployeeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 650px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td class="auto-style1">First Name</td>
                <td>
                    <asp:TextBox ID="Txtnmfst" runat="server" Height="28px" Width="357px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name</td>
                <td>
                    <asp:TextBox ID="Txtnmlst" runat="server" Height="28px" Width="358px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Date Of Birth</td>
                <td>
                    <asp:TextBox ID="Txtdob" runat="server" Type="date" Height="28px" Width="358px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td>
                    <asp:DropDownList ID="dropgender" runat="server" Width="217px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">contact Name </td>
                <td>
                    <asp:TextBox ID="Txtnmcnt" runat="server" Height="28px" Width="358px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td>
                    <asp:TextBox ID="Txtemail" runat="server" Height="28px" Width="358px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Address</td>
                <td>
                    <asp:TextBox ID="Txtaddress" runat="server" Height="28px" Width="358px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">position</td>
                <td>
                    <asp:DropDownList ID="dropposi" runat="server" AutoPostBack="True" Width="363px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Butemp" runat="server" Text="Save" Width="134px" />
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </form>

     
</asp:Content>
