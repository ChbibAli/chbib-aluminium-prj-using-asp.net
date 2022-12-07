Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Imports System.Net.Mail
Public Class services
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

    Protected Sub txtcalcul_Click(sender As Object, e As EventArgs) Handles txtcalcul.Click
        Dim gl = glasss.Text
        Dim al = prixal.text
       
        Dim length = len.Text
        Dim width = wid.Text
        Dim glasadd = gl * length * width
        Dim aladd = al * width * length
        pri.Text = glasadd + aladd
        labelshow.Text = " This price Is 80% accurate, for more details please contact us"
        Button1.Visible = True
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("contactus.aspx")
    End Sub



    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        If DropDownList2.SelectedValue = "Choose service" Then
            MsgBox("Please choose service", MsgBoxStyle.Information)

        ElseIf msg.Text = "" Then
            MsgBox("Enter your message !", MsgBoxStyle.Information)
        Else


            Dim message As String = msg.Text
            Dim service As String = DropDownList2.SelectedItem.Value

            Dim fname As String
            Dim lname As String
            Dim tel1 As String
            Dim tel2fix As String
            con = New SqlConnection(strcon)
            com = New SqlCommand($"SELECT * FROM client where email='{Session("email")}'", con)
            con.Open()
            Dim reader2 = com.ExecuteReader()
            If reader2.HasRows Then
                While reader2.Read

                    fname = reader2.Item("firstname").ToString()
                    lname = reader2.Item("lastname").ToString()
                    tel1 = reader2.Item("mobilenumber").ToString()
                    tel2fix = reader2.Item("fixednumber").ToString()

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
            e_mail.Subject = "Service"
            e_mail.IsBodyHtml = True
            e_mail.Body = $"The client : {fname} {lname} , his mobile phone number : {tel1} , his fixed phone number : {tel2fix} , on date : {DateTime.Now} , He has requested this service : {service} , And details of what he requires from this service: {message}"
            Smtp_Server.Send(e_mail)
            labelshow2.Text = "Your message has been sent. We will contact you as soon as possible. Thank you."
        End If
    End Sub
End Class