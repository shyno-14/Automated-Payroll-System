Imports System.Data.SqlClient
Imports System.Data
Public Class Attendence
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butatt_Click(sender As Object, e As EventArgs) Handles Butatt.Click
        Dim instr As String
        instr = "INSERT INTO Attendance(Date,Time_In,Time_Out,Is_Present) VALUES ('" + Txtdate.Text + "', '" + Txttimein.Text + "','" + Txttimeout.Text + "','" + Txtispresent.Text + "')"
        Dim cmdatt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdatt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtdate.Text = ""
        Txttimein.Text = ""
        Txttimeout.Text = ""
        Txtispresent.Text = ""
    End Sub
End Class