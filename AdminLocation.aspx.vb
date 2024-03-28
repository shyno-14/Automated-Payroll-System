Imports System.Data.SqlClient
Imports System.Data
Public Class AdminLocation
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butloca_Click(sender As Object, e As EventArgs) Handles Butloca.Click
        Dim instr As String
        instr = "INSERT INTO Location(Latitude,Longitude,Location_Time) VALUES ('" + Txtlat.Text + "', '" + Txtlong.Text + "','" + Txtlocti.Text + "')"
        Dim cmdloca As SqlCommand = New SqlCommand(instr, co.connect())
        cmdloca.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtlat.Text = ""
        Txtlong.Text = ""
        Txtlocti.Text = ""
    End Sub
End Class