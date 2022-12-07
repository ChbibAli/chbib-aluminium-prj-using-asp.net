<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ourprojects.aspx.vb" Inherits="ChbibAuminium.Projects" %>

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
            *{
    margin:0;
    padding:0;
    box-sizing:border-box;
  }
  body{background-color:white;}
                      body{
            margin:0;
            padding:0;
        }
        .imgbox{
            width:720px;
            margin:50px auto 20px;
        }
        .imgbox img{
            width:100%;
            border:4px solid #fff;
            box-shadow:0 5px 25px rgba(0,0,0,.5);
        }
        ul.thumb{
            margin:0 auto;
            padding:0;
            display:flex;
            align-items:center;
            justify-content:center;
        }
        ul.thumb li{
            list-style:none;
            margin:0 10px;
        }
        ul.thumb li img{
          border: 4px solid #fff;
          box-shadow: 0 5px 25px rgba(0,0,0,.5);
         }
 .titre section {
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            font-size:16px;
            border-bottom:0.3px solid black;
         
            font-style:italic;
            font-weight:bold;
            background-color:#870c0c;
        }
     .titre section a i{
         color:white  ;
        
         text-decoration:none;
     }
    .titre section a i:hover{
        color:black;
    }

      .section-title1{
    border-bottom:5px solid #222; 
}
.section-title1 h3{
    display:inline-block;
    margin:0;
    padding:0;
    background-color:#222;
    color:#fff;
    height:50px;
    line-height:50px;
    text-align:center;
    padding:0px 54px;
    font-size:20px;
    font-weight:400;
    position:relative;
}
.section-title1 h3::before{
    content:"";
    position:absolute;
    left:100%;
    bottom:0;
    height:0;
    width:0;
    border:25px solid #222;
    border-top-color:transparent;
    border-right-color:transparent;
}
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
            color:white;z-index:2;
        }
        .gotopbtn:hover{
            color:black;
        }



        .one{
    height:5px;
    border:none;
    border-radius:10px;
    width:345px;
    background:linear-gradient(to left,black, red);
}
.two{
   height:5px;
    border:none;
    border-radius:10px;
    width:180px;
    background:linear-gradient(to left,black, red);
}
        .three{
    height:5px;
    border:none;
    border-radius:10px;
    width:370px;
    background:linear-gradient(to left,black, red);
}
.four{
   height:5px;
    border:none;
    border-radius:10px;
    width:200px;
    background:linear-gradient(to left,black, red);
}
        .five{
    height:5px;
    border:none;
    border-radius:10px;
    width:260px;
    background:linear-gradient(to left,black, red);
}
.six{
   height:5px;
    border:none;
    border-radius:10px;
    width:140px;
    background:linear-gradient(to left,black, red);
}
        .seven{
    height:5px;
    border:none;
    border-radius:10px;
    width:210px;
    background:linear-gradient(to left,black, red);
}
.eight{
   height:5px;
    border:none;
    border-radius:10px;
    width:115px;
    background:linear-gradient(to left,black, red);
}
</style>
     <script>
         function change() {
             document.images[1].src = "kitchens images/kit1.jpg";
         }
         function change1() {
             document.images[1].src = "kitchens images/kit2.jpg";
         }
         function change2() {
             document.images[1].src = "kitchens images/kit3.jpg";
         }
         function change3() {
             document.images[1].src = "kitchens images/kit4.jpg";
         }
         function change4() {
             document.images[1].src = "kitchens images/kit5.jpg";
         }
         function change5() {
             document.images[1].src = "kitchens images/kit6.jpg";
         }
         function change6() {
             document.images[1].src = "kitchens images/kit7.jpg";
         }
         function change7() {
             document.images[1].src = "kitchens images/kit8.jpg";
         }
         function change8() {
             document.images[1].src = "kitchens images/kit9.jpg";
         }
         function change9() {
             document.images[11].src = "win doors images/win5.jpg";
         }
         function change10() {
             document.images[11].src = "win doors images/win2.jpg";
         }
         function change11() {
             document.images[11].src = "win doors images/win3.jpg";
         }
         function change12() {
             document.images[11].src = "win doors images/win4.jpg";
         }
         function change13() {
             document.images[11].src = "win doors images/win1.jpg";
         }
         function change14() {
             document.images[11].src = "win doors images/win6.jpg";
         }
         function change15() {
             document.images[11].src = "win doors images/win7.jpg";
         }
         function change16() {
             document.images[11].src = "win doors images/win8.jpg";
         }
         function change17() {
             document.images[11].src = "win doors images/win9.jpg";
         }
         function change18() {
             document.images[21].src = "wejhat/wejha1.jpg";
         }
         function change19() {
             document.images[21].src = "wejhat/wejha2.jpg";
         }
         function change20() {
             document.images[21].src = "wejhat/wejha3.jpg";
         }
         function change21() {
             document.images[21].src = "wejhat/wejha4.jpg";
         }
         function change22() {
             document.images[21].src = "wejhat/wejha5.jpg";
         }
         function change23() {
             document.images[21].src = "wejhat/wejha6.jpg";
         }
         function change24() {
             document.images[21].src = "wejhat/wejha7.png";
         }
         function change25() {
             document.images[21].src = "wejhat/wejha8.jpg";
         }
         function change26() {
             document.images[21].src = "wejhat/wejha9.jpg";
         }
         function change27() {
             document.images[31].src = "clo/clo1.jpg";
         }
         function change28() {
             document.images[31].src = "clo/clo2.jpg";
         }
         function change29() {
             document.images[31].src = "clo/clo3.jpg";
         }
         function change30() {
             document.images[31].src = "clo/clo4.jpg";
         }
         function change31() {
             document.images[31].src = "clo/clo5.jpg";
         }
         function change32() {
             document.images[31].src = "clo/clo6.jpg"
         }
         function change33() {
             document.images[31].src = "clo/clo7.jpg"
         }
         function change34() {
             document.images[31].src = "clo/clo8.jpg"
         }
         function change35() {
             document.images[31].src = "clo/clo9.jpeg"
         }
     </script>
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
           <h1 style="width:1350px;height:200px;color:white;background:url('images/backallpages.jpg');text-align:center;font-size:56px;margin-top:-26px;padding-top:60px ">Our Projects</h1><br /><br />
            </td></tr>
         <!--header h1 end-->
              
               



        <!--titre start-->
               <tr>
                   <td>
                       <div class="titre">
        <section style="width:1407px;margin:-57px;margin-bottom:0px;height:80px;text-align:center;background-color:#870c0c;"> 
            <br />
            <a href="#kit"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp kitchens design&nbsp</i></a>
            <a href="#wd"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp Windows-Doors &nbsp</i></a>
            <a href="#wej"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp glass windows&nbsp</i></a>
              <a href="#al"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp al-closets&nbsp</i></a>
              
            </section>
        </div><br />
                   </td>      
               </tr>
        <!--titre end-->









               <!--project content start-->
             <tr>
                 <td>
                       <div class="section-title1">
             <h3 id="kit">Aluminium kitchens design</h3>

                       </div>
                     

    <div class="imgbox" >
        <img src="kitchens images/kit4.jpg" style="width:710px;height:450px" /></div>
    <ul class="thumb">
       <li><img src="kitchens images/kit4.jpg" style="width:120px;height:70px" onmouseover="change3()"/></li>
       <li><img src="kitchens images/kit2.jpg" style="width:120px;height:70px" onmouseover="change1()"/></li>
       <li><img src="kitchens images/kit3.jpg" style="width:120px;height:70px" onmouseover="change2()"/></li>
       <li><img src="kitchens images/kit1.jpg" style="width:120px;height:70px" onmouseover="change()"/></li>
       <li><img src="kitchens images/kit5.jpg" style="width:120px;height:70px" onmouseover="change4()"/></li>
       <li><img src="kitchens images/kit6.jpg" style="width:120px;height:70px" onmouseover="change5()"/></li>
       <li><img src="kitchens images/kit7.jpg" style="width:120px;height:70px" onmouseover="change6()"/></li>
       <li><img src="kitchens images/kit8.jpg" style="width:120px;height:70px" onmouseover="change7()"/></li>
       <li><img src="kitchens images/kit9.jpg" style="width:120px;height:70px" onmouseover="change8()"/></li>
   </ul>
    <br /><br /><br />



   <div class="section-title1">
             <h3 id="wd">Aluminium Doors and Windows</h3>

   </div>

                     

    <div class="imgbox" >
        <img src="win doors images/win5.jpg" style="width:710px;height:450px" /></div>
    <ul class="thumb">
       <li><img src="win doors images/win5.jpg" style="width:120px;height:70px" onmouseover="change9()"/></li>
       <li><img src="win doors images/win2.jpg" style="width:120px;height:70px" onmouseover="change10()"/></li>
       <li><img src="win doors images/win3.jpg" style="width:120px;height:70px" onmouseover="change11()"/></li>
       <li><img src="win doors images/win4.jpg" style="width:120px;height:70px" onmouseover="change12()"/></li>
       <li><img src="win doors images/win1.jpg" style="width:120px;height:70px" onmouseover="change13()"/></li>
       <li><img src="win doors images/win6.jpg" style="width:120px;height:70px" onmouseover="change14()"/></li>
       <li><img src="win doors images/win7.jpg" style="width:120px;height:70px" onmouseover="change15()"/></li>
       <li><img src="win doors images/win8.jpg" style="width:120px;height:70px" onmouseover="change16()"/></li>
       <li><img src="win doors images/win9.jpg" style="width:120px;height:70px" onmouseover="change17()"/></li>
   </ul><br /><br /><br />


     <div class="section-title1">
             <h3 id="wej">Glass Windows Design</h3>

     </div>


    <div class="imgbox" >
        <img src="wejhat/wejha1.jpg" style="width:710px;height:450px" /></div>
    <ul class="thumb">
       <li><img src="wejhat/wejha1.jpg" style="width:120px;height:70px" onmouseover="change18()"/></li>
       <li><img src="wejhat/wejha2.jpg" style="width:120px;height:70px" onmouseover="change19()"/></li>
       <li><img src="wejhat/wejha3.jpg" style="width:120px;height:70px" onmouseover="change20()"/></li>
       <li><img src="wejhat/wejha4.jpg" style="width:120px;height:70px" onmouseover="change21()"/></li>
       <li><img src="wejhat/wejha5.jpg" style="width:120px;height:70px" onmouseover="change22()"/></li>
       <li><img src="wejhat/wejha6.jpg" style="width:120px;height:70px" onmouseover="change23()"/></li>
       <li><img src="wejhat/wejha7.png" style="width:120px;height:70px" onmouseover="change24()"/></li>
       <li><img src="wejhat/wejha8.jpg" style="width:120px;height:70px" onmouseover="change25()"/></li>
       <li><img src="wejhat/wejha9.jpg" style="width:120px;height:70px" onmouseover="change26()"/></li>
   </ul><br /><br /><br />

<div class="section-title1">
             <h3 id="al">Aluminium Closets</h3>

</div>


    <div class="imgbox" >
        <img src="clo/clo1.jpg" style="width:710px;height:450px" /></div>
    <ul class="thumb">
       <li><img src="clo/clo1.jpg" style="width:120px;height:70px" onmouseover="change27()"/></li>
       <li><img src="clo/clo2.jpg" style="width:120px;height:70px" onmouseover="change28()"/></li>
       <li><img src="clo/clo3.jpg" style="width:120px;height:70px" onmouseover="change29()"/></li>
       <li><img src="clo/clo4.jpg" style="width:120px;height:70px" onmouseover="change30()"/></li>
       <li><img src="clo/clo5.jpg" style="width:120px;height:70px" onmouseover="change31()"/></li>
       <li><img src="clo/clo6.jpg" style="width:120px;height:70px" onmouseover="change32()"/></li>
       <li><img src="clo/clo7.jpg" style="width:120px;height:70px" onmouseover="change33()"/></li>
       <li><img src="clo/clo8.jpg" style="width:120px;height:70px" onmouseover="change34()"/></li>
       <li><img src="clo/clo9.jpeg" style="width:120px;height:70px" onmouseover="change35()"/></li>
   </ul><br />
                   </td>

               </tr>
         
               <!--project content end-->
        






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
                   </table></form>
</body>
</html>
