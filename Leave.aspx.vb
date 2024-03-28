Imports System.Data.SqlClient
Imports System.Data
Public Class Leave
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butleave_Click(sender As Object, e As EventArgs) Handles Butleave.Click
        Dim instr As String
        instr = "INSERT INTO Leave(Start_Date,End_Date) VALUES ('" + Txtstr.Text + "', '" + Txtend.Text + "')"
        Dim cmdempt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdempt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtstr.Text = ""
        Txtend.Text = ""

    End Sub
End Class