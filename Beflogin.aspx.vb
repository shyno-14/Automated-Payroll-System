Imports System.Data.SqlClient
Imports System.Data
Public Class Beflogin
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub AdminButton_Click(sender As Object, e As EventArgs) Handles AdminButton.Click
        
        Response.Redirect("AdminLogin.aspx")
        
    End Sub

    Protected Sub EmployeeButton_Click(sender As Object, e As EventArgs) Handles EmployeeButton.Click
        Response.Redirect("EmployeeLogin.aspx")
    End Sub
    'Private Function AuthenticateUser(usernameOrEmail As String, password As String) As Boolean

    '    Dim query As String = "SELECT COUNT (*) FROM admin WHERE (usernameOrEmail = @UsernameOrEmail) AND password = @Password"

    '    Using cmd As New SqlCommand(query, co.connect())
    '        cmd.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail)
    '        cmd.Parameters.AddWithValue("@Password", password)


    '        Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())

    '        'If count is greater than 0, user is authenticated
    '        Return count > 0
    '    End Using
    'End Function
End Class