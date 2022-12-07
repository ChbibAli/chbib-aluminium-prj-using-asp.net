<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="add_product.aspx.vb" Inherits="ChbibAuminium.add_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>

 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
         height: 23px;
         width: 595px;
     }
        .auto-style3 {
         height: 28px;
         width: 595px;
     }
     .auto-style4 {
         height: 28px;
         width: 171px;
     }
     .auto-style5 {
         width: 171px;
     }
     .auto-style6 {
         height: 23px;
         width: 171px;
     }
     .auto-style7 {
         width: 595px;
     }
     .auto-style8 {
         margin-left: 0px;
     }
     .auto-style9 {
         width: 184px;
     }
     .a{
         margin-top:10px;
     }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <div style="background-color:#870c0c;font-size:xx-large;color:white;" align="center">
            insert/update/delete->Product
            </div>
            <div>
            <asp:Label ID="Label16" CssClass="auto-style5" runat="server" Font-Size="Medium" Font-Bold="true"  Text="Return to HomePage : "></asp:Label>

            <asp:Button ID="Button7" runat="server" Text="LogOut" CssClass="a" BackColor="#870C0C" ForeColor="White" Height="33px" Width="78px" />
            <br /></div>
    <div align="center" style="padding:15px">

        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="iditem"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtitem" runat="server" Font-Size="Medium" Width="244px" Enabled="False" EnableTheming="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="category"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtcategory" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Medium" Text="name"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtname" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="color"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtcolor" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="brand"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtbrand" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="length"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtlength" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" Text="width"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtwidth" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Text="thickness"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtthickness" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" Text="quantity"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtquantity" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Text="Price"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtprice" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>
            </tr>

           
<tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="image"></asp:Label>
                </td>
               <td class="auto-style2">
                    <asp:TextBox ID="txtimage" runat="server" Font-Size="Medium" Width="244px"></asp:TextBox>
                </td>

            </tr>


            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Font-Strikeout="False" ForeColor="White" Text="insert" BackColor="#870C0C" />
                    <asp:Button ID="Button3" runat="server" BackColor="#870C0C" Font-Size="Medium" ForeColor="White" Text="Delete" OnClick="Button3_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="#870C0C" Font-Size="Medium" ForeColor="White" Text="Update" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">

                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Text="enter id product"></asp:Label>
                    

                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtid" runat="server" Width="135px" CssClass="auto-style8"></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" Text="load" BackColor="#870C0C" Font-Size="Medium" ForeColor="White" CssClass="auto-style8" />
                    </td>
                <td>
                    &nbsp;</td>

                
            </tr>
           
        </table>
        </div>
        <div style="background-color:#870c0c;font-size:xx-large;color:white;" align="center">
          Orders Update Status 
    </div>
            <br />
        <table>
            <tr>
                <td class="auto-style9">
                     
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter IdOrder"></asp:Label>
                     
                 </td>
                <td class="auto-style5">

                    <asp:TextBox ID="txtidorder" runat="server" Height="29px" Width="163px"></asp:TextBox>

                </td>
                <td>

                    <asp:Button ID="Button8" runat="server" Height="35px" Text="load" BackColor="#870C0C" ForeColor="White" Width="94px" />

                </td>
               
            </tr>
           <tr>
               <td>

                   <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter New Status"></asp:Label>

               </td>
               <td>

                   <asp:TextBox ID="TextBox1" runat="server" Width="163px" Height="31px"></asp:TextBox>

               </td>
               <td>
                   
                   <asp:Button ID="Button9" runat="server" Height="35px" BackColor="#870C0C" ForeColor="White" Text="Update" Width="92px" />
                   
               </td>
           </tr>
        </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br /> 
        </form>
 </body>
</html>