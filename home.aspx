<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="ChbibAuminium.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    
    <title></title>

     <!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"/>
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
  rel="stylesheet"/>  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style>
        body{background-color:white;
             width:1350px;
        }
        *{
    margin:0;
    padding:0;
    box-sizing:border-box;}


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
      background:grey;

  }
  .heading a:hover{
      background:#fff;
      color:#333;
  }
  .banner{position:relative;width:100%;margin:0 auto;}

  .banner img{width:100%;}

        .auto-style2 {
            left: 3px;
            top: 2px;
            width: 237px;
            height: 114px;
        }


         .carousel-item{
            max-height:550px;
            width:1350px;
        }
        






        html {
            scroll-behavior: smooth;
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




                  
               
    <!--start carsoul=slider-->
                   <tr><td>
  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" style="margin-top:-25px">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/wejha7.png" class="d-block w-100" alt="..."/>
     

    </div>
    <div class="carousel-item">
      <img src="images/homepage.jpg" class="d-block w-100" alt="..."/>
    
    </div>
    <div class="carousel-item">
      <img src="images/homepage1.jpg"  class="d-block w-100" alt="..."/>
    
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div> <br /><br />
            </td></tr> <!--end carsoul=slider-->
             





                 <tr><td>
    <h1 style="background-color:#870c0c;color:white;text-align:center;font-size:24px;height:60px">Our products</h1>                      
                     <!-- START THE FEATURETTES -->
   <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row" style="margin-left:158px;">
      <div class="col-lg-4" >
        <img  src="images/homealuminium.jpg" class="bd-placeholder-img rounded-circle" width="140" height="140" />

        <h2>Aluminium</h2>
        <p>                                                   </p>
        <p><a class="btn btn-secondary" href="product.aspx#al">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
      <img  src="images/homeaccessories.jpg" class="bd-placeholder-img rounded-circle" width="140" height="140" />

        <h2>Accessories</h2>
        <p>                                                             </p>
        <p><a class="btn btn-secondary" href="product.aspx#ac">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
      <img  src="images/homeglass.png" class="bd-placeholder-img rounded-circle" width="140" height="140" />

        <h2>Glass</h2>
        <p>                                                                       </p>
        <p><a class="btn btn-secondary" href="product.aspx#gl">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider"/>
    <div class="row featurette">
      <div class="col-md-7">
        <p class="lead" style="color:black;">Chbib Aluminum has earned a good reputation. Through the continuous investments, we continue to expand our market and products, expanding our resources and talents in order to provide our growing client base with one of the most comprehensive ranges of capabilities in the aluminum field, selling and manufacturing services.</p>
      </div>
      <div class="col-md-5">
      <img src="images/Alu_wint_secteur_730x350.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" style="width:450px; height:350px" />


      </div>
    </div>

    <hr class="featurette-divider"/>

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Market Service </h2>
        <p class="lead" style="color:black"> By a manufacturing factory strategically located in Lebanon, we continue to expand our capabilities, enabling us to better serve many large and small manufacturing companies as well as serve customers in everything related to aluminum.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img src="images/homecustomer.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" style="width:450px; height:450px" />

      </div>
    </div>

    <hr class="featurette-divider"/>

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Customer Service</h2>
        <p class="lead" style="color:black">Customer service Recognized for long-standing customer relationships, chbib Aluminum's "Experience With Confidence" talks about our commitment to excellence in customer service. “Our vision was to remain close and responsive to our customers and to be able to support them with the resources and services available as part of a larger company. This sets us apart from the competition. We can maintain the close relationships and familiarity that attract customers and support them with the resources it provides.<br /> -Youssef Chbib (president of chbib company)</p>
      </div>
      <div class="col-md-5">
       <img src="images/customer service.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" style="width:450px; height:350px" />

      </div>
    </div>

    <hr class="featurette-divider"/>

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->
 </td></tr>






               <!--why choosing us-->
               <tr><td>    <main> 
    <div class="container px-4 py-5" id="icon-grid">
    <h2 class="pb-2 border-bottom">WHY CHOOSING US</h2>

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">
      <div class="col d-flex align-items-start">
<i class="fas fa-star"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">Technical research</h4>
          <p>Technical research team that are always on the move seeking new aluminum profiles, installation techniques and systems.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
       <i class="fas fa-user"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">Studies of Projects</h4>
          <p>
Thorough studies of projects that requires information acquisition, calculations, planning, testing and assessment.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
       <i class="fas fa-cog"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">Professional workers</h4>
          <p>Professional workers that support chbib clients with all technical specifications, structural plans, calculations.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
       <i class="fas fa-industry"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">21 Years of Experience</h4>
          <p>Experienced workshop and on site supervisors along with highly trained craftsmen and installation workers.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
       <i class="fas fa-certificate"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">Honest & Dependable</h4>
          <p>We do business honestly and effectively to achieve high quality and recognition.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <i class="fas fa-shield-alt"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">Keep pace with development</h4>
          <p>Interest in following up foreign companies that constantly supply chbib with the latest achievements and technological progress.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
       <i class="fab fa-product-hunt"style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">quality of products</h4>
          <p>Paying attention to the quality of products and setting thoughtful prices.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <i class="fas fa-tachometer-alt" style="color:#870c0c"></i>&nbsp
        <div>
          <h4 class="fw-bold mb-0">Speed in meeting the needs of customers</h4>
          <p>Speed in meeting the needs of customers,and providing services in the best possible way</p>
        </div>
      </div>
    </div>
  </div> </main> </td></tr>
          <!--why choosing us-->



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
