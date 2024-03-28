Imports System.Data.SqlClient
Imports System.Data
Public Class Salary
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butsal_Click(sender As Object, e As EventArgs) Handles Butsal.Click
        Dim instr As String
        instr = "INSERT INTO SalaryDetails(Month,Year,Basic_Salary,Total_Allowance,Total_Deduction,Net_Salary) VALUES ('" + Txtmonth.Text + "', '" + Txtyear.Text + "','" + Txtbssal.Text + "','" + Txttotallo.Text + "','" + Txtsaldec.Text + "','" + Txtnet.Text + "')"
        Dim cmdsal As SqlCommand = New SqlCommand(instr, co.connect())
        cmdsal.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtmonth.Text = ""
        Txtyear.Text = ""
        Txtbssal.Text = ""
        Txttotallo.Text = ""
        Txtsaldec.Text = ""
        Txtnet.Text = ""
    End Sub
End Class