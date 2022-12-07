<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="services.aspx.vb" Inherits="ChbibAuminium.services" %>

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
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
    <style>
       .titre section {
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            font-size:16px;
            border-bottom:0.3px solid black;
         
            font-style:italic;
            font-weight:bold;
            background-color:#870c0c;color:white;
        }  
        
    </style>
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
    <style>
        

        .table2 tr{border:2px solid black;}
     .table2  td{border:2px solid black;}
      .auto-style5 {
            width: 732px;
            height: 40px;
        }
     .select{
color:white;
background-color:#870c0c;
border:1px solid #dddddd;
cursor:pointer;
border-radius:5px;
     }
     .select:focus,
     .select:hover{
         outline:none;
         border:1px solid black;

     }
        .select option {
            background: #870c0c;
            color: white;
        }
        .auto-style7 {
         color: white;
         background-color: #870c0c;
         border: 1px solid #dddddd;
         cursor: pointer;
         border-radius: 5px;
         width: 177px;
     }
        .auto-style8 {
            width: 618px;
        }

      
        .auto-style9 {
            width: 732px;
            height: 45px;
        }

      
        </style>

        <script>
        function calculer() {
            var wid = document.getElementById("wid").value;
            var len = document.getElementById("len").value;
            var gls = document.getElementById("glasss").value;
            var typp = document.getElementById("prixal").value;
            document.getElementById("pri").value = wid * len*gls*typp+ "$";
            }      
        </script>

</head>
<body>
    <form id="form1" runat="server">
         <!-- button go top-->
      <a href="#" class="gotopbtn"><i class="fas fa-arrow-up"></i></a>
    <!-- button go top end-->
    
    
    
    <table style="margin-right:auto;margin-top:0;margin-bottom:0">      
           <!--start nav--><tr><td>
           <nav class="py-2-bg-light border-bottom" style="background-color:#333;height:60px;">
    <div class="container d-flex flex-wrap">
      <ul class="nav me-auto">
        <li class="nav-item" style="color:white;margin-top:20px;font-size:16px"><a href="tel:+961 05 461 986" style="color:white;text-decoration:none"><i class="fas fa-phone-alt"></i>  +961 05 461 986</a></li>
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
  </tr>
        <!--end nav-->

          <!--header-->
        <tr><td>
           <h1 style="width:1350px;height:200px;color:white;background:url('images/backallpages.jpg');text-align:center;font-size:56px;margin-top:-26px;padding-top:60px ">Services</h1><br /><br />
            </td></tr>
        </table>
         <!--header-->















      
<!--services content start -->  
        <table>   <tr>
     <td>
              <div style="width:1350px">
                      <div class="titre">
        <section style="margin-top:-57px;margin-bottom:0px;text-align:center;height:80px;"> 
           <br />
            <i class="far fa-question-circle" style="font-size:20px">&nbsp 
                REQUEST QUOTE &nbsp<i class="far fa-question-circle" style="font-size:20px"></i>
            </i><br />
            </section>
        </div> 
         
         <div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">        
      <div class="col-lg-7 text-center text-lg-start">
         
        <p class="col-lg-10 fs-4" style="margin-left:55px;">This allows to you to request a service such as (an appointment to take measurements, an appointment to make repairs, to preview a project and to see the details)<br /><span style="color:red">And we will  contact you by phone or by email to determine the date and time of the meeting!</span></p>
      </div>
      <div class="col-md-10 mx-auto col-lg-5">     
          <div class="form-floating mb-3">         
              <asp:DropDownList ID="DropDownList2"  placeholder="Select your service" runat="server" CssClass="select" Height="28px" Width="420px">
                  <asp:ListItem value="Choose service">Choose service</asp:ListItem>
                  <asp:ListItem value="appointment to take measurements">Appointment to take measurements</asp:ListItem>
                  <asp:ListItem Value="appointment to make repairs">Appointment to make repairs</asp:ListItem>
                  <asp:ListItem Value="Preview a project">To Preview a project</asp:ListItem>                
              </asp:DropDownList>       
          </div>
          <div >          
              <asp:TextBox ID="msg" runat="server" class="contact-form-textarea" Columns="40" placeholder="please write all the details" Rows="5" TextMode="MultiLine" Width="421px" />           
          </div>          
            <hr class="my-4"/>
          <asp:Button ID="Button7" BackColor="#870c0c" ForeColor="White" Font-Bold="true" runat="server" Text="Send" Width="229px" />
         <br />
          <asp:Label ID="labelshow2" ForeColor="Red" Font-Bold="True"  runat="server"></asp:Label>
                  
      </div>
    </div>
 </div></div>
     </td>
     </tr>
            
        </table>
        
        
        
        
        <table>
        <tr>
        <td>

            

<br /><br /><br />
<main>
  
             
                      <div class="titre">
        <section style="margin-top:-57px;margin-bottom:0px;text-align:center;height:80px;"> 
           <br />
            <i class="far fa-question-circle" style="font-size:20px">&nbsp 
                   This service gives you the opportunity to know the approximate price of the piece you wants to manufacture (Doors, Windows and Facades) by choosing the Aluminium in addition to the type of Glass and the color of the Glass as well you needs to put the length and approximate width of the piece.&nbsp<i class="far fa-question-circle" style="font-size:20px"></i>
            </i><br />
            </section>
        </div> 

    <div>
        

        <table class="table2" style="border:2px solid black">
         <tr>
               <td class="auto-style9">

         &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp   <asp:Label ID="Label2" Font-Bold="true"   runat="server" Text="Select Aluminium Type:     "></asp:Label>

                    &nbsp;&nbsp;&nbsp;

                   <select onchange="document.getElementById('phot1').src=this.options[this.selectedIndex].value" class="auto-style7">
                     <option value="drop/sina3a.jpeg">select aluminium type</option>
                     <option  value="drop/wejha6.jpeg">facades</option>           
                     <option  value="drop/win3.jpeg">window</option>                 
                     <option value="drop/win9.jpeg"> Door</option>       
                 </select>

          
                </td>

             <td rowspan="7">
<img src="drop/sina3a.jpeg" id="phot1" height="344" class="auto-style8"/>
             </td>
         </tr>

            <tr>
                <td class="auto-style9"> 
                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                  <asp:Label ID="Label10" runat="server" Font-Bold="true"  Text="Select Aluminium Quality: "></asp:Label>
                  
                    <select onchange="document.getElementById('prixal').value=this.options[this.selectedIndex].value" class="auto-style7"> 
                     <option>select aluminium quality</option>
                     <option  value="95" >facades:quality1</option>    
                        <option value="100">facades:quality2(thick)</option>    

                     <option  value="70" class="<drop/win3.jpg">window:quality1</option>     
                         <option value="75">window:quality2(thick)</option>           

                     <option value="70" value1="drop/win9.jpg">Door:quality1</option>                    
                     <option value="75">Door:quality2(thick)</option>     
                 </select>
                    &nbsp;
                 
                  
                  <asp:TextBox ID="prixal" runat="server" Width="100px" Height="23px"></asp:TextBox>
                 
                   
                  <asp:Label ID="Label7" Font-Bold="true" runat="server" Text="$(price/m)"></asp:Label>
                    
                
                    
                    
          
              </td>
            </tr>


            <tr>
              <td class="auto-style9">  
                  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                    <asp:Label ID="Label4" Font-Bold="True" runat="server" Text="Approx Length(m):"></asp:Label>
                   
                    <asp:TextBox ID="len" runat="server"></asp:TextBox>


              &nbsp;</td></tr>

             <tr><td class="auto-style9">
                  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                    <asp:Label ID="Label3" Font-Bold="True"  runat="server" Text="Approx Width(m):    "></asp:Label>
                  &nbsp;<asp:TextBox ID="wid" runat="server"></asp:TextBox>


                 </td>
             </tr>
          
            <tr>
                <td class="auto-style9">

                       &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                       <asp:Label ID="Label1" Font-Bold="True" runat="server" Text="Choose The Glass: " margin-left="10px"></asp:Label>
                &nbsp  
                   <select onchange="document.getElementById('glasss').value=this.options[this.selectedIndex].value" class="select">   
                     <option value="21">white wire glass</option>                 
                     <option value="24">bronze wire glass</option>                  
                     <option value="20">green wire glass</option>
                     <option value="13">white</option>
                     <option value="16.5">bronze</option>    
                     <option value="13.5">black</option>
                 </select>

                    <asp:TextBox ID="glasss" runat="server" Width="100px"></asp:TextBox>
                 
                       <asp:Label ID="Label8" Font-Bold="true" runat="server" Text="$(price/m)"></asp:Label>


                </td></tr>
            <tr>
                <td class="auto-style9">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Click on this button:"></asp:Label> &nbsp 
                 <asp:Button ID="txtcalcul" text="calcul" BackColor="#870C0C" ForeColor="White"  runat="server" Width="117px"/>
                    
                    
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style5" rowspan="2">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                     <asp:Label ID="Label6" Font-Bold="true" runat="server" Text="Approx Price($)"></asp:Label>
                    <asp:TextBox ID="pri" runat="server"></asp:TextBox>
                    
                    <br />
                      <asp:Label Font-Bold="true" ID="labelshow" runat="server" ForeColor="Red"/>              
                    <asp:Button ID="Button1" runat="server" Text="contact Us" Width="93px" visible="false" BackColor="#870C0C" ForeColor="White"/>
               
                </td>
            </tr>

           
             </table>
    </div>
            </main> <br /><br /></td>
        </tr></table> <br />
        <br />
        <br />








        
   
        <!--services content end-->
        
     





            <!--footer-->

    <table style="width:1350px">
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

  <section  style="background-color:black;margin-top:-47px;">
    <div class="container text-center text-md-start mt-5"  >
 
      <div class="row mt-3">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <br />
          <h6 class="text-uppercase fw-bold mb-4" style="color:white;font-size:18px">
            <i class="fas fa-gem me-3"></i>Chbib Aluminium
          </h6>
          <p style="color:white">
         The aluminum company,chbib,was
         founded in 1999 by Youssef Chbib<br /> who had acquired his experience over the past 20 years manufacturing and installing  all types of aluminum and glass in Lebanon.
          </p>
        </div> 
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <br />
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
            <br />
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
            <br />
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
</footer>
    </td></tr>
    <!--end footer-->
                   </table>   </form>
  
</body>
</html>
