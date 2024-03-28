Imports System.Data.SqlClient
Imports System.Data
Public Class AdminDeduction
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            binddeduct()
        End If
    End Sub

    Protected Sub Butdedu_Click(sender As Object, e As EventArgs) Handles Butdedu.Click
        Dim instr As String
        instr = "INSERT INTO Deduction(Amount,Deduction_Type) VALUES ( '" + Txtdeduamt.Text + "','" + dropdeduc.SelectedValue + "')"
        Dim cmdatt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdatt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtdeduamt.Text = ""
        dropdeduc.SelectedIndex = 0
    End Sub
    Public Sub binddeduct()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name,Last_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropaddec.Items.Clear()
        Dropaddec.Items.Add("--Select--")
        Dropaddec.DataValueField = "Employee_ID"
        Dropaddec.DataTextField = "First_name"
        Dropaddec.DataSource = dt
        Dropaddec.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropaddec.Items.Add(newListItem)
    End Sub

    Protected Sub Dropaddec_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropaddec.SelectedIndexChanged
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name,Last_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropaddec.Items.Clear()
        Dropaddec.Items.Add("--Select--")
        Dropaddec.DataValueField = "Employee_ID"
        Dropaddec.DataTextField = "First_name"
        Dropaddec.DataSource = dt
        Dropaddec.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropaddec.Items.Add(newListItem)
    End Sub
End Class