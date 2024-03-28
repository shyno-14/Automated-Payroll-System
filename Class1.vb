Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Public Class Class1
    Public con As SqlConnection = New SqlConnection

    Public Function connect()
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        Dim str As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        con.ConnectionString = str
        con.Open()
        Return con
    End Function

    Sub Open()
        Throw New NotImplementedException
    End Sub

End Class
