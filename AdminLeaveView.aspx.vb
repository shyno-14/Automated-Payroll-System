Imports System.Data.SqlClient
Imports System.Data
Public Class AdminLeaveView
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            gridleave()
        End If
    End Sub

    Public Sub gridleave()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "SELECT  First_name,Last_name,Leave.Start_Date,Leave.End_Date,Leave.status FROM EmployeeDetails INNER JOIN Leave ON EmployeeDetails.Employee_ID= Leave.Employee_ID"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub


    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        gridleave()
    End Sub
End Class