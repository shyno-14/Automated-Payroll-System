Imports System.Data.SqlClient
Imports System.Data
Public Class AdminOvertime
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindovertime()
        End If
    End Sub

    Protected Sub Butoverti_Click(sender As Object, e As EventArgs) Handles Butoverti.Click
        Dim instr As String
        instr = "INSERT INTO Overtime(Overtime_Date,Hours_Worked,Overtime_Rate,Overtime_Amount) VALUES ('" + Txtovdt.Text + "', '" + Txthrwr.Text + "','" + Txtovrt.Text + "','" + Txtovamt.Text + "')"
        Dim cmdover As SqlCommand = New SqlCommand(instr, co.connect())
        cmdover.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtovdt.Text = ""
        Txthrwr.Text = ""
        Txtovrt.Text = ""
        Txtovamt.Text = ""
    End Sub
    Public Sub bindovertime()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropadover.Items.Clear()
        Dropadover.Items.Add("--Select--")
        Dropadover.DataValueField = "Employee_ID"
        Dropadover.DataTextField = "First_name"
        Dropadover.DataSource = dt
        Dropadover.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropadover.Items.Add(newListItem)
    End Sub

    Protected Sub Dropadover_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropadover.SelectedIndexChanged
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropadover.Items.Clear()
        Dropadover.Items.Add("--Select--")
        Dropadover.DataValueField = "Employee_ID"
        Dropadover.DataTextField = "First_name"
        Dropadover.DataSource = dt
        Dropadover.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropadover.Items.Add(newListItem)
    End Sub
End Class