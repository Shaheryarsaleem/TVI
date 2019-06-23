<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoamD.aspx.cs" Inherits="TVIProject.FoamD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Form D</title>

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
            text-align: right;
            font-size:20px;
        }

        .auto-style1 {
            width: 100%;
        }


        td {
        padding: 12px;
            margin-left: 80px;
        }
        .auto-style2 {
            width: 279px;
        }
        .auto-style3 {
            width: 279px;
            direction: ltr;
        }
        .auto-style4 {
            height: 52px;
        }
        .auto-style5 {
            width: 279px;
            height: 52px;
        }
        .auto-style6 {
            width: 268px;
        }
        .auto-style7 {
            height: 52px;
            width: 268px;
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
                        <li class="current"><a href="FoamD.aspx">Form D</a></li>
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
                 <td>&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:Label ID="lbmsg" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                        <asp:Label ID="lbluser" runat="server" Text=""></asp:Label>
                    </td>
                 <td class="auto-style2">
                        <asp:Button ID="btnlogoute" runat="server" Text="Button" />
                    </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4"></td>
                 <td class="auto-style7"></td>
                 <td class="auto-style5"></td>
                 <td class="auto-style4"></td>
                 <td class="auto-style4"></td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     Form Number</td>
                 <td class="auto-style2">
                     <asp:Label ID="Label23" runat="server"></asp:Label>
                 </td>
                 <td><%--جواب دہندہ کا نا م کیا ہے؟--%>
                     <asp:Label ID="Label1" runat="server" Text="جواب دہندہ کا نا م کیا ہے؟"></asp:Label>
                 </td>
                 <td>D1</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td><%--جواب دہندہ کی عمر کتنی ہے:(سال میں لکھیں)--%> 
                     <asp:Label ID="Label2" runat="server" Text="جواب دہندہ کی عمر کتنی ہے:(سال میں لکھیں)"></asp:Label>
                 </td>
                 <td>D2</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--جوابدہندہ کا بچے کے ساتھ کیارشتہ ہے؟--%>
                     <asp:Label ID="Label3" runat="server" Text="جوابدہندہ کا بچے کے ساتھ کیارشتہ ہے؟"></asp:Label>
                 </td>
                 <td>D3</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList1" runat="server" TextAlign="Left">
                        <asp:ListItem>والد</asp:ListItem>
                        <asp:ListItem>والدہ</asp:ListItem>
                        <asp:ListItem>دادی / نانی</asp:ListItem>
                        <asp:ListItem>دادا/نانا </asp:ListItem>
                        <asp:ListItem>چچا / ماموں/خالو</asp:ListItem>
                        <asp:ListItem>چچی / ممانی/خالہ</asp:ListItem>
                        <asp:ListItem>بھائی</asp:ListItem>
                        <asp:ListItem>بہن</asp:ListItem>
                        <asp:ListItem>پڑوسی</asp:ListItem>
                        <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox1" runat="server" Text="والد" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox2" runat="server" Text="والدہ" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox3" runat="server" Text="دادی / نانی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox4" runat="server" Text="دادا/نانا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox5" runat="server" Text="چچا / ماموں/خالو" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox51" runat="server" Text="چچی / ممانی/خالہ" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox7" runat="server" Text="بھائی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox8" runat="server" Text="بہن" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox9" runat="server" Text="پڑوسی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox10" runat="server" Text="دیگر)دیگر کی وضاحت کریں)" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا بچہ وی آئی آر بینڈ کے ساتھ آیا ہے؟--%>
                     <asp:Label ID="Label4" runat="server" Text="کیا بچہ وی آئی آر بینڈ کے ساتھ آیا ہے؟"></asp:Label>
                 </td>
                 <td>D4</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList4" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem Value="نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا وی آئی آر بینڈ بچے کے ٹخنے پر تھا ؟(فارم بھرنے والا وی آئی آر بینڈ کا مشاہدہ کر کے خود جوابات منتخب کرے)--%>
                     <asp:Label ID="Label5" runat="server" Text="کیا وی آئی آر بینڈ بچے کے ٹخنے پر تھا ؟(فارم بھرنے والا وی آئی آر بینڈ کا مشاہدہ کر کے خود جوابات منتخب کرے)"></asp:Label>
                 </td>
                 <td>D5</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList6" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem Value="نہیں"></asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--وی آئی آر بینڈ کہاں ہے؟--%>
                     <asp:Label ID="Label6" runat="server" Text="وی آئی آر بینڈ کہاں ہے؟"></asp:Label>
                 </td>
                 <td>D6</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList7" runat="server" TextAlign="Left">
                         <asp:ListItem>گھر میں ہے</asp:ListItem>
                         <asp:ListItem>کھو گیا ہے</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList3" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>گھر میں ہے</asp:ListItem>
                         <asp:ListItem>کھو گیا ہے</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--بینڈ کب کھویا؟--%>
                     <asp:Label ID="Label7" runat="server" Text="بینڈ کب کھویا؟"></asp:Label>
                 </td>
                 <td>D7</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList2" runat="server" TextAlign="Left">
                         <asp:ListItem Value="بینڈ پہنانے کےدو ہفتوں کےاندر"></asp:ListItem>
                         <asp:ListItem>بینڈ پہنانے کےدو  ہفتوں کے بعد</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox11" runat="server" Text="بینڈ پہنانے کےدو ہفتوں کےاندر" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox12" runat="server" Text="بینڈ پہنانے کےدو  ہفتوں کے بعد" TextAlign="Left" />
                     <br />
                     <br />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8"></td>
                 <td class="auto-style9">
                     </td>
                 <td class="auto-style10">
                     </td>
                 <td class="auto-style8"></td>
                 <td class="auto-style8"></td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیاآپ کے خیال میں اس مرتبہ آپ کے بچے کو بروقت حفاظتی ٹیکے لگے ہیں؟--%>
                     <asp:Label ID="Label8" runat="server" Text="کیاآپ کے خیال میں اس مرتبہ آپ کے بچے کو بروقت حفاظتی ٹیکے لگے ہیں؟"></asp:Label>
                 </td>
                 <td>D8</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList5" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList4" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--بروقت حفاظتی ٹیکے نہ لگنے کی کیا وجہ ہے؟--%> 
                     <asp:Label ID="Label9" runat="server" Text="بروقت حفاظتی ٹیکے نہ لگنے کی کیا وجہ ہے؟"></asp:Label>
                 </td>
                 <td>D9</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td align="right"><%--<asp:CheckBoxList ID="CheckBoxList3" runat="server" TextAlign="Left">
                     <asp:ListItem>وی آئی آر بینڈ نے کام نہیں کیا</asp:ListItem>
                     <asp:ListItem>بھول گئے </asp:ListItem>
                     <asp:ListItem>بچے کی طبیعت خراب تھی </asp:ListItem>
                     <asp:ListItem Value="ویکسین لگوانے کے لئے لانے والاکوئی نہیں تھا"></asp:ListItem>
                     <asp:ListItem>ویکسین دستیاب نہیں تھی</asp:ListItem>
                     <asp:ListItem>بینڈعارضی طورپرکھو گیا تھا</asp:ListItem>
                     <asp:ListItem> ویکسینیٹر موجود نہیں تھا</asp:ListItem>
                     <asp:ListItem>بچہ علاقے میں نہیں تھا</asp:ListItem>
                     <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <br />
                     <asp:CheckBox ID="CheckBox13" runat="server" Text="وی آئی آر بینڈ نے کام نہیں کیا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox14" runat="server" Text="بھول گئے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox15" runat="server" Text="بچے کی طبیعت خراب تھی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox16" runat="server" Text="ویکسین لگوانے کے لئے لانے والاکوئی نہیں تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox17" runat="server" Text="ویکسین دستیاب نہیں تھی" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox18" runat="server" Text="بینڈعارضی طورپرکھو گیا تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox19" runat="server" Text="ویکسینیٹر موجود نہیں تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox20" runat="server" Text="بچہ علاقے میں نہیں تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox21" runat="server" Text="دیگر)دیگر کی وضاحت کریں)" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox7" runat="server" Height="28px"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--وی آئی آر بینڈ کس حالت میں ہے؟(فارم بھرنے والا وی آئی آر بینڈ کا مشاہدہ کر کے خود جوابات منتخب کرے، ایک سے زائد جوابات منتخب کئے جاسکتے ہیں)--%>
                     <asp:Label ID="Label10" runat="server" Text="وی آئی آر بینڈ کس حالت میں ہے؟(فارم بھرنے والا وی آئی آر بینڈ کا مشاہدہ کر کے خود جوابات منتخب کرے، ایک سے زائد جوابات منتخب کئے جاسکتے ہیں)"></asp:Label>
                 </td>
                 <td>D10</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList4" runat="server" TextAlign="Left">
                         <asp:ListItem>بالکل ٹھیک </asp:ListItem>
                         <asp:ListItem>انک رِس رہی ہے </asp:ListItem>
                         <asp:ListItem>رک گیا ہے</asp:ListItem>
                         <asp:ListItem Value=" نمی آگئی ہے"></asp:ListItem>
                         <asp:ListItem Value="ٹوٹ گیا ہے"></asp:ListItem>
                         <asp:ListItem Value="ٹائم اسٹرپ بینڈ سے الگ ہو گئی ہے"></asp:ListItem>
                         <asp:ListItem Value="بینڈ کا رنگ خراب ہو گیا ہے"></asp:ListItem>
                         <asp:ListItem Value="بینڈ کا سیریل نمبر واضح نہیں ہے "></asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox22" runat="server" Text="بالکل ٹھیک" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox23" runat="server" Text="انک رِس رہی ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox24" runat="server" Text="رک گیا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox25" runat="server" Text="نمی آگئی ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox26" runat="server" Text="ٹوٹ گیا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox27" runat="server" Text="ٹائم اسٹرپ بینڈ سے الگ ہو گئی ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox28" runat="server" Text="بینڈ کا رنگ خراب ہو گیا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox29" runat="server" Text="بینڈ کا سیریل نمبر واضح نہیں ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox30" runat="server" Text="دیگر)دیگر کی وضاحت کریں)" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا پچھلے چار ہفتوں میں کسی بھی وقت وی آئی آر بینڈ کو بچے کے ٹخنے سے اتارا گیاتھا؟--%>
                     <asp:Label ID="Label11" runat="server" Text="کیا پچھلے چار ہفتوں میں کسی بھی وقت وی آئی آر بینڈ کو بچے کے ٹخنے سے اتارا گیاتھا؟"></asp:Label>
                 </td>
                 <td>D11</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList1" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList5" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--VIRبینڈ ٹخنے سے اتارنے کی وجہ کیا تھی؟(ایک سے زائد جوابات منتخب کئے جا سکتے ہیں)--%>
                     <asp:Label ID="Label12" runat="server" Text="VIRبینڈ ٹخنے سے اتارنے کی وجہ کیا تھی؟(ایک سے زائد جوابات منتخب کئے جا سکتے ہیں)"></asp:Label>
                 </td>
                 <td>D12</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList5" runat="server" TextAlign="Left">
                         <asp:ListItem>دیگر بچے کھیلنے کے لئے اتار لیتے تھے </asp:ListItem>
                         <asp:ListItem>جب بچہ روتا تھا تو اتار دیتے تھے     </asp:ListItem>
                         <asp:ListItem>بچے کو نہلاتے ہوئے اتارتے تھے </asp:ListItem>
                         <asp:ListItem>بچے کی طبیعت خرابی کی وجہ سے اتار دیا تھا</asp:ListItem>
                         <asp:ListItem Value="رات میں اتار دیتے تھے"></asp:ListItem>
                         <asp:ListItem>بچے کے والد نے اتار دیا تھا</asp:ListItem>
                         <asp:ListItem>بچے کی مالش کرتے وقت بینڈ اتار دیتے ہیں</asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <br />
                     <asp:CheckBox ID="CheckBox31" runat="server" Text="دیگر بچے کھیلنے کے لئے اتار لیتے تھے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox32" runat="server" Text="جب بچہ روتا تھا تو اتار دیتے تھے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox33" runat="server" Text="بچے کو نہلاتے ہوئے اتارتے تھے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox34" runat="server" Text="بچے کی طبیعت خرابی کی وجہ سے اتار دیا تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox35" runat="server" Text="رات میں اتار دیتے تھے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox36" runat="server" Text="بچے کے والد نے اتار دیا تھا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox37" runat="server" Text="بچے کی مالش کرتے وقت بینڈ اتار دیتے ہیں" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox38" runat="server" Text="دیگر)دیگر کی وضاحت کریں)" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا وی آئی آر بینڈ اپنے مقررہ وقت میں اختتامی مقام تک پہنچ گیا ہے؟(فارم بھرنے والا وی آئی آر بینڈ کا مشاہدہ کر کے خود جوابات منتخب کرے)--%>
                     <asp:Label ID="Label13" runat="server" Text="کیا وی آئی آر بینڈ اپنے مقررہ وقت میں اختتامی مقام تک پہنچ گیا ہے؟(فارم بھرنے والا وی آئی آر بینڈ کا مشاہدہ کر کے خود جوابات منتخب کرے)"></asp:Label>
                 </td>
                 <td>D13</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList8" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList6" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا وی آئی آر بینڈ سے بروقت حفاظتی ٹیکے لگوانے کی یاد دہانی ہوئی؟--%>
                     <asp:Label ID="Label14" runat="server" Text="کیا وی آئی آر بینڈ سے بروقت حفاظتی ٹیکے لگوانے کی یاد دہانی ہوئی؟"></asp:Label>
                 </td>
                 <td>D14</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList9" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList7" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--وی آئی آر بینڈ سے کس طرح یاد دہانی ہوئی؟--%>
                     <asp:Label ID="Label15" runat="server" Text="وی آئی آر بینڈ سے کس طرح یاد دہانی ہوئی؟"></asp:Label>
                 </td>
                 <td>D15</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList6" runat="server" TextAlign="Left">
                         <asp:ListItem>نظر کے سامنے رہتا ہے</asp:ListItem>
                         <asp:ListItem>بینڈ میں رنگ تبدیل ہونے سے پتا چل گیا</asp:ListItem>
                         <asp:ListItem Value="دیگر افراد دیکھ کر یاد دلاتے رہتے ہیں"></asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox39" runat="server" Text="نظر کے سامنے رہتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox40" runat="server" Text="بینڈ میں رنگ تبدیل ہونے سے پتا چل گیا" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox41" runat="server" Text="دیگر افراد دیکھ کر یاد دلاتے رہتے ہیں" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox42" runat="server" Text="دیگر)دیگر کی وضاحت کریں)" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا وی آئی آر بینڈ کی وجہ سے بچے کو کوئی پریشانی ہوئی ؟--%>
                     <asp:Label ID="Label16" runat="server" Text="کیا وی آئی آر بینڈ کی وجہ سے بچے کو کوئی پریشانی ہوئی ؟"></asp:Label>
                 </td>
                 <td>D16</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList2" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList8" runat="server">
                         <asp:ListItem>--Select One--</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--بچے کو وی آئی آر بینڈ کی وجہ سے کس قسم کی پریشانی ہوئی تھی ؟--%>
                     <asp:Label ID="Label17" runat="server" Text="بچے کو وی آئی آر بینڈ کی وجہ سے کس قسم کی پریشانی ہوئی تھی ؟"></asp:Label>
                 </td>
                 <td>D17</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList7" runat="server" TextAlign="Left">
                         <asp:ListItem>جلد پر خراشیں</asp:ListItem>
                         <asp:ListItem Value="سوزش، سوجن،  ورم"></asp:ListItem>
                         <asp:ListItem Value=" بچہ بینڈ کی وجہ سے روتا ہے"></asp:ListItem>
                         <asp:ListItem Value="بینڈ کی وجہ سے بچے کو الجھن ہوتی ہے"></asp:ListItem>
                         <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox43" runat="server" Text="جلد پر خراشیں" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox44" runat="server" Text="سوزش، سوجن،  ورم" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox45" runat="server" Text="بچہ بینڈ کی وجہ سے روتا ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox46" runat="server" Text="بینڈ کی وجہ سے بچے کو الجھن ہوتی ہے" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:CheckBox ID="CheckBox47" runat="server" Text="دیگر)دیگر کی وضاحت کریں)" TextAlign="Left" />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--کیا جواب دہندہ بچے کو وی آئی آر بینڈ دوبارہ پہنانے پر رضامند ہیں؟--%>
                     <asp:Label ID="Label18" runat="server" Text="کیا جواب دہندہ بچے کو وی آئی آر بینڈ دوبارہ پہنانے پر رضامند ہیں؟"></asp:Label>
                 </td>
                 <td>D18</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:RadioButtonList ID="RadioButtonList3" autopostback="true" onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:RadioButtonList>--%>
                     <asp:DropDownList ID="DropDownList9" runat="server">
                         <asp:ListItem>--Select One --</asp:ListItem>
                         <asp:ListItem>ہاں</asp:ListItem>
                         <asp:ListItem>نہیں</asp:ListItem>
                         <asp:ListItem>معلوم نہیں</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td><%--دیئے جانے والے نئے وی آئی آر بینڈ کا سیریل نمبر کیا ہے--%>
                     <asp:Label ID="Label19" runat="server" Text="دیئے جانے والے نئے وی آئی آر بینڈ کا سیریل نمبر کیا ہے"></asp:Label>
                 </td>
                 <td>D19</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td><%--ویکسینشن کی متوقع تاریخ کیا تھی:(سال، ماہ ، دن)--%>
                     <asp:Label ID="Label20" runat="server" Text="ویکسینشن کی متوقع تاریخ کیا تھی:(سال، ماہ ، دن)"></asp:Label>
                 </td>
                 <td>D20</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td><%--آج کی تاریخ لکھیں جب ویکسین لگائی گئی ہے: (سال ، ماہ ، دن )--%> 
                     <asp:Label ID="Label21" runat="server" Text="آج کی تاریخ لکھیں جب ویکسین لگائی گئی ہے: (سال ، ماہ ، دن )"></asp:Label>
                 </td>
                 <td>D21</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td><%--لگنےوالی ویکسینزکانام لکھیں:--%>
                     <asp:Label ID="Label22" runat="server" Text="لگنےوالی ویکسینزکانام لکھیں:"></asp:Label>
                 </td>
                 <td>D22</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td align="right">
                     <%--<asp:CheckBoxList ID="CheckBoxList8" runat="server" TextAlign="Left">
                         <asp:ListItem>  II پینٹا ویلنٹ         </asp:ListItem>
                         <asp:ListItem>او پی وی</asp:ListItem>
                         <asp:ListItem>II  پی سی وی  </asp:ListItem>
                     </asp:CheckBoxList>--%>
                     <asp:CheckBox ID="CheckBox48" runat="server" Text=" II پینٹا ویلنٹ" TextAlign="Left" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:CheckBox ID="CheckBox49" runat="server" Text="او پی وی" TextAlign="Left" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:CheckBox ID="CheckBox50" runat="server" Text="II  پی سی وی" TextAlign="Left" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>
            </div>



   

    <section id="newsletter">
        <div class="container">
            <h1>Press Button To Submit Form</h1>
            
               <!-- <input type="email" placeholder="Enter Email Address..." />-->
<br />&nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" class="button_1" Text="Submit" OnClick="Button1_Click" />
            
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