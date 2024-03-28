Imports System.Data.SqlClient
Imports System.Data
Public Class Bankempdetails
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnBankDetails_Click(sender As Object, e As EventArgs) Handles btnBankDetails.Click
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "popup", "openBankDetails();", True)
    End Sub

    Protected Sub btnSaveBankDetails_Click(sender As Object, e As EventArgs) Handles btnSaveBankDetails.Click
        ' Get employee ID from session or wherever it's stored
        Dim Employee_ID As Integer = GetEmployee_ID() ' Implement this method to get employee ID

        ' Retrieve bank details from form
        Dim Bank_Name As String = txtBankName.Text
        Dim Account_NO As String = txtAccountNumber.Text
        Dim Account_Type As String = txtBranchName.Text
        Dim Branch_Name As String = ddlAccountType.SelectedValue

        ' Call a method to save the bank details to the database
        BankDetails(Employee_ID, Bank_Name, Account_NO, Account_Type, Branch_Name)

        ' Close the popup after saving
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "popup", "closeBankDetails();", True)
    End Sub

    ' Method to save bank details to the database
    Private Sub SaveBankDetails(Employee_ID As Integer, Bank_Name As String, Account_NO As String, Account_Type As String, Branch_Name As String)
        'Dim cmd As New SqlCommand("INSERT INTO BankDetails (EmployeeID, BankName, AccountNumber, RoutingNumber, BranchName, AccountType) VALUES (@EmployeeID, @BankName, @AccountNumber, @RoutingNumber, @BranchName, @AccountType)", con)
        'cmd.Parameters.AddWithValue("@BankName", bankName)
        'cmd.Parameters.AddWithValue("@AccountNumber", accountNumber)
        'cmd.Parameters.AddWithValue("@RoutingNumber", routingNumber)
        'cmd.Parameters.AddWithValue("@BranchName", branchName)
        'cmd.Parameters.AddWithValue("@AccountType", accountType)
    End Sub

    Private Function GetEmployee_ID() As Integer
        Throw New NotImplementedException
    End Function

End Class