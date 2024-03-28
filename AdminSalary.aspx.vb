Imports System.Data.SqlClient
Imports System.Data
Public Class AdminSalary
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindsalary()
        End If
    End Sub

    Protected Sub Butsal_Click(sender As Object, e As EventArgs) Handles Butsal.Click
        Dim instr As String
        instr = "INSERT INTO SalaryDetails(Month,Year,Basic_Salary,Total_Allowance,Total_Deduction,Net_Salary) VALUES ('" + Txtmont.Text + "', '" + Txtyr.Text + "','" + Txtbsy.Text + "','" + Txttotal.Text + "','" + Txttotdedc.Text + "','" + Txtnetsal.Text + "')"
        Dim cmdsal As SqlCommand = New SqlCommand(instr, co.connect())
        cmdsal.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtmont.Text = ""
        Txtyr.Text = ""
        Txtbsy.Text = ""
        Txttotal.Text = ""
        Txttotdedc.Text = ""
        Txtnetsal.Text = ""
    End Sub
    Public Sub bindsalary()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name,Last_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropsalary.Items.Clear()
        Dropsalary.Items.Add("--Select--")
        Dropsalary.DataValueField = "Employee_ID"
        Dropsalary.DataTextField = "First_name"
        Dropsalary.DataSource = dt
        Dropsalary.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropsalary.Items.Add(newListItem)
    End Sub

    Protected Sub Dropsalary_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropsalary.SelectedIndexChanged
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name,Last_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropsalary.Items.Clear()
        Dropsalary.Items.Add("--Select--")
        Dropsalary.DataValueField = "Employee_ID"
        Dropsalary.DataTextField = "First_name"
        Dropsalary.DataSource = dt
        Dropsalary.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropsalary.Items.Add(newListItem)
    End Sub
End Class