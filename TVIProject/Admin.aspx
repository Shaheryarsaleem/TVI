<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TVIProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Welcome</title>

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


#wr {
 
            -webkit-border-radius: 20px;
            border: 1px groove #dfdfdf;
            width:450px;
            height:350px;
            margin: 30px 600px;
        }
        
        
        table {
            text-align: center;
            margin:0px;
            padding:0px;
            
            border:none;
            border-collapse:collapse;
            
        }


        th {
            background-color: green;
            color: white;
            padding: 10px;
            border-top:none;
        }

        th, td {
            padding: 10px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            margin-left: 40px;
        }

            th:first-child, th:last-child {
                -webkit-border-radius: 20px 0 0 0;
            }
            th:last-child{
                -webkit-border-radius: 0 20px 0 0;
            }



        #wrapper {
            -webkit-border-radius: 20px;
            border: 3px groove black;
            width: 1500px;
            margin: 10px 50px;
            font-family: 'Noto Nastaliq Urdu Draft', serif;
            text-align:right;
        }


        #newsletter{
            -webkit-border-radius: 10px;
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
                    <ul><li class="current"><a href="Admin.aspx">Home</a></li>
                        <li><a href="FoamA.aspx">Form A</a></li>
                        <li><a href="FoamB.aspx">Form B</a></li>
                        <li><a href="FoamC.aspx">Form C</a></li>
                        <li><a href="FoamD.aspx">Form D</a></li>
                        <li><a href="FoamE.aspx">Form E</a></li>
                        <li><a href="FoamF.aspx">Form F</a></li>
                    </ul>
                </nav>
        </div>
    </header>
            </div>
        <!--Foam Start Here-->
            <div id="wrapper">  

        <div id="wr">

       <table class="nav-justified">
                <th>
                    <th>TYPHOID VACCINE INDICATOR</th>
                </th>
                <tr>
                    <td>&nbsp;</td>
                    <td>REMINDRE BAND <br /><br /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtuser" runat="server" placeholder=" Please Enter Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtpassword" runat="server" placeholder=" Please Enter Password" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkremme" runat="server" Text="Remember" />
                    </td>
                    <td><p>Don't have an account yet? <a href="Registration/Registration.aspx">Sign Up Now</a></p></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1_Click" runat="server" Text="Log In" OnClick="Button1_Click_Click" />
   
                    </td>
                </tr>
           <tr>
                    <td colspan="2">
                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>

            </table> 
       

        </div>
            
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
