Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Public Class order
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim selectedcategory As String
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
    Private Sub GetItems()
        Using con As New SqlConnection(strcon)
            Using cmd As New SqlCommand($"Select iditem,name,color,brand,length,width,tickness,quantity,price,image from items where category = '{DropDownList1.Text}'")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        GridView1.DataSource = dt
                        GridView1.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Protected Sub OnPageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.GetItems()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        selectedcategory = DropDownList1.Text
        GetItems()

    End Sub


   



    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Checkout.aspx")
    End Sub
    Protected Sub OnSelectedIndexChanged(sender As Object, e As EventArgs)
        Dim id As String = GridView1.SelectedRow.Cells(0).Text
        Dim price As String = GridView1.SelectedRow.Cells(8).Text
        con = New SqlConnection(strcon)
        com = New SqlCommand("SELECT TOP 1 *  FROM temporaryorders ORDER BY idorder DESC", con)
        con.Open()
        Dim reader = com.ExecuteReader()
        Dim idorder As Integer
        If reader.HasRows Then
            While reader.Read
                idorder = reader.Item("idorder").ToString()
            End While
        End If
        con.Close()
        Try
            com = New SqlCommand($"insert into temporaryordersdetails(idorder,iditem,itemprice) values({idorder},{id},{price})", con)
            con.Open()
            com.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception
            MsgBox("You orderd this product", MsgBoxStyle.Information)
        End Try

    End Sub
End Class