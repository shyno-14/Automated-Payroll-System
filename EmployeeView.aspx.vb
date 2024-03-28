Imports System.Data.SqlClient
Imports System.Data
Public Class Adminpage
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            grid()
        End If
    End Sub

    Public Sub grid()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select First_name,Last_name,Date_of_Birth,Gender,Contact_number,Email,Address,Position_ID ,Status from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        GridView2.DataSource = dt
        GridView2.DataBind()
    End Sub


    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView2.PageIndexChanging
        GridView2.PageIndex = e.NewPageIndex
        grid()
    End Sub
End Class