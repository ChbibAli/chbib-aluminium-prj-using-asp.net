Imports System.Data
Imports System.Data.SqlClient
Public Class add_product
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim con As SqlConnection
    Dim com As SqlCommand
    Dim dr As SqlDataReader
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (txtcategory.Text = "" Or txtname.Text = "" Or
            txtcolor.Text = "" Or
            txtbrand.Text = "" Or
            txtlength.Text = "" Or
            txtwidth.Text = "" Or
            txtthickness.Text = "" Or
            txtquantity.Text = "" Or
            txtprice.Text = "" Or
            txtimage.Text = "") Then

            MsgBox("please enter all your information!", MsgBoxStyle.Information)
        Else
            con = New SqlConnection(strcon)

            com = New SqlCommand("insert into items(category,name, color, brand, length, width, tickness, quantity, price, image ) values(@a, @b, @c, @d, @e ,@f, @g, @h, @i, @j)", con)
            com.Parameters.Add("a", SqlDbType.NVarChar).Value = txtcategory.Text
            com.Parameters.Add("b", SqlDbType.NVarChar).Value = txtname.Text
            com.Parameters.Add("c", SqlDbType.NVarChar).Value = txtcolor.Text
            com.Parameters.Add("d", SqlDbType.NVarChar).Value = txtbrand.Text
            com.Parameters.Add("e", SqlDbType.NVarChar).Value = txtlength.Text
            com.Parameters.Add("f", SqlDbType.NVarChar).Value = txtwidth.Text
            com.Parameters.Add("g", SqlDbType.NVarChar).Value = txtthickness.Text
            com.Parameters.Add("h", SqlDbType.NVarChar).Value = txtquantity.Text
            com.Parameters.Add("i", SqlDbType.NVarChar).Value = txtprice.Text
            com.Parameters.Add("j", SqlDbType.NVarChar).Value = txtimage.Text
            con.Open()

            com.ExecuteNonQuery()
            con.Close()
            MsgBox("Item Added")
            txtcategory.Text = ""
            txtname.Text = ""
            txtcolor.Text = ""
            txtbrand.Text = ""
            txtlength.Text = ""
            txtwidth.Text = ""
            txtthickness.Text = ""
            txtquantity.Text = ""
            txtprice.Text = ""
            txtimage.Text = ""
            txtid.Text = ""
        End If



    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If txtid.Text = String.Empty Then
            MsgBox("Enter Item Id")
        Else
            con = New SqlConnection(strcon)
            com = New SqlCommand($"DELETE FROM items WHERE iditem ={txtid.Text}", con)
            con.Open()

            com.ExecuteNonQuery()
            con.Close()
            MsgBox("Item Deleted")
            txtcategory.Text = ""
            txtname.Text = ""
            txtcolor.Text = ""
            txtbrand.Text = ""
            txtlength.Text = ""
            txtwidth.Text = ""
            txtthickness.Text = ""
            txtquantity.Text = ""
            txtprice.Text = ""
            txtimage.Text = ""
            txtid.Text = ""
        End If

    End Sub


    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click

        con = New SqlConnection(strcon)
            com = New SqlCommand($"select * from items where iditem ={txtid.Text}", con)
            con.Open()
            Dim reader = com.ExecuteReader()
        If reader.HasRows Then
            While reader.Read
                txtname.Text = reader.Item("name").ToString()
                txtbrand.Text = reader.Item("brand").ToString()
                txtcolor.Text = reader.Item("color").ToString()
                txtimage.Text = reader.Item("image").ToString()
                txtlength.Text = reader.Item("length").ToString()
                txtwidth.Text = reader.Item("width").ToString()
                txtthickness.Text = reader.Item("tickness").ToString()
                txtcategory.Text = reader.Item("category").ToString()
                txtid.Text = reader.Item("iditem").ToString()
                txtquantity.Text = reader.Item("quantity").ToString()
                txtprice.Text = reader.Item("price").ToString()
            End While
        Else
            MsgBox("This id Not Exist")
        End If
        con.Close()
    End Sub



    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim url As String = "home.aspx"
        Response.Redirect(url)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If txtid.Text = String.Empty Then
            MsgBox("Enter Item Id")
        Else
            con = New SqlConnection(strcon)
            com = New SqlCommand($"UPDATE items SET category = '{txtcategory.Text}',
                            name = '{txtname.Text}', color = '{txtcolor.Text}' ,
                            brand ='{txtbrand.Text}', length ='{txtlength.Text}',
                            width ='{txtwidth.Text}', tickness='{txtthickness.Text}',
                            price ='{txtprice.Text}' , image= '{txtimage.Text}',
                            quantity ='{txtquantity.Text}'
                            WHERE iditem ={txtid.Text}", con)
            con.Open()

            com.ExecuteNonQuery()
            con.Close()
            MsgBox("Item Updated")
            txtcategory.Text = ""
            txtname.Text = ""
            txtcolor.Text = ""
            txtbrand.Text = ""
            txtlength.Text = ""
            txtwidth.Text = ""
            txtthickness.Text = ""
            txtquantity.Text = ""
            txtprice.Text = ""
            txtimage.Text = ""
            txtid.Text = ""
        End If

    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        con = New SqlConnection(strcon)
        com = New SqlCommand($"select * from fixedorders where idorder ={txtidorder.Text}", con)
        con.Open()
        Dim reader = com.ExecuteReader()
        If reader.HasRows Then
            While reader.Read
                TextBox1.Text = reader.Item("status").ToString()

            End While
        Else
            MsgBox("This id Not Exist", MsgBoxStyle.Information)
        End If
        con.Close()
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        If txtidorder.Text = String.Empty Then
            MsgBox("Enter IdOrder")
        Else
            con = New SqlConnection(strcon)
            com = New SqlCommand($"UPDATE fixedorders SET status =@a WHERE idorder=@b", con)
            com.Parameters.Add("a", SqlDbType.NVarChar).Value = TextBox1.Text
            com.Parameters.Add("b", SqlDbType.Int).Value = txtidorder.Text
            con.Open()

            com.ExecuteNonQuery()
            con.Close()
            MsgBox("Item Updated")
            TextBox1.Text = ""
            txtidorder.Text = ""

        End If
    End Sub
End Class