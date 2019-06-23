<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Export Data.aspx.cs" Inherits="TVIProject.Export_Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Export Data</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <meta name="description"content="Affordable and professional web design" />
    <meta name="keywords" content="web design, affordable web design,   professional web design" />
    <meta name="author" content="Brad Traversy" />


    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Footer-with-map.css" rel="stylesheet" />

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
        }
        .auto-style3 {}
        .auto-style4 {
            width: 157px;
        }
        .auto-style5 {
            direction: ltr;
            width: 157px;
        }

        td {
        padding: 12px;
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
                    <p>REMINDRE BAND </p>
                </div>
            </section>
        </div>

<div id="navbar">
          <header>
        <div class="container">
            <div id="branding">
               <h1><span class="hilight">TVI</span> REMINDRE BAND</h1>
            </div> 
                  <nav>
                    <ul><li><a href="Admin.aspx">Home</a></li>
                        <li><a href="FoamA.aspx">Form A</a></li>
                        <li><a href="FoamB.aspx">Form B</a></li>
                        <li><a href="FoamC.aspx">Form C</a></li>
                        <li><a href="FoamD.aspx">Form D</a></li>
                        <li><a href="FoamE.aspx">Form E</a></li>
                        <li ><a href="FoamF.aspx">Form F</a></li>
                    </ul>
                                  <li class="current"><a href="Export Data.aspx">Export Data</a></li>
                                  <li ><a href="ViewA.aspx">View A</a></li>
                                  <li ><a href="ViewB.aspx">View B</a></li>
                                  <li><a href="ViewC.aspx">View C</a></li>
                                  <li><a href="ViewD.aspx">View D</a></li>
                                  <li><a href="ViewE.aspx">View E</a></li>
                                  <li  ><a href="ViewF.aspx">View F</a></li>
                </nav>
        </div>
    </header>
</div>

        <!--Foam Start Here-->
        <div id="wrapper">
         <table class="auto-style1" border-spacing: "5px";>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Export to Excel" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td >&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="Medium" Height="273px" Width="402px">
                         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                         <EditRowStyle BackColor="#999999" />
                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#E9E7E2" />
                         <SortedAscendingHeaderStyle BackColor="#506C8C" />
                         <SortedDescendingCellStyle BackColor="#FFFDF8" />
                         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                     </asp:GridView>
                 </td>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>            
        </table>
            </div>

    <section id="newsletter">
        <div class="container">
            <h1>Press Button To Submit Form</h1>
            
               <!-- <input type="email" placeholder="Enter Email Address..." />-->
<br />&nbsp; &nbsp; &nbsp;<button type="submit" class="button_1">Submit</button>
            
        </div>
    </section>



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
        <div class="footer-copyright">
            <p>© 2017 Copyright Text </p>
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
