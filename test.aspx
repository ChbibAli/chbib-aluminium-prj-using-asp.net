<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="test.aspx.vb" Inherits="ChbibAuminium.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
    <form id="form1" runat="server">
       <table style="margin-right:auto;margin-top:0;margin-bottom:0;margin-left:1px;">  
           <tr>
            <td>
               <div class="titre">
        <section style="height:60px;margin-bottom:0px;text-align:center;"> 
           <br />
            <!-- margin-top:-57px; !-->
            <i class="far fa-question-circle" style="font-size:20px">&nbsp This service gives you the opportunity to know the approximate price of the piece you wants to manufacture 
                (doors, windows and facades) by choosing the aluminium
                in addition to the type of glass and the color of the glass as well you needs to put the length and approximate width of the piece. &nbsp<i class="far fa-question-circle" style="font-size:20px"></i>
            </i><br />
            </section>
        </div> 
            </td>
           </tr>
           <tr>
               <td>
                    <select onchange="document.getElementById('phot').src=this.options[this.selectedIndex].value" class="auto-style7">
                     <option value="">Select aluminium type</option>

                     <option  value="drop/wejha6.jpg">Facades</option>           
                     <option  value="drop/win3.jpg">Window</option>                 
                     <option value="drop/win9.jpg"> Door</option>       
                 </select>
               </td>
           </tr>
           <tr>
               <td>

               </td>
           </tr>

       </table>
    </form>
</body>
</html>
