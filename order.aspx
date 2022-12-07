<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="order.aspx.vb" Inherits="ChbibAuminium.order" %>

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    
<style>
     #form1{
            width:900px;
            margin-left:auto;
            margin-right:auto;
           
        }

        .auto-style1 {
            width: 568px;
            height: 137px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .container4{
            margin-left:25px;
        }
        

       .btnsubmit{
            border:none;
            outline:none;
            height:40px;
            font-size:16px;
            color:#fff;
            background-color:#870c0c;
            cursor:pointer;
            border-radius:20px;
            transition:.3s ease-in-out;
            margin-left:110px
        }
       .btn{
          background-color:#870c0c;
          margin-right:5px;
          margin-left:5px;
          color:#fff;

       }
        .btnsubmit:hover{
            background-color:red;

        }
        ::placeholder{
            color:rgba(255,255,255,.5);
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
           color:blue;
        }
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
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
        #GridView1
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            background-color: #fff;
        }
        #GridView1 th
        {
            background-color: #B8DBFD;
            color: #333;
            font-weight: bold;
        }
        #GridView1 th, #GridView1 td
        {
            padding: 3px;
            border: 1px solid #ccc;
        }
        #GridView1, #GridView1 #GridView1 td
        {
            border: 0px solid #ccc;
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
        img.image {
            width :90px;
            height:70px;
        }
        .gotopbtn:hover{
            color:black;
        }
    </style>
</head>
<body>
   <form  runat="server">    

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
  </tr><!--end nav-->





      <!--header-->
        <tr><td>
           <h1 style="width:1350px;height:200px;color:white;background:url('images/backallpages.jpg');text-align:center;font-size:56px;margin-top:-26px;padding-top:60px ">Order Your products</h1><br /><br />
            </td></tr>
         <!--header-->
        
                <!-- Footer -->
      </table>
        <div id="form1" class="container4">
           
            <br /><br />
             &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label runat="server" >Category</asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="255px">  
                <asp:ListItem Value=""> Select the Category</asp:ListItem> 
                <asp:ListItem>Aluminium</asp:ListItem>
                <asp:ListItem>Accessories</asp:ListItem>
                <asp:ListItem>Glass </asp:ListItem>
            </asp:DropDownList>
           
           




           
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btnsubmit" runat="server" Text="Search" Width="532px" Height="32px" />
            <br />
            <br />
        </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
             OnPageIndexChanging="OnPageIndexChanging" OnSelectedIndexChanged = "OnSelectedIndexChanged" PageSize="10">
            <Columns>
                <asp:BoundField DataField="iditem" HeaderText="#" />
                <asp:BoundField ItemStyle-Width="130px" DataField="name" HeaderText="Name" />
                <asp:BoundField ItemStyle-Width="130px" DataField="color" HeaderText="Color" />
                <asp:BoundField ItemStyle-Width="130px" DataField="brand" HeaderText="Brand" />
                <asp:BoundField ItemStyle-Width="130px" DataField="length" HeaderText="Length" />
                <asp:BoundField ItemStyle-Width="130px" DataField="width" HeaderText="Width" />
                <asp:BoundField ItemStyle-Width="130px" DataField="tickness" HeaderText="Thickness" />
                <asp:BoundField ItemStyle-Width="130px" DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField ItemStyle-Width="130px" DataField="price" HeaderText="Price" />
                <asp:ImageField ItemStyle-Width="50px" ItemStyle-Height="50px" ControlStyle-CssClass="image" dataimageurlfield="image" HeaderText="Image"  />
                <asp:ButtonField buttontype="Button" ControlStyle-CssClass="btn" commandname="Select" ItemStyle-Width="130px" HeaderText="Add To Cart" Text="Add To Cart" />
            </Columns>

        </asp:GridView>
        <div id="form1" class="container4">
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="btnsubmit" runat="server" Text="Check Out" Width="532px" Height="32px" />
        </div>
 
    
         <br /><br />
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
