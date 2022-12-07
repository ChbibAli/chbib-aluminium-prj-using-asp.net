<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="ChbibAuminium.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body{
            margin:0;
            padding:0;
            background-image:url('coverimage/cover-image.jpeg');
               background-size:cover;
            font-family:sans-serif;
        }
        .loginbox{
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:350px;
            height:420px;
            padding:80px 40px;
            box-sizing:border-box;
            background:rgba(0,0,0,0.5);
        }
         
        .loginbox .user{
              width:100px;
              height:100px;   
               overflow:hidden;
             top:calc(-100px/2);
           left:calc(50% -50px);
            position:absolute;
           
        }

        h2{
            padding:0;
            margin:0;
            text-align:center;
            color:#870c0c;
        }
        .lblemail, .lblpass{
font-weight:bold;
color:#fff;

        }
        .txtemail, .txtpass, .btnsubmit{
            width:100%;
            margin-bottom:20px;
        }
        .txtemail, .txtpass{
            border:none;
            border-bottom:3px solid #fff;
            outline:none;
            height:40px;
            color:#fff;
            font-size:16px;
            background-color:transparent;
        }
        ::placeholder{
            color:rgba(255,255,255,.5);
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
            font-weight:bold;

        }
        .btnsubmit:hover{
            background-color:#870c0c;

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
   <div class="loginbox">
       <img src="imagelogin/login-logo.png" class="user"/>
       <h2>Log In Here</h2>
       <form runat="server">
           <asp:Label Text="Email" CssClass="lblemail" runat="server" />
           <asp:TextBox runat="server" ID="textbox1" CssClass="txtemail" placeholder="Enter email"></asp:TextBox>
           <asp:Label Text="Password" CssClass="lblpass" runat="server" /> <input type="checkbox" onchange="document.getElementById('textbox2').type = this.checked ? 'text' : 'password'" />
            <span style="color:white;font-size:12px">Show</span>
           
           <asp:TextBox runat="server" ID="textbox2" CssClass="txtpass" placeholder="*****" TextMode="Password"></asp:TextBox>
           
              
           <asp:Button Text="LOGIN" ID="button1" CssClass="btnsubmit" runat="server"/>
           <asp:linkbutton Text="* Don't have an account ? Sign Up now !" href="signup.aspx" CssClass="btnforget" runat="server"></asp:linkbutton>
       <br /><asp:linkbutton Text=" * Back to the Home page " href="home.aspx" CssClass="btnforget" runat="server"></asp:linkbutton>
       </form>
   </div>
</body>
</html>
