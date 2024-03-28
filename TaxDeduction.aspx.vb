Imports System.Data.SqlClient
Imports System.Data
Public Class TaxDeduction
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Buttax_Click(sender As Object, e As EventArgs) Handles Buttax.Click
        Dim instr As String
        instr = "INSERT INTO TaxDeduction(Tax_Type,Tax_Amount) VALUES ('" + Txttaxty.Text + "', '" + Txttax.Text + "')"
        Dim cmdtax As SqlCommand = New SqlCommand(instr, co.connect())
        cmdtax.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txttaxty.Text = ""
        Txttax.Text = ""
    End Sub
End Class