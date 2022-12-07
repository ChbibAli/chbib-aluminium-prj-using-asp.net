Imports System.Data
Imports System.Data.SqlClient

Public Class signup1
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function Exists(ByVal email As String) As Boolean

        con = New SqlConnection(strcon)
        com = New SqlCommand("select count(*) from client where email=@a", con)
        com.Parameters.Add("a", SqlDbType.NVarChar).Value = email
        Dim n As Integer
        con.Open()
        n = com.ExecuteScalar()


        con.Close()

        If n = 0 Then
            Return False
        Else
            Return True
        End If

    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or TextBox6.Text = "" Or TextBox7.Text = "" Or TextBox8.Text = "" Or TextBox9.Text = "" Or TextBox10.Text = "" Or TextBox11.Text = "") Then
            MsgBox("Please Enter All your information!", MsgBoxStyle.Information)

        ElseIf (Exists(TextBox10.Text) = False) Then
            Dim f As String = TextBox1.Text
            Dim l As String = TextBox2.Text
            Dim m As String = TextBox3.Text
            Dim fm As String = TextBox4.Text
            Dim g As String = TextBox5.Text
            Dim c As String = TextBox6.Text
            Dim s As String = TextBox7.Text
            Dim b As String = TextBox8.Text
            Dim fl As String = TextBox9.Text
            Dim em As String = TextBox10.Text
            Dim pas As String = TextBox11.Text
            Dim type As String = DropDownList1.SelectedItem.Value
            Dim cn As String = TextBox12.Text

            con = New SqlConnection(strcon)
            com = New SqlCommand("insert into client(firstname, lastname, mobilenumber, fixednumber, governorate, city, streetname, buildingname, floor, email, password, typeclient, companyname) values(@a, @b, @c, @d, @e ,@f, @g, @h, @i, @j, @k, @l, @m)", con)
            com.Parameters.Add("a", SqlDbType.NVarChar).Value = f
            com.Parameters.Add("b", SqlDbType.NVarChar).Value = l
            com.Parameters.Add("c", SqlDbType.NVarChar).Value = m
            com.Parameters.Add("d", SqlDbType.NVarChar).Value = fm
            com.Parameters.Add("e", SqlDbType.NVarChar).Value = g
            com.Parameters.Add("f", SqlDbType.NVarChar).Value = c
            com.Parameters.Add("g", SqlDbType.NVarChar).Value = s
            com.Parameters.Add("h", SqlDbType.NVarChar).Value = b
            com.Parameters.Add("i", SqlDbType.NVarChar).Value = fl
            com.Parameters.Add("j", SqlDbType.NVarChar).Value = em
            com.Parameters.Add("k", SqlDbType.NVarChar).Value = pas
            com.Parameters.Add("l", SqlDbType.NVarChar).Value = type
            com.Parameters.Add("m", SqlDbType.NVarChar).Value = cn



            con.Open()

            com.ExecuteNonQuery()


            con.Close()
            Dim url As String = "login.aspx"
            Response.Redirect(url)
        ElseIf (Exists(TextBox10.Text) = True) Then
            MsgBox("already exist")

        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox10.Text = ""
        TextBox11.Text = ""

        TextBox12.Text = ""
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        If (DropDownList1.SelectedItem.Value = "Company") Then
            TextBox12.Visible = True
        Else
            TextBox12.Visible = False
        End If
    End Sub
End Class