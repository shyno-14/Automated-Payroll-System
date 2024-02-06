Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick
        Dim s As String
        s = Menu1.SelectedItem.Text
        If s = "EmployeeDetails" Then
            Response.Redirect("EmployeeDetails.aspx")
        ElseIf s = "Position" Then
            Response.Redirect("Position.aspx")
        ElseIf s = "EmployeeAttendance" Then
            Response.Redirect("EmployeeAttendance.aspx")
        ElseIf s = "Leave" Then
            Response.Redirect("Leave.aspx")
        ElseIf s = "EmployeeLocation" Then
            Response.Redirect("Location.aspx")
        ElseIf s = "SalaryDetails" Then
            Response.Redirect("SalaryDetails.aspx")
        ElseIf s = "Allowance" Then
            Response.Redirect("Allowance.aspx")
        ElseIf s = "Deduction" Then
            Response.Redirect("Deduction.aspx")
        ElseIf s = "Overtime" Then
            Response.Redirect("Overtime.aspx")
        Else
            Response.Redirect("Tax.aspx")
        End If
    End Sub
End Class