<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoamB.aspx.cs" Inherits="TVIProject.FoamB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Form B</title>

   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <meta name="description"content="Affordable and professional web design" />
    <meta name="keywords" content="web design, affordable web design,   professional web design" />
    <meta name="author" content="Brad Traversy" />


    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Footer-with-map.css" rel="stylesheet" />
    <script src="jquery-3.2.1.min.js"></script>

         <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/notonastaliqurdudraft.css">

           <script>

               var navbar = document.getElementById("navbar");
               var sticky = navbar.offsetTop;
               function myFunction() {
                   if (window.pageYOffset >= sticky) {
                       navbar.classList.add("sticky")
                   } else {
                       navbar.classList.remove("sticky");
                   }
               }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("table tr ").mouseover(function () {
                $(this).css("background-color", "#e4e0ff");

            });

            $("table tr ").mouseout(function () {
                $(this).css("background-color", "#f4f4f4");

            });

        });
    </script>
    <style>
.sticky {
  position: fixed;
  top: 0;
  width: 100%
}

        #wrapper {
 
            -webkit-border-radius: 20px;
            border: 3px groove black;
            width: 1500px;
            margin: 10px 50px;
             font-family: 'Noto Nastaliq Urdu Draft', serif;
            text-align:right;
        }



        #boxes {
            margin-top: 20px;
        }

            #boxes .box {
                float: left;
                text-align: center;
                width: 30%;
                padding: 10px;
            }

                #boxes .box img {
                    width: 170px;
                }



        table{
            text-align:right;
            font-size:20px;
            
        }
        .auto-style1 {
            direction: ltr;
            width: 1495px;
        }
        
        td {
            align="right";
        padding: 12px;
                }
        .auto-style6 {
            height: 54px;
        }
    </style>


</head>
<body onscroll="myFunction()">
    <form id="form1" runat="server">
    <div>
    
 <div id="header">
            <section id="showcase">
                <div class="container">
                    <h1>TYPHOID VACCINE INDICATOR</h1>
                    <p>REMINDER BAND </p>
                </div>
            </section>
        </div>

<div id="navbar">
          <header>
        <div class="container">
            <div id="branding">
               <h1><span class="hilight">TVI</span> REMINDER BAND</h1>
            </div> 
                  <nav>
                    <ul><li><a href="Admin.aspx">Home</a></li>
                        <li><a href="FoamA.aspx">Form A</a></li>
                        <li class="current"><a href="FoamB.aspx">Form B</a></li>
                        <li><a href="FoamC.aspx">Form C</a></li>
                        <li><a href="FoamD.aspx">Form D</a></li>
                        <li><a href="FoamE.aspx">Form E</a></li>
                        <li><a href="FoamF.aspx">Form F</a></li>
                        <li><a href="ViewA.aspx">Views</a></li>
                    </ul>
                </nav>
        </div>
    </header>
</div>
        <!--Foam Start Here-->
        <div id="wrapper">
         <table class="auto-style1">
             <tr>
                
                 <td>
                        <asp:Label ID="lbluser" runat="server" Text=""></asp:Label>
                 </td>
                 <td>
                    <asp:Button ID="btnlogout" runat="server" OnClick="btnlogout_Click" Text="Logout" />
                 </td>
                 <td>
                     
                    <asp:Label ID="lbmsg" runat="server" Text="Label" align="left"></asp:Label>
                     
                 </td>
                 <td>&nbsp;</td>
             </tr>
             
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="دیئے جانے والے وی آئی آر بینڈ کا سیریل نمبر کیا ہے"></asp:Label>
                 </td>
                 <td>B1</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="(آج کی تاریخ جب ویکسین لگائی گئی:(سال ، ماہ ، دن&nbsp;"></asp:Label>
                 </td>
                 <td>B2</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style6"></td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style6">
                     <asp:Label ID="Label3" runat="server" Text="دی جانے والی ویکسینزکےنام لکھیں"></asp:Label>
                 </td>
                 <td class="auto-style6">B3</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td align="right">
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>بی سی جی</asp:ListItem>
                         <asp:ListItem>او پی وی(Zero)</asp:ListItem>
                     </asp:DropDownList>
                     <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" TextAlign="Left">
                         <asp:ListItem>بی سی جی</asp:ListItem>
                         <asp:ListItem>او پی وی(Zero)</asp:ListItem>
                     </asp:RadioButtonList>--%>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
                
         </table>
                
    <section id="newsletter">
        <div class="container">
            <h1>Press Button To Submit Form</h1>
            
               <!-- <input type="email" placeholder="Enter Email Address..." />-->
<br />&nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" class="button_1" Text="Submit" OnClick="Button1_Click" />
            
        </div>
    </section>
            </div>

 <!-- FOOTER BOOT-->
        <div class="content">

    <footer id="myFooter">
        <div class="container">

            <iframe id="map-container"  frameborder="0" style="border:0"
                src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJv0sdZQY-sz4RIwxaVUQv-Zw&key= AIzaSyChaZcdMGd3FrLuNq9L79OspOzPv1rNRPw" allowfullscreen>
             
            
            </iframe>
            
           
        </div>
        <div class="social-networks">
            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
        </div>
        <asp:CheckBox ID="CheckBox1" runat="server" Width="2px" />
        <div class="footer-copyright">
            <p>TVI Vaccination, Copyright &copy; 2017 </p>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    </div>



    </div>
    </form>

     <script>
         var navbar = document.getElementById("navbar");
         var sticky = navbar.offsetTop;

         function myFunction() {
             if (window.pageYOffset >= sticky) {
                 navbar.classList.add("sticky")
             } else {
                 navbar.classList.remove("sticky");
             }
         }
</script>
</body>
</html>