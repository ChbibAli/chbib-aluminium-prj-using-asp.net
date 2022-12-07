Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Imports System.Net.Mail

Public Class Checkout
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim con As SqlConnection
    Dim com As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GetItems()
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
    Public Function GetItems() As DataSet
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

        Dim ds As New DataSet
        Using con As New SqlConnection(strcon)
            Using cmd As New SqlCommand($"Select I.name,I.price,I.quantity,I.image,I.iditem from items I JOIN temporaryordersdetails O ON I.iditem = O.iditem where O.idorder = {idorder}")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                End Using
            End Using
        End Using
        Return ds
    End Function
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Session("email") = ""
        Response.Redirect("home.aspx")
    End Sub
    Public Function GetDeliveryCost() As String
        Return DropDownList2.SelectedValue
    End Function
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If DropDownList2.SelectedValue = "..." Then
            MsgBox("Please Select Your Location", MsgBoxStyle.Information)
        Else
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
            Dim TotalCost As Double = 0
            TotalCost += Integer.Parse(DropDownList2.SelectedValue)
            con = New SqlConnection(strcon)
            com = New SqlCommand($"insert into fixedorders(date,deliverycost,totalsom,idclient,status) values('{DateTime.Now}',{DropDownList2.SelectedValue},{TotalCost},{idClient},'UnRecived')", con)
            con.Open()
            com.ExecuteNonQuery()
            con.Close()
            com = New SqlCommand("SELECT TOP 1 *  FROM fixedorders ORDER BY idorder DESC", con)
            con.Open()
            Dim reader = com.ExecuteReader()
            Dim idorder As Integer
            If reader.HasRows Then
                While reader.Read
                    idorder = reader.Item("idorder").ToString()
                End While
            End If
            con.Close()
            Dim totalprice As Double
            For Each dataRow As Data.DataRow In Me.GetItems().Tables(0).Rows
                Dim message, title, defaultValue As String
                Dim myValue As Object
                message = "Enter the quantity for " + dataRow("name").ToString() + " product and available Quantity is " + dataRow("quantity").ToString()
                title = "Product Quantity"
                defaultValue = "1"
                myValue = InputBox(message, title, defaultValue)
                If myValue Is "" Then myValue = defaultValue
                totalprice = CDbl(dataRow("price").ToString()) * CDbl(myValue)
                TotalCost += CDbl(dataRow("price").ToString()) * CDbl(myValue)
                If CDbl(myValue) > 0 Then
                    com = New SqlCommand($"insert into fixedordersdetails(idorder,iditem,itemquatity,itemprice,totalprice) values({idorder},{dataRow("iditem").ToString()},{myValue},{dataRow("price").ToString()},{totalprice})", con)
                    con.Open()
                    com.ExecuteNonQuery()
                    con.Close()
                    com = New SqlCommand($"Update items set quantity = {Integer.Parse(dataRow("quantity").ToString()) - Integer.Parse(myValue)} where iditem ={dataRow("iditem").ToString()}", con)
                    con.Open()
                    com.ExecuteNonQuery()
                    con.Close()
                End If
            Next
            MsgBox($"Your Total Cost is {TotalCost} $")
            com = New SqlCommand($"Update fixedorders set totalsom = {TotalCost} where idorder ={idorder}", con)
            con.Open()
            com.ExecuteNonQuery()
            con.Close()
            For Each dataRow As Data.DataRow In Me.GetItems().Tables(0).Rows
                com = New SqlCommand($"Delete from temporaryordersdetails WHERE iditem ={dataRow("iditem").ToString()}", con)
                con.Open()
                com.ExecuteNonQuery()
                con.Close()
            Next
            com = New SqlCommand("SELECT TOP 1 *  FROM temporaryorders ORDER BY idorder DESC", con)
            con.Open()
            Dim reader3 = com.ExecuteReader()
            Dim idorder3 As Integer
            If reader3.HasRows Then
                While reader3.Read
                    idorder3 = reader3.Item("idorder").ToString()
                End While
            End If
            con.Close()
            com = New SqlCommand($"Delete from temporaryorders WHERE idorder ={idorder3}", con)
            con.Open()
            com.ExecuteNonQuery()
            con.Close()
            Dim password As String
            Dim city As String
            Dim governate As String
            Dim street As String
            Dim buildingname As String
            Dim floor As String



            Dim iti As Integer
            Dim qu As Integer

            com = New SqlCommand("select count(*) from fixedordersdetails where idorder=@a", con)
            com.Parameters.Add("@a", SqlDbType.Int).Value = idorder
            Dim nb As Integer
            con.Open()
            nb = com.ExecuteScalar()
            con.Close()

            com = New SqlCommand("select * from fixedordersdetails where idorder=@a", con)
            com.Parameters.Add("@a", SqlDbType.Int).Value = idorder
            con.Open()
            Dim reader4 = com.ExecuteReader()
            Dim i As Integer = 0
            While i < nb


                If reader4.HasRows Then
                    While reader4.Read
                        iti = reader4.Item("iditem").ToString()
                        qu = reader4.Item("itemquatity").ToString()
                    End While

                End If
                i = i + 1
            End While
            con.Close()



            com = New SqlCommand($"SELECT * FROM client where email='{Session("email")}'", con)
            con.Open()
            Dim reader5 = com.ExecuteReader()
            If reader5.HasRows Then
                While reader5.Read
                    password = reader5.Item("password").ToString()
                    city = reader5.Item("city").ToString()
                    governate = reader5.Item("governorate").ToString()
                    street = reader5.Item("streetname").ToString()
                    buildingname = reader5.Item("buildingname").ToString()
                    floor = reader5.Item("floor").ToString()
                End While
            End If
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("chbibaluminium21@gmail.com", "chbib@luminium")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress(Session("email"))
            e_mail.To.Add("chbibaluminium21@gmail.com")
            e_mail.Subject = "Order"
            e_mail.IsBodyHtml = True
            e_mail.Body = $"New Order With id : {idorder} with date : {DateTime.Now} From {Session("email")} is make order from chbibaluminium and the order Total Cost is {TotalCost} $ and Address Details are 
City : {city} , Governate : {governate} , Street : {street} , Building Name : {buildingname} , Floor : {floor}"
            Smtp_Server.Send(e_mail)
            Response.Redirect("home.aspx")
        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub
End Class