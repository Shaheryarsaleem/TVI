
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoamF.aspx.cs" Inherits="TVIProject.FoamF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Form F</title>

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
        }
        
        td {
            align="right";
        padding: 12px;
                }
        .auto-style2 {
            height: 56px;
            width: 708px;
        }
        .auto-style3 {
            width: 910px;
        }
        .auto-style4 {
            height: 56px;
            width: 910px;
        }
        .auto-style5 {
            height: 54px;
            width: 708px;
        }
        .auto-style6 {
            width: 910px;
            height: 54px;
        }
        .auto-style7 {
            height: 55px;
            width: 708px;
        }
        .auto-style8 {
            width: 910px;
            height: 55px;
        }
        .auto-style9 {
            width: 822px;
        }
        .auto-style10 {
            height: 56px;
            width: 822px;
        }
        .auto-style11 {
            height: 54px;
            width: 822px;
        }
        .auto-style12 {
            height: 55px;
            width: 822px;
        }
        .auto-style13 {
            width: 298px;
        }
        .auto-style14 {
            height: 56px;
            width: 298px;
        }
        .auto-style15 {
            height: 54px;
            width: 298px;
        }
        .auto-style16 {
            height: 55px;
            width: 298px;
        }
        .auto-style17 {
            width: 1855px;
        }
        .auto-style18 {
            height: 56px;
            width: 1855px;
        }
        .auto-style19 {
            height: 54px;
            width: 1855px;
        }
        .auto-style20 {
            height: 55px;
            width: 1855px;
        }
        .auto-style21 {
            width: 708px;
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
                        <li><a href="FoamB.aspx">Form B</a></li>
                        <li><a href="FoamC.aspx">Form C</a></li>
                        <li><a href="FoamD.aspx">Form D</a></li>
                        <li><a href="FoamE.aspx">Form E</a></li>
                        <li class="current"><a href="FoamF.aspx">Form F</a></li>
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
                 <td class="auto-style9">
                        <asp:Label ID="lbluser" runat="server" Text=""></asp:Label>
                    </td>
                 <td class="auto-style3">
                     <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" />
                    </td>
                 <td class="auto-style21"></td>
                 <td class="auto-style17">
                    <asp:Label ID="lbmsg" runat="server" Text="."></asp:Label>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9"></td>
                 <td class="auto-style3">
                     <asp:Label ID="Label33" runat="server" Text="."></asp:Label>
                 </td>
                 <td class="auto-style21"></td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9"></td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label1" runat="server" Text="کیابچے کے اہل خانہ یا کسی اور نے وی آئی آر بینڈ کے بارے میں پوچھا؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F1</td>
             </tr>
             <tr>
                 <td class="auto-style9"></td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں </asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                     <%--<asp:RadioButtonList ID="RadioButtonList4" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem Value="نہیں"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label2" runat="server" Text="بچے کے اہل خانہ یا کسی اور نے وی آئی آر بینڈ کے حوالے سے کیا کہا؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F2</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label3" runat="server" Text="کیا بچے کے اندراج کے وقت آپ کووی آئی آر بینڈ کے متعلق معلومات فراہم کر دی گئی تھیں؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F3</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں </asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                     <%--<asp:RadioButtonList ID="RadioButtonList5" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem Value="نہیں"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label4" runat="server" Text="وی آئی آر بینڈ کے متعلق آپ کیا جانتی /جانتے ہیں؟ (ایک سے زائد جوابات منتخب کئے جا سکتے ہیں)"></asp:Label>
                 </td>
                 <td class="auto-style13">F4</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <br />
                     <asp:CheckBox ID="CheckBox23" runat="server" Text="حفاظتی ٹیکے بروقت  لگوانے کی یاد دہانی کرواتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox24" runat="server" Text="بچے کو کسی قسم کا نقصان نہیں پہنچاتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label5" runat="server" Text="وی آئی آر بینڈ کے متعلق معلومات کیوں نہیں حاصل ہوئیں؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F5</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList2" runat="server" TextAlign="Left" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged">
                         <asp:ListItem>کوئی طباعت شدہ مواد فراہم نہیں کیا گیا تھا</asp:ListItem>
                         <asp:ListItem Value="وی آئی آر بینڈ ٹیم موجود نہیں تھی"></asp:ListItem>
                         <asp:ListItem> میرا بچہ رو رہا تھا </asp:ListItem>
                         <asp:ListItem Value="اندراج کے وقت بچے کےساتھ کوئی اور تھا/تھی"></asp:ListItem>
                         <asp:ListItem Value="میں جلدی میں تھی / تھا "></asp:ListItem>
                         <asp:ListItem>وی آئی آر بینڈ ٹیم مصروف تھی</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox25" runat="server" Text="کوئی طباعت شدہ مواد فراہم نہیں کیا گیا تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox5" runat="server" Text="وی آئی آر بینڈ ٹیم موجود نہیں تھی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox26" runat="server" Text="میرا بچہ رو رہا تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox7" runat="server" Text="اندراج کے وقت بچے کےساتھ کوئی اور تھا/تھی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox27" runat="server" Text="میں جلدی میں تھی / تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox28" runat="server" Text="وی آئی آر بینڈ ٹیم مصروف تھی" TextAlign="Left" />
                     <br />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label6" runat="server" Text="کیا بچے کے اندراج کے وقت حفاظتی ٹیکوں کے متعلق معلومات فراہم کر دی گئی تھیں؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F6</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList6" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem Value="نہیں"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList3" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label7" runat="server" Text="حفاظتی ٹیکوں کے متعلق آپ کی کیا رائے ہے؟ ایک سے زائد جوابات منتخب کئے جا سکتے ہیں"></asp:Label>
                 </td>
                 <td class="auto-style13">F7</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <br />
                     <asp:CheckBox ID="CheckBox33" runat="server" Text="بچوں میں بیماریوں سےلڑنے کی طاقت بڑھاتے ہیں" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox34" runat="server" Text="بیماریوں سے بچاؤ کے لئے " TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox35" runat="server" Text="بچہ مزید صحت مند ہو جاتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox36" runat="server" Text="بچوں کو معذوری سے بچانے کے لئے ضروری ہوتے ہیں " TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox37" runat="server" Text="بیماریوں کے علاج کے لئے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox38" runat="server" Text="حفاظتی ٹیکےبروقت لگوانےسےبچہ محفوظ ہوجاتاہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox41" runat="server" Text="حفاظتی ٹیکے مکمل نہ کروانے سے بچہ بیمار ہو سکتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox40" runat="server" Text="بیماریوں کے علاج کے لئے" TextAlign="Left" />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label8" runat="server" Text="حفاظتی ٹیکوں کےمتعلق معلومات کیوں نہیں حاصل ہوئیں؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F8</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <asp:CheckBox ID="CheckBox29" runat="server" Text="بچوں میں بیماریوں سےلڑنے کی طاقت بڑھاتے ہیں" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox12" runat="server" Text="بیماریوں سے بچاؤ کے لئے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox30" runat="server" Text="بچہ مزید صحت مند ہو جاتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox14" runat="server" Text="بچوں کو معذوری سے بچانے کے لئے ضروری ہوتے ہیں" TextAlign="Left" />
                     <br />
                     <br />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label9" runat="server" Text="کیا آپ ای پی آئی ویکسینیشن شیڈول کے بارے میں جانتے ہیں؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F9</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td align="right" class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList3" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList5" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem></asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td align="right" class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style10"></td>
                 <td class="auto-style4">
                     </td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style18">
                     <asp:Label ID="Label10" runat="server" Text="پہلی ویکسین نام"></asp:Label>
                 </td>
                 <td class="auto-style14">F10a</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList7" runat="server" TextAlign="Left">
                         <asp:ListItem>بی سی جی</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList6" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>بی سی جی</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label11" runat="server" Text="پہلی ویکسین کس عمر میں لگائی جاتی ہے"></asp:Label>
                 </td>
                 <td class="auto-style13">F10b</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList8" runat="server" TextAlign="Left">
                         <asp:ListItem>پیدائش کے فورا بعد</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList7" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>پیدائش کے فورا بعد</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label12" runat="server" Text="پہلی ویکسین کون سی بیماریوں سے بچاو کے لیے"></asp:Label>
                 </td>
                 <td class="auto-style13">F10c</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList9" runat="server" TextAlign="Left" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged">
                         <asp:ListItem Value="ٹی بی"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList8" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ٹی بی</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label13" runat="server" Text="دوسری ویکسین نام"></asp:Label>
                 </td>
                 <td class="auto-style13">F11a</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList10" runat="server" TextAlign="Left">
                         <asp:ListItem Value=" پینٹا"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     
                     <asp:DropDownList ID="DropDownList4" runat="server">
<asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem> پینٹا</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label14" runat="server" Text="دوسری ویکسین کس عمر میں لگائی جاتی ہے"></asp:Label>
                 </td>
                 <td class="auto-style13">F11b</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17"align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList11" runat="server" TextAlign="Left">
                         <asp:ListItem>6ہفتے  </asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList10" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>6ہفتے</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style10"></td>
                 <td class="auto-style4">
                     </td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style18">
                     <asp:Label ID="Label15" runat="server" Text="دوسری ویکسین کون سی بیماریوں سے بچاو کے لیے"></asp:Label>
                 </td>
                 <td class="auto-style14">F11c</td>
             </tr>
             <tr>
                 <td class="auto-style10">&nbsp;</td>
                 <td class="auto-style4">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style18" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList12" runat="server" TextAlign="Left">
                         <asp:ListItem> پانچ بیماریوں(کال کھانسی، گردن توڑ بخار، خناق،ٹشنج، کالا یرقان)</asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList11" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>پانچ بیماریوں(کال کھانسی، گردن توڑ بخار، خناق،ٹشنج، کالا یرقان)</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style14">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style10">&nbsp;</td>
                 <td class="auto-style4">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style18" align="right">
                     &nbsp;</td>
                 <td class="auto-style14">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label16" runat="server" Text="تیسری ویکسین نام"></asp:Label>
                 </td>
                 <td class="auto-style13">F12a</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList13" runat="server" TextAlign="Left">
                         <asp:ListItem> پینٹا</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList12" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>پینٹا</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label17" runat="server" Text="تیسری ویکسین کس عمر میں لگائی جاتی ہے"></asp:Label>
                 </td>
                 <td class="auto-style13">F12b</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList14" runat="server" TextAlign="Left">
                         <asp:ListItem Value="10ہفتے  "></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList13" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>10ہفتے</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label18" runat="server" Text="تیسری ویکسین کون سی بیماریوں سے بچاو کے لیے"></asp:Label>
                 </td>
                 <td class="auto-style13">F12c</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList15" runat="server" TextAlign="Left">
                         <asp:ListItem Value="پانچ بیماریوں(کال کھانسی، گردن توڑ بخار، خناق،ٹشنج، کالا یرقان)"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList14" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>پانچ بیماریوں(کال کھانسی، گردن توڑ بخار، خناق،ٹشنج، کالا یرقان)</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label19" runat="server" Text="چوتھی ویکسین نام"></asp:Label>
                 </td>
                 <td class="auto-style13">F13a</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList16" runat="server" TextAlign="Left">
                         <asp:ListItem> پینٹا</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList15" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>پینٹا</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label20" runat="server" Text="چوتھی ویکسین کس عمر میں لگائی جاتی ہے"></asp:Label>
                 </td>
                 <td class="auto-style13">F13b</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList17" runat="server" TextAlign="Left">
                         <asp:ListItem>14ہفتے </asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList16" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>14ہفتے</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label21" runat="server" Text="چوتھی ویکسین کون سی بیماریوں سے بچاو کے لیے"></asp:Label>
                 </td>
                 <td class="auto-style13">F13c</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList18" runat="server" TextAlign="Left">
                         <asp:ListItem>پانچ بیماریوں(کال کھانسی، گردن توڑ بخار، خناق،ٹشنج، کالا یرقان)</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList17" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>پانچ بیماریوں(کال کھانسی، گردن توڑ بخار، خناق،ٹشنج، کالا یرقان)</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style10"></td>
                 <td class="auto-style4">
                     </td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style18">
                     <asp:Label ID="Label22" runat="server" Text="پانچویں ویکسین نام"></asp:Label>
                 </td>
                 <td class="auto-style14">F14a</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList19" runat="server">
                         <asp:ListItem Value="خسرہ کی پہلی ویکسین"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList18" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>خسرہ کی پہلی ویکسین</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label23" runat="server" Text="پانچویں ویکسین کس عمر میں لگائی جاتی ہے"></asp:Label>
                 </td>
                 <td class="auto-style13">F14b</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList20" runat="server" TextAlign="Left">
                         <asp:ListItem>9 ماہ کی عمر میں</asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList19" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>9 ماہ کی عمر میں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label24" runat="server" Text="پانچویں ویکسین کون سی بیماریوں سے بچاو کے لیے"></asp:Label>
                 </td>
                 <td class="auto-style13">F14c</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList21" runat="server" TextAlign="Left">
                         <asp:ListItem Value="خسرہ"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList20" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>خسرہ</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style11"></td>
                 <td class="auto-style6">
                     </td>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style19">
                     <asp:Label ID="Label25" runat="server" Text="چھٹی ویکسین نام"></asp:Label>
                 </td>
                 <td class="auto-style15">F15a</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList22" runat="server" TextAlign="Left">
                         <asp:ListItem Value="خسرہ کی دوسری ویکسین"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList21" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>=&quot;خسرہ کی دوسری ویکسین</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style12"></td>
                 <td class="auto-style8">
                     </td>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style20">
                     <asp:Label ID="Label26" runat="server" Text="چھٹی ویکسین کس عمر میں لگائی جاتی ہے"></asp:Label>
                 </td>
                 <td class="auto-style16">F15b</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList23" runat="server" TextAlign="Left">
                         <asp:ListItem Value="15 ماہ"></asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList22" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>15 ماہ</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label27" runat="server" Text="چھٹی ویکسین کون سی بیماریوں سے بچاو کے لیے"></asp:Label>
                 </td>
                 <td class="auto-style13">F15c</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList24" runat="server" TextAlign="Left">
                         <asp:ListItem Value="ٹی بی"></asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList23" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ٹی بی</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     &nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label28" runat="server" Text="کیا وی آئی آر بینڈحفاظتی ٹیکوں کی بروقت یاددہانی کے لئے موثر طریقہ ہے؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F16</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList24" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label29" runat="server" Text="وی آئی آر بینڈ حفاظتی ٹیکوں کی بروقت یاددہانی کے لئے موثر طریقہ کیسے ہے؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F17</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList5" runat="server" TextAlign="Left">
                         <asp:ListItem Value="یہ ہروقت یاد دلاتا رہتا ہے"></asp:ListItem>
                         <asp:ListItem Value="پانی سے خراب نہیں ہوتا ہے"></asp:ListItem>
                         <asp:ListItem Value="اس کو سمجھنا اور سنبھالنا آسان کام ہے"></asp:ListItem>
                         <asp:ListItem Value="بروقت پتا چل جاتا ہے کہ بچے کےحفاظتی ٹیکے کا وقت ہو گیا ہے"></asp:ListItem>
                         <asp:ListItem Value="معلوم نہیں"></asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:DropDownList ID="DropDownList25" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>یہ ہروقت یاد دلاتا رہتا ہے</asp:ListItem>
                         <asp:ListItem>پانی سے خراب نہیں ہوتا ہے</asp:ListItem>
                         <asp:ListItem>اس کو سمجھنا اور سنبھالنا آسان کام ہے</asp:ListItem>
                         <asp:ListItem>بروقت پتا چل جاتا ہے کہ بچے کےحفاظتی ٹیکے کا وقت ہو گیا ہے</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label30" runat="server" Text="وی آئی آر بینڈ حفاظتی ٹیکوں کی بروقت یاددہانی کا موثرطریقہ کیوں نہیں ہے؟ (ایک سے زائد جواب آ سکتے ہیں)"></asp:Label>
                 </td>
                 <td class="auto-style13">F18</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList6" runat="server" TextAlign="Left">
                         <asp:ListItem>وی آئی آر بینڈ کام نہیں کر رہا تھا</asp:ListItem>
                         <asp:ListItem>سمجھنے میں مشکل ہوتی ہے </asp:ListItem>
                         <asp:ListItem> اس کو سنبھالنا مشکل ہے</asp:ListItem>
                         <asp:ListItem>بچے کے ٹخنے میں بُرا لگتا ہے </asp:ListItem>
                         <asp:ListItem Value="دیگر)دیگر کی وضاحت کریں)"></asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:DropDownList ID="DropDownList26" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>وی آئی آر بینڈ کام نہیں کر رہا تھا</asp:ListItem>
                         <asp:ListItem>سمجھنے میں مشکل ہوتی ہے</asp:ListItem>
                         <asp:ListItem> اس کو سنبھالنا مشکل ہے</asp:ListItem>
                         <asp:ListItem>بچے کے ٹخنے میں بُرا لگتا ہے</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">&nbsp;<asp:Label ID="Label31" runat="server" Text="کیا آپ وی آئی آر بینڈ دیگر افراد کو تجویز کریں گے؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F19</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList2" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList27" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">
                     <asp:Label ID="Label32" runat="server" Text="آپ کے خیال میں حفاظتی ٹیکوں کی یاد دہانی کے لئے سب سے مناسب طریقہ کون سا ہے؟"></asp:Label>
                 </td>
                 <td class="auto-style13">F20</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17" align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList7" runat="server" TextAlign="Left">
                         <asp:ListItem>ویکسینیشن کارڈ</asp:ListItem>
                         <asp:ListItem>موبائل ایس ایم ایس </asp:ListItem>
                         <asp:ListItem>فون کال کے ذریعے یاد دہانی</asp:ListItem>
                         <asp:ListItem>ویکسینیشن ٹیم کا گھر گھر جا کے یاد دہانی کروانا</asp:ListItem>
                         <asp:ListItem>کلینڈر پر لکھ لینا</asp:ListItem>
                         <asp:ListItem Value="موبائل کے کلینڈر میں الارم لگا لینا"></asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox15" runat="server" Text="ویکسینیشن کارڈ" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox16" runat="server" Text="موبائل ایس ایم ایس" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox31" runat="server" Text="فون کال کے ذریعے یاد دہانی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox32" runat="server" Text="ویکسینیشن ٹیم کا گھر گھر جا کے یاد دہانی کروانا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox19" runat="server" Text="کلینڈر پر لکھ لینا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox20" runat="server" Text="موبائل کے کلینڈر میں الارم لگا لینا" TextAlign="Left" />
                     <br />
                 </td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td class="auto-style21">&nbsp;</td>
                 <td class="auto-style17">&nbsp;</td>
                 <td class="auto-style13">&nbsp;</td>
             </tr>
         </table>
            </div>


    <section id="newsletter">
        <div class="container">
            <h1>Press Button To Submit Form</h1>
            
               <!-- <input type="email" placeholder="Enter Email Address..." />-->
<br />&nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" class="button_1" Text="Submit" OnClick="Button1_Click" />
            
        &nbsp;<asp:CheckBox ID="CheckBox22" runat="server" />
            
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