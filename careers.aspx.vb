Imports System.Net.Mail
Imports System.IO
Imports System.Data.SqlClient

Public Class Career
    Inherits System.Web.UI.Page
    Dim strcon As String = "Data Source=DESKTOP-R9KBGT3\SQLEXPRESS;Initial Catalog=chbibdata;Integrated Security=True"
    Dim con As SqlConnection
    Dim com As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Session("email") = ""
        Response.Redirect("home.aspx")
    End Sub
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        If (txtname.Text = "" Or Txtemail.Text = "" Or Txtsubject.Text = "" Or txtMessage.Text = "" Or txtposition.Text = "") Then
            MsgBox("please enter all your information!", MsgBoxStyle.Information)
        ElseIf (FileUpload1.HasFile = False) Then
            MsgBox("please select a file too upload")
        Else
            Try
                Dim Msg As New MailMessage()
                ' Sender e-mail address.
                Msg.From = New MailAddress(Txtemail.Text)
                ' Recipient e-mail address.
                Msg.To.Add("chbibaluminium21@gmail.com")
                Msg.Subject = "Subject:" + "" + Txtsubject.Text
                If FileUpload1.HasFile Then
                    Dim fileName As String = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)
                    Msg.Attachments.Add(New Attachment(FileUpload1.PostedFile.InputStream, fileName))
                End If
                Msg.Body = "Sender Name: " + txtname.Text + "

" + "Sender Email: " + Txtemail.Text + "

" + "sender Message:" + txtMessage.Text + "

sender position:" + txtposition.Text
                Dim smtp As New SmtpClient()
                smtp.Host = "smtp.gmail.com"
                smtp.Port = 587
                smtp.Credentials = New System.Net.NetworkCredential("chbibaluminium21@gmail.com", "chbib@luminium")
                smtp.EnableSsl = True
                smtp.Send(Msg)
                lbltxt.Text = "Thanks for Contacting us"
                txtname.Text = ""
                Txtsubject.Text = ""
                txtMessage.Text = ""
                Txtemail.Text = ""
            Catch ex As Exception
                Console.WriteLine("{0} Exception caught.", ex)
            End Try
        End If
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
End Class