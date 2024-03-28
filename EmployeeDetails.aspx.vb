Imports System.Data.SqlClient
Imports System.Data
Public Class EmployeeDetails
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindposition()
        End If

    End Sub

    Protected Sub Butemp_Click(sender As Object, e As EventArgs) Handles Butemp.Click
        Dim instr As String
        instr = "INSERT INTO Employee(First_name,Last_name,Date_of_Birth,Contact_number,Email,Address) VALUES ('" + Txtnmfst.Text + "', '" + Txtnmlst.Text + "', '" + Txtdob.Text + "', '" + Txtnmcnt.Text + "', '" + Txtemail.Text + "', '" + Txtaddress.Text + "')"
        Dim cmdempt As SqlCommand = New SqlCommand(instr, co.connect())
        cmdempt.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtnmfst.Text = ""
        Txtnmlst.Text = ""
        Txtdob.Text = ""
        dropgender.Text = ""
        Txtnmcnt.Text = ""
        Txtemail.Text = ""
        Txtaddress.Text = ""
    End Sub
    Public Sub bindposition()
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Position_ID,Position_name from Position"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        dropposi.Items.Clear()
        dropposi.Items.Add("--Select--")
        dropposi.DataValueField = "Position_ID"
        dropposi.DataTextField = "Position_name"
        dropposi.DataSource = dt
        dropposi.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        dropposi.Items.Add(newListItem)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dt As DataTable = New DataTable
        Dim strsts As String
        strsts = "select Position_ID,Position_name from Position"
        Dim cmdshowdt As SqlCommand = New SqlCommand(strsts, co.connect())
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmdshowdt)
        adp.Fill(dt)
        dropposi.Items.Clear()
        dropposi.Items.Add("--Select--")
        dropposi.DataValueField = "Position_ID"
        dropposi.DataTextField = "Position_name"
        dropposi.DataSource = dt
        dropposi.DataBind()
        Dim newListItem As ListItem
        newListItem = New ListItem("Select", "0")
        newListItem.Selected = True
        dropposi.Items.Add(newListItem)
    End Sub
End Class