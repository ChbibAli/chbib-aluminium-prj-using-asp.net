<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="signup.aspx.vb" Inherits="ChbibAuminium.signup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
        body{
            background-image:url('coverimage/cover-image.jpeg');
            background-size:cover;
        }
        #form1{
            height:780px;
            width:575px;
             background:rgba(0,0,0,0.5);
            margin-left:auto;
            margin-right:auto;
           
        }

        .auto-style1 {
            width: 568px;
            height: 102px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .container4{
            margin-left:25px;
        }
        
        .txtbox{
           border:none;
            border-bottom:3px solid #fff;
            outline:none;
            height:40px;
            color:#fff;
            font-size:16px;
            background-color:transparent;
        }
       .btnsubmit{
            border:none;
            outline:none;
            height:40px;
            font-size:16px;
            color:#fff;
            background-color:lightcoral;
            cursor:pointer;
            border-radius:20px;
            transition:.3s ease-in-out;

        }
        .btnsubmit:hover{
            background-color:#870c0c;

        }
        ::placeholder{
            color:rgba(255,255,255,.5);
        }
        .ddl{
            border:none;
            border-bottom:3px solid #fff;
            outline:none;
            height:40px;
            font-size:18px; 
            background-color:black;  padding-top:3px;
            color:white;
        }
        .lblclass{
            font-weight:bold;
            color:#fff;
        }
          .btnforget{
            font-size:16px;
            font-weight:700;
            text-decoration:none;
            color:#fff;
        }
        .btnforget:hover{
           text-decoration:underline;
           color:#870c0c;
        }
    </style>
  

</head>
<body>
    <script>
        onchange = "document.getElementById('password').type = this.checked ? 'text' : 'password'"
        
    </script>
    <form id="form1" runat="server">
       
            <img src="imagelogin/signup-new-image.png" class="auto-style1" />
        
        <div class="container4">

            <asp:TextBox ID="TextBox1" CssClass="txtbox" placeholder="*Enter First Name" runat="server" Height="32px" Width="252px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" CssClass="txtbox" placeholder="*Enter Last Name" runat="server" Height="32px" Width="252px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" CssClass="txtbox" placeholder="*Enter Mobile Number" runat="server" Height="32px" Width="252px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" CssClass="txtbox" placeholder="*Enter Fixed Mobile Number" runat="server" Height="32px" Width="252px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" CssClass="txtbox" placeholder="*Enter Governorate" runat="server" Height="32px" Width="252px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" CssClass="txtbox" placeholder="*City" runat="server" Height="32px" Width="252px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox7" CssClass="txtbox" placeholder="*Enter Street Name" runat="server" Height="32px" Width="160px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" CssClass="txtbox" placeholder="*Enter Building Name" runat="server" Height="32px" Width="160px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" CssClass="txtbox" placeholder="*Enter Floor" runat="server" Height="32px" Width="161px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox10" CssClass="txtbox" placeholder="*Enter Email" runat="server" Height="32px" Width="528px"></asp:TextBox>
           <br /> <div>

                <asp:RegularExpressionValidator Font-Size="18px" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Adress !" ControlToValidate="TextBox10" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </div>
            
            <asp:TextBox ID="TextBox11" CssClass="txtbox" placeholder="*Enter Password"   runat="server" Height="32px" Width="528px" TextMode="Password"></asp:TextBox>
            <input type="checkbox" onchange="document.getElementById('TextBox11').type = this.checked ? 'text' : 'password'" />
            <span style="color:white">Show password</span>
            <div>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="Password must be 8-10 characters long with at least one numeric,</br> one alphabet and one special character." ForeColor="Red" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"></asp:RegularExpressionValidator>

            </div>
            <br />
            <br />
            <asp:Label ID="Label1" CssClass="lblclass" runat="server" Text="Company Or Normal Client ?"></asp:Label><br />
            <br />
            <asp:DropDownList ID="DropDownList1" placeholder="company or normal" CssClass="ddl" runat="server" Height="32px" Width="255px" AutoPostBack="True" >
               <asp:ListItem Value="normal client">normal client</asp:ListItem>
                <asp:ListItem Value="Company">Company</asp:ListItem>
                
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" Visible="false" CssClass="txtbox" placeholder="Enter Name Company" runat="server" Height="32px" Width="257px"></asp:TextBox>
            <br />
            <br />
            <br />

            <asp:Button ID="Button1" CssClass="btnsubmit" runat="server" Text="SIGN_UP" Width="532px" Height="32px" />
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="btnsubmit" runat="server" Text="CANCEL" Width="533px" Height="32px" />
            <br /> <br />
            <asp:linkbutton Text=" * GO to the Login page " href="login.aspx" CssClass="btnforget" runat="server"></asp:linkbutton>
           <br /> <br /><asp:linkbutton Text=" * Back to the Home page " href="home.aspx" CssClass="btnforget" runat="server"></asp:linkbutton>
        </div>
    </form>
</body>
</html>
