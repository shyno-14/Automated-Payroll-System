Imports System.Data.SqlClient
Imports System.Data
Public Class EmployeeAdmin
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btin_Click(sender As Object, e As EventArgs) Handles btin.Click
        Dim usernameOrEmail As String = inemail.Text
        Dim password As String = inpass.Text
        If AuthenticateUser(usernameOrEmail, password) Then
            ' If authentication is successful, set the username in the session
            Session("usernameOrEmail") = usernameOrEmail
            ' Redirect to the profile page
            Response.Redirect("FrmEmployee.aspx")
        Else
            ' Authentication failed, display error message
            lblMessage.Text = "Invalid username or password"
        End If
    End Sub
    Private Function AuthenticateUser(usernameOrEmail As String, password As String) As Boolean
        Dim query As String = "SELECT COUNT(*) FROM Employee_table WHERE usernameOrEmail = @Username AND password = @Password"

        Using cmd As New SqlCommand(query, co.connect())
            cmd.Parameters.AddWithValue("@Username", usernameOrEmail)
            cmd.Parameters.AddWithValue("@Password", password)

            Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())

            ' If count is greater than 0, user is authenticated
            Return count > 0
        End Using
    End Function
    Protected Sub fgin_Click(sender As Object, e As EventArgs) Handles fgin.Click
        Response.Redirect("Forgot Password.aspx")
    End Sub

    Protected Sub fgin2_Click(sender As Object, e As EventArgs) Handles fgin2.Click
        Response.Redirect("User Signup.aspx")
    End Sub


    '    Private Function GetEmpId() As Integer

    '        ' Check if the username is stored in session

    '        If Session("usernameOrEmail") IsNot Nothing Then

    '            ' Retrieve the username from session

    '            Dim username As String = Session("usernameOrEmail").ToString()



    '            ' Query the database to fetch the customer ID based on the username

    '            Dim Employee_ID As Integer = 0

    '            Dim query As String = "SELECT Employee_ID FROM Employee_table WHERE username = @inemail"





    '            Using command As New SqlCommand(query, co.connect())

    '                command.Parameters.AddWithValue("@inemail", username)



    '                Try



    '                    Dim result As Object = command.ExecuteScalar()

    '                    If result IsNot Nothing AndAlso Not DBNull.Value.Equals(result) Then

    '                        Employee_ID = Convert.ToInt32(result)

    '                    End If

    '                Catch ex As Exception

    '                    ' Log any exceptions

    '                    System.Diagnostics.Debug.WriteLine("Exception: " & ex.Message)

    '                End Try

    '            End Using





    '            Return Employee_ID

    '        Else

    '            ' Username is not stored in session, handle the case accordingly

    '            ' For demonstration purposes, return 0

    '            Return 0

    '        End If

    '    End Function
End Class