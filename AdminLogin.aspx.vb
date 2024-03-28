Imports System.Data.SqlClient
Imports System.Data
Public Class AdminLogin
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btin_Click(sender As Object, e As EventArgs) Handles btin.Click
        Dim usernameOrEmail As String = inemail.Text
        Dim password As String = inpass.Text
        If inemail.Text = "Admin" And inpass.Text = "Admin" Then
            Response.Redirect("EmployeePage.aspx")
        Else
            ' Authentication failed, display error message
            lblMessage.Text = "Invalid username/email or password"
        End If
    End Sub
End Class