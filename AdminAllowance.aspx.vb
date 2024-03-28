Imports System.Data.SqlClient
Imports System.Data
Public Class AdminAllowance
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindallowance()
        End If
    End Sub

    Protected Sub Butallot_Click(sender As Object, e As EventArgs) Handles Butallot.Click
        Dim instr As String
        instr = "INSERT INTO Allowance(Amount,Allowance_Type) VALUES ('" + Txtalamt.Text + "','" + dropalloty.SelectedValue + "')"
        Dim cmdall As SqlCommand = New SqlCommand(instr, co.connect())
        cmdall.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtalamt.Text = ""
        dropalloty.SelectedIndex = 0
    End Sub
    Public Sub bindallowance()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropallowance.Items.Clear()
        Dropallowance.Items.Add("--Select--")
        Dropallowance.DataValueField = "Employee_ID"
        Dropallowance.DataTextField = "First_name"
        Dropallowance.DataSource = dt
        Dropallowance.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropallowance.Items.Add(newListItem)
    End Sub

    
    Protected Sub Dropallowance_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropallowance.SelectedIndexChanged
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropallowance.Items.Clear()
        Dropallowance.Items.Add("--Select--")
        Dropallowance.DataValueField = "Employee_ID"
        Dropallowance.DataTextField = "First_name"
        Dropallowance.DataSource = dt
        Dropallowance.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropallowance.Items.Add(newListItem)
    End Sub
End Class