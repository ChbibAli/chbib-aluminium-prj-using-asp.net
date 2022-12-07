<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="aboutus.aspx.vb" Inherits="ChbibAuminium.Aboutus" %>

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


   <style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
  }
  body{background-color:white;}
  
          .inner-shell {
  padding: 0;
  border: 0;
  display: block;
  position: relative;
  width: 1096px;
  margin:0 auto;
  text-align: left;
  }
  article {
  display: block;
  border: 0;
  margin: 0;
  padding: 0;
  }
  
  article .inner-shell {
  padding: 0;
  border: 0;
  margin: 0 auto;
  display: block;
  position: relative;
  width: 1026px;
  background-color: #ffffff;
  }
  article .left {
  padding: 10px;
  border: 1px solid gray;
  margin: 5px;
  display: inline;
  float: left;
  width: 481px;
  overflow: hidden;
  }
  
  article .right {
  padding: 10px;
  border: 1px solid gray;
  margin: 5px;
  display: inline;
  width: 481px;
  float: left;
  overflow: hidden;
  }
  
  
  .auto-style1 {
      float: right;
      height: 13px;
      width: 30px;
      margin-left: 23px;
  }
  .heading{
      color:brown;position:absolute;top:40%;width:100%;text-align:center;text-shadow:5px 5px 10px #000000;font-size:40px;
  }
  .heading a{
      border:1px solid #fff;
      padding:10px 25px;
      text-decoration:none;
      text-transform:uppercase;
      font-size:14px;
      margin-top:20px;
      display:inline-block;
      color:#fff;
  }
  .heading a:hover{
      background:#fff;
      color:#333;
  }
  .banner{position:relative;width:100%;margin:0 auto;}
  .banner img{width:100%;}


        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
        *{
            margin:0px;
            padding:0px;
            box-sizing:border-box;
           
        }
        .section{
            width:1000px;
            height:500px;
            background-color:#ddd;
            margin-top:5px;
            margin-left:170px;
            
        }
        .container1{
            
            display:block;
            margin:auto;
           
        }
        .content-section{
            float:left;
            width:55%;
        }
        .image-section{
            float:right;
            width:40%;
            padding-top:60px;
        }
        .iamge-section img{
            width:100%;
            height:auto;
            
        }
        .content-section .title{
            text-transform:uppercase;
            font-size:28px;
            
        }
        .content-section .content h3{
            margin-top:20px;
            padding-left:10px;
            color:#5d5d5d;
            font-size:21px;
        }
        .content-section .content p{
            margin-top:10px;
            font-family:sans-serif;
            font-size:18px;
            line-height:1.5;
            padding-left:10px;
        }
        .content-section .content .button{
            margin-top:10px;
            padding-left:20px;
            padding-top:20px;

        }
        .content-section .content .button a{
            background-color:#3d3d3d;
            padding:12px 40px;
            text-decoration:none;
            color:#fff;
            font-size:25px;
            letter-spacing:1.5px;
        }
            .content-section .content .button a:hover {
                background-color:tomato;
            }


        .auto-style1 {
            height: 308px;
            width: 307px;
        }
  
         .inner-shell {
  padding: 0;
  border: 0;
  display: block;
  position: relative;
  width: 1096px;
  margin:0 auto;
  text-align: left;
    
  
}
	article {
  display: block;
  border: 0;
  margin: 0;
  padding: 0;

}

article .inner-shell {
  padding: 0;
  border: 0;
  margin-left:165px;
  display: block;
  position: relative;
  width: 1026px;
  background-color: #ffffff;
   
}
article .left {
  padding: 10px;
  border: 1px solid gray;
  margin: 5px;
  display: inline;
  float: left;
  width: 489px;
  overflow: hidden;
   
 
}

article .right {
  padding: 10px;
  border: 1px solid gray;
  margin: 5px;
  display: inline;
  width: 500px;
  float: left;
  overflow: hidden;
   
}

 article p {
     font-family:sans-serif;
            font-size:18px;
            
 }
	     .cen{color:white;position:absolute;top:40%;width:100%;text-align:center;text-shadow:5px 5px 10px #000000;font-size:60px;}
         .con .d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom .nav nav-pills li a{
            color:white;
            font-size:20px;
        }
         
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
            color:white;
            z-index:2;
        }
        .gotopbtn:hover{
            color:black;
        }
    </style>
</head>
<body>

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
                <li><a class="dropdown-item" href="invoices.aspx">Previous Purchases</a></li>
                <li class="logout">
                   <form runat="server">
                       <asp:Button runat="server" ID="Button6" class="dropdown-item" Text="Log Out" />
                   </form>
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







         <!--header-->
        <tr><td>
           <h1 style="width:1350px;height:200px;color:white;background:url('images/backallpages.jpg');text-align:center;font-size:56px;margin-top:-26px;padding-top:60px ">About Us</h1><br /><br />
            </td></tr>
         <!--header-->


              





        <!--about content-->
           <tr>
               <td>
  
    <div class="section"style="background-color:#ddd;margin-top:-53px;">
        <div class="container1">
            <div class="content-section">
                <div class="title">
                    <h1 style="background-color:#870c0c;color:white;text-align:center">About Chbib Aluminium</h1>
                </div>
                <div class="content"style="background-color:#ddd;">             
                    <p>Chbib Aluminum is a levabese company specialized in aluminum, the main activity of the company is the trade and manufacture of aluminum. We are committed to quality, and always strive to satisfy customers in our journey that has lasted 21 years. Chbib takes on developing and empowering its employees and through that it contributes positively to creating a fair atmosphere. Chbib aims to make its clients feel valued in their business relationships, because the company sees clients' successes as its own. Chbib's vision is to remain a relevant and sustainable organization in a rapidly changing world, and to add value to all stakeholders.
                    </p>
                    <div class="button">
                        <a href="ourprojects.aspx" style="background-color:#870c0c;color:white;">Our projects</a>
                    </div>
                </div>
            </div>
             </div>
             <div class="image-section"style="background-color:#ddd;">
                   <img src="images/aboutimg.jpg" class="auto-style1" />
               </div>
      
    </div>
   <br />
               
    <article>
    <div class="inner-shell">
        <div class="left" style="height: 275px;background-color:#ddd;"">
            
            
            <h2 style="background-color:#870c0c;color:white;text-align:center;">Mission</h2>
                <br />
                
                <p>"Meeting the needs of customers in the local market at competitive prices, and being delivered in a way that exceeds their expectations. </p>
            </div>
        <div class="right" style="height: 275px; background-color:#ddd;"">
            <h2 style="background-color:#870c0c;color:white;text-align:center">Vision</h2>
            <br />
                <p>
                   Our vision is for Chbib Alminium to become a class-leading company that shows personal attention to its customers as many small businesses, while providing stability, security and financial strength of the large business
                </p>
        </div>
    </div>
</article>
    <br />
     <article>
    <div class="inner-shell">
        <div class="left" style="height: 275px; background-color:#ddd">
            
            
            <h2 style="background-color:#870c0c;color:white;text-align:center;">values
</h2>
                <br />
                
                <p>The values ​​we aim for are Excellence in products quality and services Continuous improvement of production and processes Creating value for all stakeholders Leadership in safety, environmental and regulatory requirements. Trust, Respect, Integrity and Ethics </p>
            </div>
        <div class="right" style="height: 275px;background-color:#ddd;">
            <h2 style="background-color:#870c0c;color:white;text-align:center">Clientele</h2>
            <br />
                <p>
                Chbib Aluminium has a wide clientele base in Lebanon  Our customers are:<br /></p>
                <ul><li>Engineering enterprises of all sizes</li>
              <li>  The public sector</li>
              <li>  Small companies</li>
              <li>  The construction and building sector</li>
              <li>  Infrastructure development enterprises</li></ul>
        </div>
    </div>
</article>
                   <br />
     <article>
    <div class="inner-shell">
        <div class="left" style="height: 275px; background-color:#ddd">
            
            
            <h2 style="background-color:#870c0c;color:white;text-align:center;">Customer Service
</h2>
                <br />
                
                <p>Customer service Recognized for long-standing customer relationships, chbib Aluminum's "Experience With Confidence" talks about our commitment to excellence in customer service. “Our vision was to remain close and responsive to our customers and to be able to support them with the resources and services available as part of a larger company.</p>
            </div>
        <div class="right" style="height: 275px;background-color:#ddd;">
            <h2 style="background-color:#870c0c;color:white;text-align:center">Market Service </h2>
            <br />
                <p>
                By a manufacturing factory strategically located in Lebanon, we continue to expand our capabilities, enabling us to better serve many large and small manufacturing companies as well as serve customers in everything related to aluminum.</p>
        </div>
    </div>
</article>
</td>
</tr>
<!-- about end content-->











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
