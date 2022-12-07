Imports System.Data.SqlClient

Public Class invoices
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim con As SqlConnection
    Dim com As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Function CheckLogin()
        If Session("email") = String.Empty Then
            Return False
        Else
            Return True
        End If
    End Function

    Protected Function GetClientName()
        con = New SqlConnection(strcon)
        com = New SqlCommand($"Select * FROM client WHERE email ='{Session("email")}'", con)
        con.Open()
        Dim reader = com.ExecuteReader()
        Dim s As String
        If reader.HasRows Then
            While reader.Read
                s = reader.Item("firstname").ToString() + " " + reader.Item("lastname").ToString()
            End While
        End If
        Return s
    End Function
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Session("email") = ""
        Response.Redirect("home.aspx")
    End Sub
    Public Function GetItems() As DataSet
        con = New SqlConnection(strcon)
        Dim idClient As Integer
        com = New SqlCommand($"Select * From client where email='{Session("email")}'", con)
        con.Open()
        Dim reader2 = com.ExecuteReader()
        If reader2.HasRows Then
            While reader2.Read
                idClient = reader2.Item("idclient").ToString()
            End While
        End If
        con.Close()
        Dim ds As New DataSet
        Using con As New SqlConnection(strcon)
            Using cmd As New SqlCommand($"Select f.date,t.name,t.color,t.brand,t.width,t.length,t.price,t.image,t.tickness,I.itemquatity,f.status from fixedorders f Join fixedordersdetails I ON f.idorder = I.idorder Join Items t on t.iditem = I.iditem where idclient = {idClient}")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                End Using
            End Using
        End Using
        Return ds
    End Function
End Class