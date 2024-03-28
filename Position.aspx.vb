Imports System.Data.SqlClient
Imports System.Data
Public Class Position
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butpos_Click(sender As Object, e As EventArgs) Handles Butpos.Click
        Dim instr As String
        instr = "INSERT INTO Position(Position_name,Basic_salary) VALUES ('" + Txtposnm.Text + "', '" + Txtbssalary.Text + ")"
        Dim cmdempt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdempt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtposnm.Text = ""
        Txtbssalary.Text = ""
    End Sub
End Class