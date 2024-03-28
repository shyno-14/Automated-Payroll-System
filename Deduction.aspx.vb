Imports System.Data.SqlClient
Imports System.Data
Public Class Deduction
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butdec_Click(sender As Object, e As EventArgs) Handles Butdec.Click
        Dim instr As String
        instr = "INSERT INTO Deduction(Deduction_Type,Amount) VALUES ('" + Txtdecty.Text + "', '" + Txtdecamt.Text + "')"
        Dim cmdatt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdatt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtdecty.Text = ""
        Txtdecamt.Text = ""
    End Sub
End Class