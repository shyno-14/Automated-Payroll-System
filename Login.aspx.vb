Imports System.Data.SqlClient
Imports System.Data
Public Class Login
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
            If AuthenticateEmp(usernameOrEmail, password) Then
                ' If authentication is successful, set the username in the session
                Session("usernameOrEmail") = usernameOrEmail
                ' Redirect to the profile page
                Response.Redirect("EmployeeData.aspx")
            Else
                ' Authentication failed, display error message
                lblMessage.Text = "Invalid username/email or password"
            End If
        End If
    End Sub
    
    Private Function AuthenticateUser(usernameOrEmail As String, password As String) As Boolean

        Dim query As String = "SELECT COUNT (*) FROM admin WHERE (usernameOrEmail = @UsernameOrEmail) AND password = @Password"

        Using cmd As New SqlCommand(query, co.connect())
            cmd.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail)
            cmd.Parameters.AddWithValue("@Password", password)


            Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())

            'If count is greater than 0, user is authenticated
            Return count > 0
        End Using
    End Function

    Private Function AuthenticateEmp(usernameOrEmail As String, password As String) As Boolean

        Dim query As String = "SELECT COUNT (*) FROM EmployeeDetails WHERE (usernameOrEmail = @UsernameOrEmail) AND password = @Password"

        Using cmd As New SqlCommand(query, co.connect())
            cmd.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail)
            cmd.Parameters.AddWithValue("@Password", password)


            Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())

            'If count is greater than 0, user is authenticated
            Return count > 0

        End Using
    End Function

    'Public Sub emp()
    '    Dim username As String = Session("usernameOrEmail").ToString()
    '    Dim
    '    Dim query As String = "SELECT * FROM EmployeeDetails WHERE usernameOrEmail = @UsernameOrEmail"
    '    Dim dt As DataTable = New DataTable
    '    Dim strsts As String
    '    Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
    '    Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
    '    adp.Fill(dt)

    'End Sub

    Protected Sub fgin_Click(sender As Object, e As EventArgs) Handles fgin.Click
        Response.Redirect("Forgot Password.aspx")
    End Sub

    Protected Sub fgin2_Click(sender As Object, e As EventArgs) Handles fgin2.Click
        Response.Redirect("User Signup.aspx")
    End Sub
End Class
