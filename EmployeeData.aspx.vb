Imports System.Data.SqlClient
Imports System.Data
Public Class EmployeeData
    Inherits System.Web.UI.Page
    Dim co As Class1 = New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Butempdata_Click(sender As Object, e As EventArgs) Handles Butempdata.Click
        Dim instr As String
        instr = "INSERT INTO EmployeeDetails(First_name,Last_name,Date_of_Birth,Contact_number,Email,Address) VALUES ('" + Txtfst.Text + "', '" + Txtlst.Text + "','" + Txtbirth.Text + "','" + Txtgender.Text + "','" + Txtcontact.Text + "','" + Txtemail.Text + "','" + Txtaddress.Text + "','" + Txtposit.Text + "')"
        Dim cmdempl As SqlCommand = New SqlCommand(instr, co.connect())
        cmdempl.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved Successful');</script>")
        Txtfst.Text = ""
        Txtlst.Text = ""
        Txtbirth.Text = ""
        Txtgender.Text = ""
        Txtcontact.Text = ""
        Txtemail.Text = ""
        Txtaddress.Text = ""
        Txtposit.Text = ""
    End Sub
End Class