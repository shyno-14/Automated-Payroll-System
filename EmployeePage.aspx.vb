Imports System.Data.SqlClient
Imports System.Data
Public Class EmployeePage
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butemppg_Click(sender As Object, e As EventArgs) Handles Butemppg.Click
        Dim instr As String
        instr = "INSERT INTO EmployeeDetails(First_name,Last_name,Date_of_Birth,Gender,Contact_number,Email,Address,Position_ID,Status) VALUES ('" + Txtnmfst.Text + "', '" + Txtnmls.Text + "','" + Txtbirth.Text + "','" + dropgen.SelectedValue + "','" + Txtcono.Text + "','" + Txtmail.Text + "','" + Txtads.Text + "','" + dropposition.SelectedValue + "','" + dropests.SelectedValue + "')"
        Dim cmdemp As SqlCommand = New SqlCommand(instr, co.connect())
        cmdemp.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtnmfst.Text = ""
        Txtnmls.Text = ""
        Txtbirth.Text = ""
        dropgen.SelectedIndex = 0
        Txtcono.Text = ""
        Txtmail.Text = ""
        Txtads.Text = ""
        dropposition.SelectedIndex = 0
        dropests.SelectedIndex = 0
    End Sub

    
    Protected Sub Txtnmfst_TextChanged(sender As Object, e As EventArgs) Handles Txtnmfst.TextChanged

    End Sub
End Class