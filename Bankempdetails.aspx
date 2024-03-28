<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bankempdetails.aspx.vb" Inherits="AutomatedPayrollSystem.Bankempdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 350px;
        }
        /* Popup styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 40%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnBankDetails" runat="server" Text="Enter Bank Details" OnClick="btnBankDetails_Click" />
        <asp:Panel ID="pnlBankDetails" runat="server" CssClass="modal">
            <div class="modal-content">
                <span class="close" onclick="closeBankDetails()">&times;</span>
                <h2>Enter Bank Details</h2>
                <asp:TextBox ID="txtBankName" runat="server" placeholder="Bank Name"></asp:TextBox><br />
                <asp:TextBox ID="txtAccountNumber" runat="server" placeholder="Account Number"></asp:TextBox><br />
                <asp:TextBox ID="txtRoutingNumber" runat="server" placeholder="Routing Number"></asp:TextBox><br />
                <asp:TextBox ID="txtBranchName" runat="server" placeholder="Branch Name"></asp:TextBox><br />
                <asp:DropDownList ID="ddlAccountType" runat="server">
                    <asp:ListItem Value="Checking">Checking</asp:ListItem>
                    <asp:ListItem Value="Savings">Savings</asp:ListItem>
                </asp:DropDownList><br />
                <asp:Button ID="btnSaveBankDetails" runat="server" Text="Save" OnClick="btnSaveBankDetails_Click" />
            </div>
        </asp:Panel>
    </div>
    </form>
    <script>
        function openBankDetails() {
            document.getElementById('pnlBankDetails').style.display = 'block';
        }

        function closeBankDetails() {
            document.getElementById('pnlBankDetails').style.display = 'none';
        }
    </script>
</body>
</html>
