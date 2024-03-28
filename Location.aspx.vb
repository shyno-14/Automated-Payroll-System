Imports System.Data.SqlClient
Imports System.Data
Public Class Location
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butloc_Click(sender As Object, e As EventArgs) Handles Butloc.Click
        Dim instr As String
        instr = "INSERT INTO Location(Latitude,Longitude,Location_Time) VALUES ('" + Txtlatitude.Text + "', '" + Txtlongitude.Text + "','" + Txtloc.Text + "')"
        Dim cmdloca As SqlCommand = New SqlCommand(instr, co.connect())
        cmdloca.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtlatitude.Text = ""
        Txtlongitude.Text = ""
        Txtloc.Text = ""
    End Sub
End Class