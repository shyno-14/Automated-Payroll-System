Imports System.Data.SqlClient
Imports System.Data
Public Class AdminPosition
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butps_Click(sender As Object, e As EventArgs) Handles Butps.Click
        Dim instr As String
        instr = "INSERT INTO Position(Position_name,Basic_salary) VALUES ('" + Txtposn.Text + "', '" + Txtbs.Text + "')"
        Dim cmdempt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdempt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtposn.Text = ""
        Txtbs.Text = ""
    End Sub
End Class