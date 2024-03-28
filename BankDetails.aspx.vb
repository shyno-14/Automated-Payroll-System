Imports System.Data.SqlClient

Public Class BankDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    'Protected Sub btnShowPopup_Click(sender As Object, e As EventArgs) Handles btnShowPopup.Click
    '    ' Here you can handle the submit button click event
    '    ' You can access the form fields like txtBankName.Text, txtAccountNumber.Text, ddlAccountType.SelectedValue
    '    ' For example, you can insert these values into a database
    '    Dim bankName As String = txtBankName.Text
    '    Dim accountNumber As String = txtAccountNumber.Text
    '    Dim accountType As String = ddlAccountType.SelectedValue

    '    ' Your database insertion logic here
    '    ' Example:
    '    Dim connectionString As String = "Data Source=LAPTOP-ILGDCM20\SQLEXPRESS;Initial Catalog=Payroll;User ID=sa;Password=123"
    '    Dim sql As String = "INSERT INTO BankDetails (BankName, AccountNumber, AccountType) VALUES (@BankName, @AccountNumber, @AccountType)"
    '    Using connection As New SqlConnection(connectionString)
    '        Using command As New SqlCommand(sql, connection)
    '            command.Parameters.AddWithValue("@BankName", bankName)
    '            command.Parameters.AddWithValue("@AccountNumber", accountNumber)
    '            command.Parameters.AddWithValue("@AccountType", accountType)
    '            connection.Open()
    '            command.ExecuteNonQuery()
    '        End Using
    '    End Using
    'End Sub
End Class