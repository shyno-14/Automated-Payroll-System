<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="EmployeePage.aspx.vb" Inherits="AutomatedPayrollSystem.EmployeePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     .auto-style1 {
            width: 322px;
            text-align: right; /* Align the labels to the right */
        }
    .auto-style2 {
        width: 322px;
        height: 32px;
        text-align: right; /* Align the labels to the right */
    }
    /*.center-align {
        text-align: center; /* Center align textboxes */
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">First Name</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtnmfst" runat="server" Height="27px" Width="257px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Last Name</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtnmls" runat="server" Height="27px" Width="257px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Date Of Birth</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtbirth" runat="server" Type="date" Height="27px" Width="257px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Gender</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropgen" runat="server" Width="261px" AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Contact Number</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtcono" runat="server" Height="27px" Width="257px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Email</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtmail" runat="server" Height="27px" Width="257px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Address</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtads" runat="server" Height="27px" Width="257px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Position</td>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropposition" runat="server" Width="259px" AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Chief Executive Officer</asp:ListItem>
                <asp:ListItem>Chief Financial Officer</asp:ListItem>
                <asp:ListItem>Chief Technology Officer</asp:ListItem>
                <asp:ListItem>Chief Marketing Officer</asp:ListItem>
                <asp:ListItem>Chief Operating Office</asp:ListItem>
                <asp:ListItem>HR Manager</asp:ListItem>
                <asp:ListItem>Project Manager</asp:ListItem>
                <asp:ListItem>Software Engineer</asp:ListItem>
                <asp:ListItem>Sales Representative</asp:ListItem>
                <asp:ListItem>Customer Service Representative</asp:ListItem>
                <asp:ListItem>Administrative Assistant</asp:ListItem>
                <asp:ListItem>Accountant</asp:ListItem>
                <asp:ListItem>Marketing Coordinator</asp:ListItem>
                <asp:ListItem>Research Analyst</asp:ListItem>
                <asp:ListItem>Graphic Designer</asp:ListItem>
                <asp:ListItem>Data Scientist</asp:ListItem>
                <asp:ListItem>Quality Assurance Specialist</asp:ListItem>
                <asp:ListItem>Operations Manager</asp:ListItem>
                <asp:ListItem>Office Manager</asp:ListItem>
                <asp:ListItem>Executive Assistant</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Status</td>
        <%--td class="auto-style3">--%>
        <td class="center-align">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropests" runat="server" Width="259px" AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Inactive</asp:ListItem>
            </asp:DropDownList>
        </td>
     <%--</%--td>--%>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Butemppg" runat="server" Text="SAVE" Width="161px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Butbank" runat="server" Text="Bank Details" Width="140px" />
        </td>
    </tr>
</table>
   
</asp:Content>
