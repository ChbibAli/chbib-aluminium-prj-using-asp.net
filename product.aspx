<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="product.aspx.vb" Inherits="ChbibAuminium.product" %>

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
            *{
    margin:0;
    padding:0;
    box-sizing:border-box;}
        .images12345{
            width:100%;
            height:350px
        }
        .album py-5 bg-light{
            background-color:grey;
        }
     ul {
  list-style-type: none;
}

li {
  display: inline-block;
}
        .brown {
  content: "";
  width: 13px;
  height: 13px;
  background-color:brown;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}

.black {
  content: "";
  width: 13px;
  height: 13px;
  background-color: #000000;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}

.white {
  content: "";
  width: 13px;
  height: 13px;
  background-color:white;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}

.grey {
  content: "";
  width: 13px;
  height: 13px;
  background-color:grey;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}
.one{
    height:5px;
    border:none;
    border-radius:10px;
    width:370px;
    background:linear-gradient(to left,black, red);
}
.two{
   height:5px;
    border:none;
    border-radius:10px;
    width:190px;
    background:linear-gradient(to left,black, red);
}
.three{
    height:5px;
    border:none;
    border-radius:10px;
    width:295px;
    background:linear-gradient(to left,black, red);
}
.four{
   height:5px;
    border:none;
    border-radius:10px;
    width:160px;
    background:linear-gradient(to left,black, red);
}
.five{
   height:5px;
    border:none;
    border-radius:10px;
    width:220px;
    background:linear-gradient(to left,black, red);
}
.six{
   height:5px;
    border:none;
    border-radius:10px;
    width:150px;
    background:linear-gradient(to left,black, red);
}

      .blue{
  content: "";
  width: 13px;
  height: 13px;
  background-color:blue;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}

.red {
  content: "";
  width: 13px;
  height: 13px;
  background-color:red;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}

.yellow {
  content: "";
  width: 13px;
  height: 13px;
  background-color:yellow;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
}
.a2005 {
  content: "";
  width: 13px;
  height: 13px;
  background-color:#0d2c11;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0);
  transition: 0.3s all ease;
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
                  .con .d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom .nav nav-pills li a{
            color:white;
            font-size:20px;
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
           <h1 style="width:1350px;height:200px;color:white;background:url('images/backallpages.jpg');text-align:center;font-size:56px;margin-top:-26px;padding-top:60px ">Product</h1><br /><br />
            </td></tr>
         <!--header h1 end-->
        




        <!--titre start-->
        <tr><td>
       <div class="titre">
        <section style="width:1408px;margin:-58px;margin-bottom:0px;height:80px;text-align:center"> 
           

            <br />
            <a href="#al"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp Aluminium Album&nbsp</i></a>
            <a href="#ac"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp Accessories Album&nbsp</i></a>
            <a href="#gl"><i class="far fa-hand-point-right" style="font-size:20px">&nbsp Glass Album&nbsp</i></a>
            </section>
        </div>
       
           </td></tr><!--titre end-->





        <!--aluminium Products start-->
                 <tr><td>
                    <br />
<div class="section-title1">
             <h3 id="al">Aluminium Tubes</h3>

</div>
                     <br />
</td></tr>
        <tr><td>
      <div class="card-group">
  <div class="card">
    <a href="aluminium/f.jpg"><img src="aluminium/f.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">F tube</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6m</li>
            <li style="margin-left:20px;">6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Jaber-aluminium</li>
        </ul>

    </div>
  </div>&nbsp
  <div class="card">
   <a href="aluminium/rack-image.jpeg"><img src="aluminium/rack-image.jpeg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Rack Tube</h5>
       <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6m</li>
            <li style="margin-left:20px;">6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Jaber-aluminium</li>
        </ul>
     
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="aluminium/tube33.jpg"><img src="aluminium/tube33.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Tube 3*3</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6m</li>
            <li style="margin-left:20px;">6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Siral</li>
        </ul>
     

    </div>
  </div>
</div><br />



<div class="card-group">
  <div class="card">
    <a href="aluminium/tube410.jpg"><img src="aluminium/tube410.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Tube 4*10</h5>
         <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Siral</li>
        </ul>
     
    </div>
  </div>&nbsp
  <div class="card">
   <a href="aluminium/tube210.jpg"><img src="aluminium/tube210.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Tube 2*10</h5>
      <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
           
            <li >6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Siral</li>
        </ul>
    
    

     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="aluminium/tube1010.jpg"><img src="aluminium/tube1010.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Tube 10*10</h5>
      <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6m</li>
           
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Siral</li>
        </ul>
     
         

    </div>
  </div>
</div><br />

           
            
<div class="card-group">
  <div class="card">
    <a href="aluminium/grip-2000.jpg"><img src="aluminium/grip-2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Grip-2000</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
        
    </div>
  </div>&nbsp
  <div class="card">
   <a href="aluminium/shungle-2000.jpg"><img src="aluminium/shungle-2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Shungle-2000</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="aluminium/side-block-2000.jpg"><img src="aluminium/side-block-2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Side-Block-2000</h5>
     <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
    
    </div>
  </div>
</div><br />

            

<div class="card-group">
  <div class="card">
    <a href="aluminium/u-2000.jpg"><img src="aluminium/u-2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">U-2000</h5>
     <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6m</li>
            <li style="margin-left:20px;">6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
     
    </div>
  </div>&nbsp
  <div class="card">
   <a href="aluminium/rail-2000.jpg"><img src="aluminium/rail-2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Rail-2000</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="aluminium/drawer.jpg"><img src="aluminium/drawer.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Drawer-Tube</h5>
      <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
      

    </div>
  </div>
</div><br />

     


            <div class="card-group">
  <div class="card">
    <a href="aluminium/zeina-tube.jpg"><img src="aluminium/zeina-tube.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Zeina Tube</h5>
     <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Aluxal</li>
        </ul>
    
    </div>
  </div>&nbsp
  <div class="card">
   <a href="aluminium/whiteboard.jpg"><img src="aluminium/whiteboard.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">White Aluminium Board</h5>
        <ul><li><b>Length:</b></li>
            <li>280cm</li>
        </ul>
        <ul><li><b>Width:</b></li>
            <li>130cm</li>
        </ul>
        <ul>
            <li><b>Thickness:</b></li>
            <li>4mm</li>
        </ul>
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="aluminium/brown-board.png"><img src="aluminium/brown-board.png" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Brown Aluminium Board</h5>
        <ul><li><b>Length:</b></li>
            <li>280cm</li>
        </ul>
        <ul><li><b>Width:</b></li>
            <li>130cm</li>
        </ul>
        <ul>
            <li><b>Thickness:</b></li>
            <li>4mm</li>
        </ul>
    

    </div>
  </div>
</div><br />




   <div class="card-group">
  <div class="card">
    <a href="aluminium/blackboard.jpg"><img src="aluminium/blackboard.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Black Aluminium Board</h5>
   <ul><li><b>Length:</b></li>
            <li>280cm</li>
        </ul>
        <ul><li><b>Width:</b></li>
            <li>130cm</li>
        </ul>
        <ul>
            <li><b>Thickness:</b></li>
            <li>4mm</li>
        </ul>
      

    </div>
  </div>&nbsp
  <div class="card">
   <a href="aluminium/whiteboard.jpg"><img src="aluminium/beigeboard.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Beige Aluminium Board</h5>
        <ul><li><b>Length:</b></li>
            <li>280cm</li>
        </ul>
        <ul><li><b>Width:</b></li>
            <li>130cm</li>
        </ul>
        <ul>
            <li><b>Thickness:</b></li>
            <li>4mm</li>
        </ul>

    </div>
  </div>&nbsp
  <div class="card">
    <a href="aluminium/silverboard.jpg"><img src="aluminium/silverboard.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Silver Aluminium Board</h5>
        <ul><li><b>Length:</b></li>
            <li>280cm</li>
        </ul>
        <ul><li><b>Width:</b></li>
            <li>130cm</li>
        </ul>
        <ul>
            <li><b>Thickness:</b></li>
            <li>4mm</li>
        </ul>


    </div>
  </div>
</div><br />
            <div class="card-group" style="width:445px">
  <div class="card" style="width:405px">
    <a href="aluminium/glazing-image.jpeg"><img src="aluminium/glazing-image.jpeg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd;width:445px">
      <h5 class="card-title" style="text-align:center;font-size:26px">Tube 4*4</h5>
    <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Tube length:</b></li>
            <li>6.6m</li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Siral</li>
        </ul>
      

    </div>
  </div>&nbsp
       </div><br />


            </td></tr>
            <!--aluminium Products end-->







         <!--Accessories  products content start-->
        <tr><td>
 <div class="section-title1">
             <h3 id="ac">Accessories</h3>

 </div><br />
</td></tr>
        <tr><td>
      <div class="card-group">
  <div class="card">
    <a href="accessories/arm-limiter.jpg"><img src="accessories/arm-limiter.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Arm Limiter</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul>
      
    </div>
  </div>&nbsp
  <div class="card">
   <a href="accessories/aluminium-window-doors-hinge-2000.jpg"><img src="accessories/aluminium-window-doors-hinge-2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Window-Door-Hinge-2000</h5>
       <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul>

    
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="accessories/corner-brevetto.jpg"><img src="accessories/corner-brevetto.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Corner-Brevetto</h5>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul><br /><br />
     

    </div>
  </div>
</div><br />



<div class="card-group">
  <div class="card">
    <a href="accessories/finger-latch.jpg"><img src="accessories/finger-latch.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Finger Latch</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul>
      
    </div>
  </div>&nbsp
  <div class="card">
   <a href="accessories/hundle2000.jpg"><img src="accessories/hundle2000.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Hundle-2000</h5>
       <ul>
          <li><b>COLOR:</b></li>
        
          <li class="black"></li>
          <li class="white" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul>
  
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="accessories/kds-pronext.jpg"><img src="accessories/kds-pronext.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Measure Tape 5.5m</h5>
       <ul>
          <li><b>COLOR:</b></li>
          <li class="red"></li>
          <li class="blue" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="yellow" style="margin-left:20px;"></li>
        </ul>
         <ul><li><b>Brand:</b></li>
            <li>KDS</li>
        </ul>
      

    </div>
  </div>
</div><br />

           
            
<div class="card-group">
  <div class="card">
    <a href="accessories/silicone-den-braven.jpg"><img src="accessories/silicone-den-braven.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Silicone</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
             <li class="a2005" style="margin-left:20px;"></li>
        </ul>
         <ul><li><b>Brand:</b></li>
            <li>DEN BRAVEN</li>
        </ul>
      
    </div>
  </div>&nbsp
  <div class="card">
   <a href="accessories/stainless-hydrolic-hinge.jpg"><img src="accessories/stainless-hydrolic-hinge.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Stainless-hydrolic-Hinge</h5>
         <ul><li><b>Brand:</b></li>
            <li>Gress Uni</li>
        </ul><br /><br />
    
    

    </div>
  </div>&nbsp
  <div class="card">
    <a href="accessories/win-door-hundle-double-folda.jpg"><img src="accessories/win-door-hundle-double-folda.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Door-Hundle-Double</h5>
      <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul>
      

    </div>
  </div>
</div><br />

            
<div class="card-group">
  <div class="card">
    <a href="accessories/window-door-hundle-single-folda.jpg"><img src="accessories/window-door-hundle-single-folda.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Window-Hundle-single</h5>
       <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>Brand:</b></li>
            <li>Folda</li>
        </ul>
   
    </div>
  </div>&nbsp
  <div class="card">
   <a href="accessories/613104.0.jpg"><img src="accessories/613104.0.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Chipboard-Screw-1000 pieces</h5>
       <ul>
          <li><b>SIZE:</b></li>
          <li class="bg">7cm</li>
        </ul>
        <ul>

          <li><b>COLOR:</b></li>
        
          <li class="black"></li>
          <li class="grey" style="margin-left:20px;"></li>
        </ul>
         <ul><li><b>Brand:</b></li>
            <li>Servo Mouting</li>
        </ul>
   
    
    </div>
  </div>&nbsp
  <div class="card">
    <a href="accessories/screw black 81 1 4.jpg"><img src="accessories/screw black 81 1 4.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Screw Pan Head-1000Pieces</h5>
      <ul>
          <li><b>SIZE:</b></li>
          <li class="bg">1cm</li>
        </ul>
        <ul>

          <li><b>COLOR:</b></li>
        
          <li class="black"></li>
          <li class="grey" style="margin-left:20px;"></li>
        </ul>
         <ul><li><b>Brand:</b></li>
            <li>Servo Mouting</li>
        </ul>
     

    </div>
  </div>
</div><br />

            

<div class="card-group">
  <div class="card">
    <a href="accessories/screws-stainless-1cm-6 3 4.jpg"><img src="accessories/screws-stainless-1cm-6 3 4.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Self Tapping Screw-1000 pieces</h5>
         <ul>
          <li><b>SIZE:</b></li>
          <li class="bg">1cm</li>
        </ul>
        <ul>

          <li><b>COLOR:</b></li>
          <li class="black"></li>
          <li class="grey" style="margin-left:20px;"></li>
        </ul>
     
    </div>
  </div>&nbsp
  <div class="card">
   <a href="accessories/screws stainless 3 10 7cm.jpg"><img src="accessories/screws stainless 3 10 7cm.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Chipboard-Screw-1000 pieces</h5>
         <ul>
          <li><b>SIZE:</b></li>
          <li class="bg">10cm</li>
        </ul>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="black"></li>
          <li class="grey" style="margin-left:20px;"></li>
        </ul>
     
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="accessories/DUB893_a0.jpg"><img src="accessories/DUB893_a0.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Screw With Washer Attached-1000pieces</h5>
        <ul>
          <li><b>SIZE:</b></li>
          <li class="bg">4cm</li>
        </ul>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="black"></li>
          <li class="grey" style="margin-left:20px;"></li>
        </ul>
     

    </div>
  </div>
  
</div><br />




        <div class="card-group" style="width:900px">
  <div class="card" style="width:445px">
    <a href="accessories/glazing-image.jpeg"><img src="accessories/glazing-image.jpeg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd;width:445px">
      <h5 class="card-title" style="text-align:center;font-size:26px"> Chipboard-Screw-1000 pieces</h5>
         <ul>
          <li><b>SIZE:</b></li>
          <li class="bg">6cm</li>
        </ul>
        <ul>

          <li><b>COLOR:</b></li>
          <li class="black"></li>
          <li class="grey" style="margin-left:20px;"></li>
        </ul>
     
    </div>
  </div>&nbsp           
  <div class="card" style="width:445px">
    <a href="accessories/gl.jpeg"><img src="accessories/gl.jpeg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd;width:445px">
      <h5 class="card-title" style="text-align:center;font-size:26px">Glaizing-Rubber</h5>
                  <ul><li><b>SIZE:</b></li>
          <li class="bg">2.5mm</li>
          <li class="bg" style="margin-left:20px;">3mm</li>
          <li class="bg" style="margin-left:20px;">3.5mm</li>
          <li class="bg" style="margin-left:20px;">4mm</li>
        </ul>
    <ul>
          <li><b>COLOR:</b></li>
          <li class="black"></li>
        </ul>
      


    </div>
  </div>
             </div><br />
  

            </td></tr>
        <!--Accessories products end-->
       






        <!--glass products start-->
             <tr><td>
 <div class="section-title1">
             <h3 id="gl">Glass</h3>

 </div><br />
</td></tr>



        <tr><td>
              <div class="card-group">
  <div class="card">
    <a href="glass/Clear-Bronze-Nashiji-Wired-Glass.jpg"><img src="glass/Clear-Bronze-Nashiji-Wired-Glass.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Bronze Wire Glass</h5>
        <ul><li><b>glass length:</b></li>
            <li>3m</li>
        </ul>
        <ul><li><b>glass Width:</b></li>
            <li>2m</li>
        </ul>
       <ul><li><b>Thickness:</b></li>
            <li >3mm</li>
            <li style="margin-left:20px;">4mm</li>
        </ul>
   
    </div>
  </div>&nbsp
  <div class="card">
   <a href="glass/green-wire-glass.jpg"><img src="glass/green-wire-glass.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Green Wire Glass</h5>
        <ul><li><b>glass length:</b></li>
            <li>3m</li>
        </ul>
        <ul><li><b>glass Width:</b></li>
            <li>2m</li>
        </ul>
       <ul><li><b>Thickness:</b></li>
            <li >3mm</li>
            <li style="margin-left:20px;">4mm</li>
        </ul>
        

        
     
    </div>
  </div>&nbsp
   <div class="card">
    <a href="glass/HTB1CGp1bK38SeJjSZFPq6A_vFXaQ.jpg"><img src="glass/HTB1CGp1bK38SeJjSZFPq6A_vFXaQ.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">White Wire Glass</h5>
        <ul><li><b>glass length:</b></li>
            <li>3m</li>
        </ul>
        <ul><li><b>glass Width:</b></li>
            <li>2m</li>
        </ul>
        <ul><li><b>Thickness:</b></li>
            <li >3mm</li>
            <li style="margin-left:20px;">4mm</li>
        </ul>

    </div>
  </div>&nbsp
  
</div><br />





                 <div class="card-group">
  <div class="card">
    <a href="glass/1344823988.jpg"><img src="glass/1344823988.jpg"class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Black Glass</h5>
        <ul><li><b>glass length:</b></li>
            <li>3m</li>
        </ul>
        <ul><li><b>glass Width:</b></li>
            <li>2m</li>
        </ul>
       <ul><li><b>Thickness:</b></li>
            <li >3mm</li>
            <li style="margin-left:20px;">4mm</li>
        </ul>

    </div>
  </div>&nbsp
  <div class="card">
   <a href="glass/bronze glass.jpg"><img src="glass/bronze glass.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">Bronze Glass</h5>
        <ul><li><b>glass length:</b></li>
            <li>3m</li>
        </ul>
        <ul><li><b>glass Width:</b></li>
            <li>2m</li>
        </ul>
       <ul><li><b>Thickness:</b></li>
            <li >3mm</li>
            <li style="margin-left:20px;">4mm</li>
        </ul>
        
 
        
     
    </div>
  </div>&nbsp
  <div class="card">
    <a href="glass/glass tranparent.jpg"><img src="glass/glass tranparent.jpg" class="card-img-top" style="width:445px;height:350px;border-style:solid;border-color:black" alt="..."/></a>
    <div class="card-body" style="background-color:#ddd">
      <h5 class="card-title" style="text-align:center;font-size:26px">White  Glass</h5>
        <ul>
          <li><b>COLOR:</b></li>
          <li class="brown"></li>
          <li class="black" style="margin-left:20px;"></li>
          <li class="white" style="margin-left:20px;"></li>
          <li class="grey" style="margin-left:20px;"></li>
          <li class="a2005" style="margin-left:20px;"></li>
        </ul>
        <ul><li><b>glass length:</b></li>
            <li>3m</li>
        </ul>
        <ul><li><b>glass Width:</b></li>
            <li>2m</li>
        </ul>
        <ul><li><b>Thickness:</b></li>
            <li >3mm</li>
            <li style="margin-left:20px;">4mm</li>
        </ul>
 
    </div>
  </div>&nbsp
  
</div><br />
            </td></tr>
         <!--glass products end-->





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
            </form>
</body>
</html>

