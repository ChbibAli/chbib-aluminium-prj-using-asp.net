<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="careers.aspx.vb" Inherits="ChbibAuminium.Career" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
    <title></title>
       <!--links bootsrtap and font-->
     <!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
  rel="stylesheet"
/>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>



    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!--links bootsrtap and font-->

     <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<style>
      @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Satisfy&display=swap');
    
        *{
            box-sizing:border-box;
            margin:0;
            padding:0;
        }
        body{
            width:100%;
            height:100vh;
            display:grid;
            align-items:center;
            
           
        }
       
        
        
        
        
        .contact-in{
            width:80%;
            height:auto;
            margin:auto;
            display:flex;
            flex-wrap:wrap;
         padding:10px;
         border-radius:10px;
         background:#fff;
         box-shadow:0px 0px 10px 0px #666;
        }
        .contact-map{
            width:100%;
            height:auto;
            flex:50%;
        }
        .contact-map img{
            width:100%;
            height:100%;
            flex:50%;
        }
        .contact-form{
            width:100%;
            height:auto;
            flex:50%;
            padding:30px;
            text-align:center;
        }
        .contact-form h1{
          
            margin-bottom:10px;
            background-color:darkslategray;
            color:white;
        }
        .contact-form-txt{
            width:100%;
            height:40px;
            color:#000;
            border:1px solid #bcbcbc; 
            border-radius:50px;
            outline:none;
            margin-bottom:20px;
            padding:15px;
        }
        .contact-form-txt::placeholder{
            color:#aaa;
        }
        .contact-form-textarea{
            width:100%;
            height:130px;
            color:#000;
            border:1px solid #bcbcbc; 
            border-radius:50px;
            outline:none;
            margin-bottom:20px;
            padding:15px;
            font-family: 'Roboto', sans-serif;
        }
        .contact-form-textarea::placeholder{
            color:#aaa;
        }
        .contact-form-btn{
            width:100%;
            border:none;
            outline:none;
            border-radius:50px;
            background-color:lightcoral;color:white;
            text-transform:uppercase;
            padding:10px 0;
            cursor:pointer;font-size:18px;
            font-weight:bold;

        }
          .contact-form-btn:hover {
              background-color:#870c0c;
          }
        .titre section {
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            font-size:16px;
            border-bottom:0.3px solid black;
            background-color:#870c0c;
            font-style:italic;
            font-weight:bold;
                 color:white;
                
        }
        .titre section h2{font-size:45px;font-weight:bold;font-family:Verdana, Geneva, Tahoma, sans-serif;}

        .cen{color:white;position:absolute;top:40%;width:100%;text-align:center;text-shadow:5px 5px 10px #000000;font-size:60px;}
       
  </style>
    <style>
        html{
            scroll-behavior:smooth;
        }
        .gotopbtn{
            position:fixed;
            width:50px;
            height:50px;
            background:#870c0c;
            bottom:40px;right:50px;
            text-decoration:none;
            text-align:center;line-height:50px;
            color:white;z-index:2;
        }
        .gotopbtn:hover{
            color:black;
        }
  </style>
</head>
<body>
                   <form runat="server">

<!-- button go top-->
      <a href="#" class="gotopbtn"><i class="fas fa-arrow-up"></i></a>
    <!-- button go top end-->
    
    
    
    <table style="margin-right:auto;margin-top:0;margin-bottom:0;margin-left:1px;">      
       <!--start nav--><tr><td>
           <nav class="py-2-bg-light border-bottom" style="background-color:#333;height:60px;">
    <div class="container d-flex flex-wrap">
          <ul class="nav me-auto">
        <li class="nav-item" style="color:white;margin-top:20px;font-size:16px"><i class="fas fa-phone-alt"></i>  +961 05 461 986</li>
      </ul>&nbsp

        <ul class="nav me-auto">
       <li class="nav-item" style="margin-right:5px;color:white;margin-top:20px;font-size:16px" ><a href="mailto:chbibaluminium21@gmail.com" style="color:white;text-decoration:none"><i class="fas fa-envelope"></i>  chbibaluminium21@gmail.com</a></li>
      </ul>

         <ul class="nav me-auto">
          <li class="nav-item"  style="margin-right:320px;color:white;margin-top:20px;font-size:16px"><i class="fas fa-map-marker-alt"></i>  Sainte-Therese Hadath,Baabda</li>
        </ul>

     <% If CheckLogin() Then  %>
        <div class="dropdown nav">
          <p style="color:#fff;margin-top:15px" class=" dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fas fa-user" style="margin-right:10px"></i><%= GetClientName() %>
          </p>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="invoices.aspx">Previous Purchases </a></li>
                <li class="logout">
                       <asp:Button runat="server" ID="Button6" class="dropdown-item" Text="Log Out" />
                </li>
           </ul>
        </div>
       <% Else  %>
         <ul class="nav" >
            <li class="nav-item"><a href="login.aspx"  class="nav-link link-dark px-2" style="color:white;margin-top:13px;">Login</a></li>
            <li class="nav-item"><a href="signup.aspx" class="nav-link link-dark px-2" style="color:white;margin-top:13px;">SignUp</a></li>
          </ul>
       <%End If %>
    </div>
  </nav>
   <div class="con" style="background-color:black;height:135px;margin-top:-4px">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">

      <a href="home.aspx" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
          <img src="images/c1.png" style="width:100px;height:80px"/>
        <span class="fs-4" style="color:white;font-weight:bold;">Chbib Aluminium</span>
      </a>
        <ul class="nav nav-pills">
        <li class="nav-item"><a href="home.aspx" class="nav-link" aria-current="page" style="color:white;font-size:13px">Home</a></li>
        <li class="nav-item"><a href="product.aspx" class="nav-link" style="color:white;font-size:13px" >Product</a></li>
        <li class="nav-item"><a href="ourprojects.aspx" class="nav-link" style="color:white;font-size:13px">Projects</a></li>
        <li class="nav-item">
            <%If CheckLogin() %>
                <a href="order.aspx" class="nav-link" style="color:white;font-size:13px;background-color:#870c0c;">Order Now</a>
            <% Else %>
                <a href="login.aspx" class="nav-link" style="color:white;font-size:13px;background-color:#870c0c;">Order Now</a>
            <%End If %>
        </li>        
           <li class="nav-item">
             <%If CheckLogin() %>
                <a href="services.aspx" class="nav-link" style="color:white;font-size:13px;">Services</a>
            <% Else %>
                <a href="login.aspx" class="nav-link" style="color:white;font-size:13px;">Services</a>
            <%End If %>
          </li> 
        <li class="nav-item"><a href="aboutus.aspx" class="nav-link" style="color:white;font-size:13px">About</a></li>   
        <li class="nav-item"><a href="careers.aspx" class="nav-link" style="color:white;font-size:13px">Careers</a></li>
        <li class="nav-item"><a href="contactus.aspx" class="nav-link" style="color:white;font-size:13px">Contact</a></li>
      </ul>
    </header>
  </div>
  </td>
  </tr><!--end nav-->


  
   <!--header h1 start-->
        <tr><td>
           <h1 style="width:1350px;height:200px;color:white;background:url('images/backallpages.jpg');text-align:center;font-size:56px;margin-top:-26px;padding-top:60px ">Careers</h1><br /><br />
            </td></tr>
         <!--header h1 end-->




        <!--titre start-->
             <tr>
                 <td>
                      <div>
                      <div class="titre">
        <section style="margin-top:-57px;margin-bottom:0px;height:80px; text-align:center"> 
           
            <br />
          
           <i class="far fa-question-circle" style="font-size:20px">&nbsp At CHBIB ALUMINIUM , we are always seeking talented and dedicated individuals who believe
                 in continuous growth ,<br />diversity and a challenging work environment.

                If you are interested in working with us , then please fill the form and upload your CV
             &nbsp<i class="far fa-question-circle" style="font-size:20px"></i></i><br />
            </section>
        </div>
    <br /> </div></td></tr>
        <!--titre end-->
    
    
    
    
    <!--contact content start-->
    <tr>
                 <td>
                      <div>
      
     <div class="contact-in">
        <div class="contact-map">
           <img src="images/career-image33.jpeg" class="auto-style1" />
        </div>
        <div class="contact-form">
          <h1 style="background-color:#870c0c;color:white;"><span style="font-size:26px">Careers</span></h1>
             <div id="form1">
           <asp:textbox ID="txtname" runat="server" placeholder="Full Name" class="contact-form-txt"/>
           <asp:textbox ID="Txtemail" runat="server" placeholder="Email" class="contact-form-txt"/>
                  <div style="margin-top:-20px">

                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail" Font-Size="20px" ErrorMessage="Invalid Email Adress !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                      </div>
           <asp:textbox ID="Txtsubject" runat="server" placeholder="Subject" class="contact-form-txt"/>
           <asp:FileUpload ID="FileUpload1" runat="server" placeholder="cv" class="contact-form-txt"/>
           <asp:textbox  placeholder="position" id="txtposition" class="contact-form-txt" runat="server"/>
           <asp:TextBox ID="txtMessage" Rows="5" Columns="40" TextMode="MultiLine" class="contact-form-textarea" placeholder="Message" runat="server"/>
           <asp:button ID="btnSubmit" Text="Send"  runat="server" onclick="btnSubmit_Click" CssClass="contact-form-btn"/><br />
                <asp:Label ID="lbltxt" runat="server"/>
                </div>
        </div>
    </div>
    
      </div>

                 </td>

             </tr>
        <!--contact content end-->




        </form>

       <!-- Footer -->
                   <tr><td>
<footer class="text-center text-lg-start bg-light text-muted"  style="background-color:black">
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom" style="background-color:black">
    <div class="me-5 d-none d-lg-block" >
      <span style="color:white">Get connected with us on social networks:</span>
    </div>
    <div>
      <a href="#" class="me-4 text-reset" >
        <i class="fab fa-facebook-f" style="color:white"></i>
      </a>
      <a href="#" class="me-4 text-reset">
        <i class="fab fa-twitter" style="color:white"></i>
      </a>
      <a href="#" class="me-4 text-reset">
        <i class="fab fa-google" style="color:white"></i>
      </a>
      <a href="#" class="me-4 text-reset">
        <i class="fab fa-instagram" style="color:white"></i>
      </a>
      <a href="#" class="me-4 text-reset">
        <i class="fab fa-linkedin" style="color:white"></i>
      </a>
      <a href="#" class="me-4 text-reset">
        <i class="fab fa-github" style="color:white"></i>
      </a>
    </div>
  </section>

  <section  style="background-color:black;margin-top:-48px">
    <div class="container text-center text-md-start mt-5">
 
      <div class="row mt-3">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4" style="color:white;font-size:18px">
            <i class="fas fa-gem me-3"></i>Chbib Aluminium
          </h6>
          <p style="color:white">
         The aluminum company,chbib,was
         founded in 1999 by Youssef Chbib<br /> who had acquired his experience over the past 20 years manufacturing and installing  all types of aluminum and glass in Lebanon.
          </p>
        </div> 
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4" style="color:white">
            Products
          </h6>
          <p style="color:white">
            <a href="product.aspx#al" class="text-reset" >Aluminium</a>
          </p>
          <p style="color:white">
            <a href="product.aspx#ac" class="text-reset">Accessories</a>
          </p>
          <p style="color:white">
            <a href="product.aspx#gl" class="text-reset">Glass</a>
          </p>
        </div>
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4" style="color:white">
            Useful links
          </h6>
          <p style="color:white">
            <a href="home.aspx" class="text-reset">Home</a>
          </p>
          <p style="color:white">
            <a href="aboutus.aspx" class="text-reset">About</a>
          </p>
          <p style="color:white">
            <a href="ourprojects.aspx" class="text-reset">Projects</a>
          </p>
          <p style="color:white">
            <a href="careers.aspx" class="text-reset">Careers</a>
          </p>
        </div>
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4" style="color:white">
            Contact
          </h6>
          <p style="color:white"><i class="fas fa-map-marker-alt"></i> Sainte-Therese Street,AL-Hadath</p>
          <a href="mailto:chbibaluminium21@gmail.com" style="text-decoration:none;color:white"><p style="color:white">
            <i class="fas fa-envelope"></i> chbibaluminium21@gmail.com</p></a>
          <p style="color:white"><i class="fas fa-phone me-3"></i> 05 461 986</p>
          <p style="color:white"><i class="fas fa-print me-3"></i> 05 463 223</p>
        </div>
      </div>
    </div>
  </section>
  <div class="text-center p-4" style="background-color:#333;color:white">
    ©️ 2021 Copyright : Chbib Aluminium. All Rights Reserved
  </div>
</footer></td></tr>
    <!--end footer-->
                   </table>
</body>
</html>
