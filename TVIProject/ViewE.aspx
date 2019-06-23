<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewE.aspx.cs" Inherits="TVIProject.ViewE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Form E</title>

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
                        <li ><a href="FoamE.aspx">Form E</a></li>
                        <li><a href="FoamF.aspx">Form F</a></li>
                    </ul>
                                   <li><a href="Export Data.aspx">Export</a></li>
                                  <li ><a href="ViewA.aspx">View A</a></li>
                                  <li ><a href="ViewB.aspx">View B</a></li>
                                  <li><a href="ViewC.aspx">View C</a></li>
                                  <li><a href="ViewD.aspx">View D</a></li>
                                  <li   class="current"><a href="ViewE.aspx">View E</a></li>
                                  <li><a href="ViewF.aspx">View F</a></li>
                </nav>
        </div>
    </header>
</div>

        <!--Foam Start Here-->
             <div id="wrapper" >
        <!--Foam Start Here-->
       <table class="auto-style1" border-spacing: "5px";>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
             <tr>
                 <td class="auto-style7">
                     <asp:TextBox ID="regnum" runat="server" placeholder="Please Enter Form Number"></asp:TextBox>
                 </td>
                 <td class="auto-style6">&nbsp;</td>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style4">
                     &nbsp;</td>
             </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Display Details" />
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label12" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label13" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label14" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label15" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label16" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label17" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label18" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label19" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label20" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label21" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label22" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label23" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label24" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label25" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label26" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label27" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label28" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label29" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label30" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label31" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label32" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label33" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label34" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label35" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label36" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label37" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label38" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label39" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label40" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label41" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label42" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label43" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label44" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label45" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label46" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label47" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label48" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">سوال</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label49" runat="server" Text="۔"></asp:Label>
                </td>
                <td class="auto-style4">جواب</td>
            </tr>            
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3"></td>
                <td class="auto-style4">&nbsp;</td>
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

