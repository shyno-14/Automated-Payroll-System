Imports System.Data.SqlClient
Imports System.Data
Public Class Allowance
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butallowance_Click(sender As Object, e As EventArgs) Handles Butallowance.Click
        Dim instr As String
        instr = "INSERT INTO Allowance(Allowance_Type,Amount) VALUES ('" + Txtallty.Text + "', " + Txtamount.Text + ")"
        Dim cmdall As SqlCommand = New SqlCommand(instr, co.connect())
        cmdall.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtallty.Text = ""
        Txtamount.Text = ""
    End Sub
End Class