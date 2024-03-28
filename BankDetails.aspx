<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BankDetails.aspx.vb" Inherits="AutomatedPayrollSystem.BankDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bank Details</title>
    <style>
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid #ccc;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnShowPopup" runat="server" Text="Add Bank Details" OnClientClick="showPopup(); return false;" />
        <div class="popup" id="popupForm">
            <h2>Enter Bank Details</h2>
            <asp:Label ID="lblBankName" runat="server" Text="Bank Name:"></asp:Label>
            <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblAccountNumber" runat="server" Text="Account Number:"></asp:Label>
            <asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblAccountType" runat="server" Text="Account Type:"></asp:Label>
            <asp:DropDownList ID="ddlAccountType" runat="server">
                <asp:ListItem Text="Checking" Value="Checking"></asp:ListItem>
                <asp:ListItem Text="Savings" Value="Savings"></asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnShowPopup_Click" />
        </div>
    </form>
    <script>
        function showPopup() {
            document.getElementById('popupForm').style.display = 'block';
        }
    </script>
</body>
</html>
