Imports System.Data.SqlClient
Imports System.Data
Public Class Overtime
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butovertime_Click(sender As Object, e As EventArgs) Handles Butovertime.Click
        Dim instr As String
        instr = "INSERT INTO Overtime(Overtime_Date,Hours_Worked,Overtime_Rate,Overtime_Amount) VALUES ('" + Txtoverdt.Text + "', '" + Txthrs.Text + "','" + Txtoverrt.Text + "','" + Txtoveramt.Text + "')"
        Dim cmdover As SqlCommand = New SqlCommand(instr, co.connect())
        cmdover.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtoverdt.Text = ""
        Txthrs.Text = ""
        Txtoverrt.Text = ""
        Txtoveramt.Text = ""
    End Sub
End Class