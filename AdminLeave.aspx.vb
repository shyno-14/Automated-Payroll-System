Imports System.Data.SqlClient
Imports System.Data
Public Class AdminLeave
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butleav_Click(sender As Object, e As EventArgs) Handles Butleav.Click
        Dim instr As String
        instr = "INSERT INTO Leave(Start_Date,End_Date) VALUES ('" + Txtsd.Text + "', '" + Txted.Text + "')"
        Dim cmdempt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdempt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtsd.Text = ""
        Txted.Text = ""
    End Sub


    
    Protected Sub Dropadleave_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropadleave.SelectedIndexChanged

    End Sub
End Class