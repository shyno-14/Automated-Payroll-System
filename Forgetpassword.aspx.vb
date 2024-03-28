Imports System.Data.SqlClient
Imports System.Data
Public Class Forgetpassword
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim email As String = txtEmail.Text
        Dim newPassword As String = txtPassword.Text

        Dim query As String = "UPDATE donar SET password = @Password WHERE email = @email"
        Using cmd As New SqlCommand(query, co.connect())
            cmd.Parameters.AddWithValue("@password", newPassword)
            cmd.Parameters.AddWithValue("@email", email)
            co.Open()
            cmd.ExecuteNonQuery()
        End Using

        Response.Redirect("login.aspx")

    End Sub
End Class