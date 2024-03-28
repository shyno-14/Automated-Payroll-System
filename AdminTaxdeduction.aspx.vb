Imports System.Data.SqlClient
Imports System.Data
Public Class AdminTaxdeduction
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindtaxdeduc()
        End If
    End Sub

    Protected Sub Buttxded_Click(sender As Object, e As EventArgs) Handles Buttxded.Click
        Dim instr As String
        instr = "INSERT INTO TaxDeduction(Tax_Amount) VALUES ('" + Txttxamt.Text + "','" + droptx.SelectedValue + "')"
        Dim cmdtax As SqlCommand = New SqlCommand(instr, co.connect())
        cmdtax.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txttxamt.Text = ""
        droptx.SelectedIndex = 0
    End Sub
    Public Sub bindtaxdeduc()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropadtax.Items.Clear()
        Dropadtax.Items.Add("--Select--")
        Dropadtax.DataValueField = "Employee_ID"
        Dropadtax.DataTextField = "First_name"
        Dropadtax.DataSource = dt
        Dropadtax.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropadtax.Items.Add(newListItem)
    End Sub

    Protected Sub Dropadtax_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Dropadtax.SelectedIndexChanged
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Employee_ID,First_name from EmployeeDetails"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        Dropadtax.Items.Clear()
        Dropadtax.Items.Add("--Select--")
        Dropadtax.DataValueField = "Employee_ID"
        Dropadtax.DataTextField = "First_name"
        Dropadtax.DataSource = dt
        Dropadtax.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        Dropadtax.Items.Add(newListItem)
    End Sub
End Class