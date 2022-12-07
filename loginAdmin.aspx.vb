Imports System.Data
Imports System.Data.SqlClient
Public Class loginAdmin
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim ds As DataSet
    Dim da As SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub button1_Click(sender As Object, e As EventArgs) Handles button1.Click
        Dim u As String = textbox1.Text
        Dim p As String = textbox2.Text
        Dim res As Integer = authenticate(u, p)

        If res = 0 Then
            MsgBox("user does not exist", MsgBoxStyle.Information)
        ElseIf res = 1 Then
            MsgBox("password is incorrect")
        Else
            Session("username") = u
            Response.Redirect("add_product.aspx")
        End If
    End Sub


    Public Function authenticate(ByVal u As String, ByVal p As String) As Integer
        Dim res As Integer = 0
        con = New SqlConnection(strcon)
        com = New SqlCommand("select * from admin where email=@a", con)
        com.Parameters.Add("a", SqlDbType.NVarChar).Value = u
        con.Open()
        dr = com.ExecuteReader
        While dr.Read()
            res = 1
            If dr.Item(2).ToString.Trim.Equals(p) Then
                res = 2
            End If
        End While
        con.Close()
        Return res
    End Function
End Class