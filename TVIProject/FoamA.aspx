<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoamA.aspx.cs" Inherits="TVIProject.FoamA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TVI   | Form A </title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <meta name="description"content="Affordable and professional web design" />
    <meta name="keywords" content="web design, affordable web design,   professional web design" />
    <meta name="author" content="Brad Traversy" />


    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Footer-with-map.css" rel="stylesheet" />
    <script src="jquery-3.2.1.min.js"></script>

         <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/notonastaliqurdudraft.css"/>

           <script type="text/javascript">

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
        .auto-style4 {
            height: 56px;
        }
        .auto-style5 {
            height: 56px;
            width: 210px;
        }
        .auto-style6 {
            width: 210px;
            font-weight: 700;
        }
        .auto-style7 {
            height: 56px;
            width: 469px;
        }
        .auto-style8 {
            width: 469px;
        }
        .auto-style9 {
            direction: ltr;
            width: 469px;
        }
        .auto-style11 {
            height: 56px;
            width: 1131px;
        }
        .auto-style12 {
        }
        .auto-style13 {
            height: 56px;
            width: 218px;
        }
        .auto-style14 {
            width: 218px;
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
                <%--<tr><th>
                         <td class="auto-style7">
                    <div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" OnClick="btnlogout_Click" Text="Logout" />
                </td>
                         </th></tr>--%>

            </div> 
                  <nav>
                    <ul><li><a href="Admin.aspx">Home</a></li>
                        <li class="current"><a href="FoamA.aspx">Form A</a></li>
                        <li><a href="FoamB.aspx">Form B</a></li>
                        <li><a href="FoamC.aspx">Form C</a></li>
                        <li><a href="FoamD.aspx">Form D</a></li>
                        <li ><a href="FoamE.aspx">Form E</a></li>
                        <li><a href="FoamF.aspx">Form F</a></li>
                        <li><a href="ViewA.aspx">Views</a></li>
                    </ul>
                </nav>
        </div>
    </header>
</div>
                  
    </header>
        </div>
        <div id="wrapper" >
        <!--Foam Start Here-->
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
         <table class="auto-style1" border-spacing: "5px";>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <div>
                        <asp:Label ID="lbluser" runat="server" Text=""></asp:Label>
                    </div>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="btnlogout" runat="server" OnClick="btnlogout_Click" Text="Logout" />
                </td>
                <td class="auto-style11" >
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td> 
                    <asp:Label ID="Label1" runat="server" Text="&nbsp;بچے کی عمر)دنوں میں)"></asp:Label>
                </td>
                <td class="auto-style6">A1</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td> 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" ImageUrl="calender.jpg"  Width="21px" OnClick="ImageButton1_Click" />

                    <asp:Calendar ID="Calendar1" runat="server" onselectionchanged="Calendar1_SelectionChanged" Visible="False" CaptionAlign="Right">
                    </asp:Calendar>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td> 
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="بچے کو وقت پر حفاظتی ٹیکے لگوانے کے لیے نہ لانے کی وجہ؟"></asp:Label>
                </td>
                <td class="auto-style6">A2</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"   style="text-align: center" >
                        <asp:ListItem Value="0">--Select One--</asp:ListItem>
                        <asp:ListItem>حفاظتی ٹیکوں سےمتعلق معلومات نہیں تھی</asp:ListItem>
                        <asp:ListItem>بچے کو کوئی حفاظتی ٹیکوں کےسینٹرلانےوالانہیں تھا</asp:ListItem>
                        <asp:ListItem>بچہ بیمار تھا</asp:ListItem>
                        <asp:ListItem>بچہ علاقےْْ/شہر سےباہرتھا</asp:ListItem>
                        <asp:ListItem>پہلےلائےتھےلیکن سینٹر پر ویکسین دستیاب نہیں تھی</asp:ListItem>
                        <asp:ListItem>دیگر (دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" TextAlign="Left">
                        <asp:ListItem>حفاظتی ٹیکوں سےمتعلق معلومات نہیں تھی</asp:ListItem>
                        <asp:ListItem>بچے کو کوئی حفاظتی ٹیکوں کےسینٹرلانےوالانہیں تھا</asp:ListItem>
                        <asp:ListItem>بچہ بیمار تھا</asp:ListItem>
                        <asp:ListItem>بچہ علاقےْْ/شہر سےباہرتھا</asp:ListItem>
                        <asp:ListItem>پہلےلائےتھےلیکن سینٹر پر ویکسین دستیاب نہیں تھی</asp:ListItem>
                        <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:RadioButtonList>--%>
                    <br />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="کیا حفاظتی ٹیکوں کےمرکز لایا جانے والا بچہ اور اس کی والدہ اگلے اٹھارہ ہفتے تک اس علاقے میں رکیں گے؟"></asp:Label>
                </td>
                <td class="auto-style6">A3</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    <br />
                    <br />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td align="right">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"   style="text-align: center" >
                        <asp:ListItem>--Select One--</asp:ListItem>
                        <asp:ListItem>ہاں</asp:ListItem>
                        <asp:ListItem>نہیں</asp:ListItem>
                        <asp:ListItem>معلوم نہیں </asp:ListItem>
                    </asp:DropDownList>
                    <%--<asp:RadioButtonList ID="RadioButtonList2" autopostback="true"
        onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                        <asp:ListItem>ہاں</asp:ListItem>
                        <asp:ListItem>نہیں</asp:ListItem>
                        <asp:ListItem>معلوم نہیں</asp:ListItem>
                    </asp:RadioButtonList>--%>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="(جواب دہندہ کی عمر لکھیں: (سال"></asp:Label>
                </td>
                <td class="auto-style6">A4</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Text=":جواب دہندہ کا نا م لکھیں"></asp:Label>
                </td>
                <td class="auto-style6">A5</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="جوابدہندہ کا بچے کے ساتھ کیارشتہ ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A6</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="والد" TextAlign="Left" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox2" runat="server" TextAlign="Left" Text="والدہ" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" TextAlign="Left" Text="دادی / نانی" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox4" runat="server" TextAlign="Left" Text="دادا/نانا" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox5" runat="server" TextAlign="Left" Text="چچا / ماموں/خالو" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox6" runat="server" TextAlign="Left" Text="چچی / ممانی/خالہ" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox7" runat="server" TextAlign="Left" Text="بھائی" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox8" runat="server" TextAlign="Left" Text="بہن" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox9" runat="server" TextAlign="Left" Text="پڑوسی" ValidationGroup="g"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox10" runat="server" TextAlign="Left" Text="دیگر)دیگر کی وضاحت کریں)" ValidationGroup="g"/>
                    <br />
                    <br />
                    <%--<asp:CheckBoxList ID="CheckBoxList1" autopostback="true"
        onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
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
                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="(رہائشی پتہ لکھیں: (جہاں اندراج شدہ بچہ رہتا ہے)"></asp:Label>
                </td>
                <td class="auto-style6">A7</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="کیا بچہ ریفرل کارڈ کے ساتھ ویکسینیشن سینٹر آیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A8</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"   style="text-align: center" >
                        <asp:ListItem>--Select One--</asp:ListItem>
                        <asp:ListItem>ہاں</asp:ListItem>
                        <asp:ListItem>نہیں</asp:ListItem>
                    </asp:DropDownList>
                    <%--<asp:RadioButtonList ID="RadioButtonList3" autopostback="true"
        onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                        <asp:ListItem>  ہاں    </asp:ListItem>
                        <asp:ListItem>  نہیں</asp:ListItem>
                    </asp:RadioButtonList>--%>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="کس نے ریفر ل کارڈدیا؟"></asp:Label>
                </td>
                <td class="auto-style6">A9</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True"   style="text-align: center" >
                        <asp:ListItem>--Select One--</asp:ListItem>
                        <asp:ListItem>سی ایم ڈبلیو</asp:ListItem>
                        <asp:ListItem>ایل ایچ ڈبلیو</asp:ListItem>
                        <asp:ListItem>ایف سی وی</asp:ListItem>
                        <asp:ListItem>معلوم نہیں</asp:ListItem>
                    </asp:DropDownList>
                    <%--<asp:RadioButtonList ID="RadioButtonList4" autopostback="true"
        onselectedindexchanged="Index_Changed" runat="server" TextAlign="Left">
                        <asp:ListItem>     سی ایم ڈبلیو         </asp:ListItem>
                        <asp:ListItem>     ایل ایچ ڈبلیو         </asp:ListItem>
                        <asp:ListItem>     ایف سی وی      </asp:ListItem>
                        <asp:ListItem>     معلوم نہیں</asp:ListItem>
                    </asp:RadioButtonList>--%>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 40px" class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 80px" class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="اس فرد کانام بتائیں جس نے ریفرل کارڈدیاہے:فرد کا نام"></asp:Label>
                </td>
                <td class="auto-style6">A10a</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 80px" class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 80px" class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>ا<asp:Label ID="Label11" runat="server" Text="س کلینک کانام بتائیں جس نے ریفرل کارڈدیاہے:سینٹر کا نام"></asp:Label>
                </td>
                <td class="auto-style6">A10b</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="اس سینٹر کانام بتائیں جس نے ریفرل کارڈدیاہے:کلینک کا نام"></asp:Label>
                </td>
                <td class="auto-style6">A10c</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="بچے کا نام کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A11</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="بچے کی جنس کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A12</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <br />
                    <asp:CheckBox ID="CheckBox11" runat="server" textalign="Left" Text="بچہ"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox12" runat="server" textalign="Left" Text="بچی"/>
                    <%--<asp:CheckBoxList ID="CheckBoxList2" runat="server" TextAlign="Left">
                        <asp:ListItem>بچہ</asp:ListItem>
                        <asp:ListItem>بچی</asp:ListItem>
                    </asp:CheckBoxList>--%>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="&nbsp;بچے کی تاریخ پیدائش لکھیں:( سال ، مہینہ، دن)"></asp:Label>
                </td>
                <td class="auto-style6">A13</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="بچے کی والدہ کا نام کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A14</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="بچےکے والد کا نام کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A15</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="خاندان کا رابطہ نمبر کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A16a</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="پی ٹی سی ایل فون نمبر"></asp:Label>
                </td>
                <td class="auto-style6">A16b</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="موبائل نمبر"></asp:Label>
                </td>
                <td class="auto-style6">A16c</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="بچے کی پیدائش کہاں ہوئی؟"></asp:Label>
                </td>
                <td class="auto-style6">A17</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <br />
                    <asp:CheckBox ID="CheckBox13" runat="server" textalign="Left" Text="گھر"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox14" runat="server" textalign="Left" Text="سرکاری ہسپتال"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox15" runat="server" textalign="Left" Text="نجی ہسپتال"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox16" runat="server" textalign="Left" Text="میٹرنٹی ہوم ٹی بی اے یا ایل ایچ وی کا گھر"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox17" runat="server" textalign="Left" Text="دیگر)دیگر کی وضاحت کریں)"/>
                    <br />
                    <br />
                    <%--<asp:CheckBoxList ID="CheckBoxList3" runat="server" TextAlign="Left">
                        <asp:ListItem>گھر</asp:ListItem>
                        <asp:ListItem>سرکاری ہسپتال</asp:ListItem>
                        <asp:ListItem>نجی ہسپتال </asp:ListItem>
                        <asp:ListItem>میٹرنٹی ہوم (ٹی بی اے یا ایل ایچ وی کا گھر )</asp:ListItem>
                        <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:CheckBoxList>--%>
                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="بچے کی قومیت کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A18</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <br />
                    <asp:CheckBox ID="CheckBox18" runat="server" textalign="Left" Text="اردو"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox19" runat="server" textalign="Left" Text="سندھی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox20" runat="server" textalign="Left" Text="پنجابی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox21" runat="server" textalign="Left" Text="بلوچ"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox22" runat="server" textalign="Left" Text="پشتون"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox23" runat="server" textalign="Left" Text="سرائیکی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox24" runat="server" textalign="Left" Text="دیگر)دیگر کی وضاحت کریں)"/>
                    <%--<asp:CheckBoxList ID="CheckBoxList4" runat="server" TextAlign="Left">
                        <asp:ListItem>اردو</asp:ListItem>
                        <asp:ListItem>سندھی</asp:ListItem>
                        <asp:ListItem>پنجابی</asp:ListItem>
                        <asp:ListItem>بلوچ</asp:ListItem>
                        <asp:ListItem>پشتون</asp:ListItem>
                        <asp:ListItem>سرائیکی</asp:ListItem>
                        <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:CheckBoxList>--%>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="والدہ کی تعلیمی حیثیت کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A19</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <br />
                    <asp:CheckBox ID="CheckBox25" runat="server" textalign="Left" Text="روایتی تعلیم سے نا آشنا"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox26" runat="server" textalign="Left" Text="ابتدائی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox27" runat="server" textalign="Left" Text="ثانوی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox28" runat="server" textalign="Left" Text="میٹرک"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox29" runat="server" textalign="Left" Text="انٹرمیڈیٹ"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox30" runat="server" textalign="Left" Text="گریجویشن"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox31" runat="server" textalign="Left" Text="ماسٹرز "/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox32" runat="server" textalign="Left" Text="مذہبی تعلیم"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox33" runat="server" textalign="Left" Text="معلوم نہیں"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox34" runat="server" textalign="Left" Text="دیگر)دیگر کی وضاحت کریں)"/>
                    <br />
                    <br />
                    <%--<asp:CheckBoxList ID="CheckBoxList5" runat="server" TextAlign="Left">
                        <asp:ListItem>روایتی تعلیم سے نا آشنا</asp:ListItem>
                        <asp:ListItem>ابتدائی</asp:ListItem>
                        <asp:ListItem>ثانوی  </asp:ListItem>
                        <asp:ListItem>میٹرک</asp:ListItem>
                        <asp:ListItem>انٹرمیڈیٹ</asp:ListItem>
                        <asp:ListItem>گریجویشن</asp:ListItem>
                        <asp:ListItem>ماسٹرز  </asp:ListItem>
                        <asp:ListItem Value="مذہبی تعلیم"></asp:ListItem>
                        <asp:ListItem>معلوم نہیں</asp:ListItem>
                        <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:CheckBoxList>--%>
                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="والد کی تعلیمی حیثیت کیا ہے؟"></asp:Label>
                </td>
                <td class="auto-style6">A20</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td align="right">
                    <br />
                    <asp:CheckBox ID="CheckBox35" runat="server" textalign="Left" Text="روایتی تعلیم سے نا آشنا"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox36" runat="server" textalign="Left" Text="ابتدائی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox37" runat="server" textalign="Left" Text="ثانوی"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox38" runat="server" textalign="Left" Text="میٹرک"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox39" runat="server" textalign="Left" Text="انٹرمیڈیٹ"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox40" runat="server" textalign="Left" Text="گریجویشن"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox41" runat="server" textalign="Left" Text="ماسٹرز "/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox42" runat="server" textalign="Left" Text="مذہبی تعلیم"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox43" runat="server" textalign="Left" Text="معلوم نہیں"/>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox44" runat="server" textalign="Left" Text="دیگر)دیگر کی وضاحت کریں)"/>
                    <%--<asp:CheckBoxList ID="CheckBoxList6" runat="server" TextAlign="Left">
                        <asp:ListItem>روایتی تعلیم سے نا آشنا</asp:ListItem>
                        <asp:ListItem>ابتدائی</asp:ListItem>
                        <asp:ListItem>ثانوی  </asp:ListItem>
                        <asp:ListItem>میٹرک</asp:ListItem>
                        <asp:ListItem>انٹرمیڈیٹ</asp:ListItem>
                        <asp:ListItem>گریجویشن</asp:ListItem>
                        <asp:ListItem>ماسٹرز  </asp:ListItem>
                        <asp:ListItem Value="مذہبی تعلیم"></asp:ListItem>
                        <asp:ListItem>معلوم نہیں</asp:ListItem>
                        <asp:ListItem>دیگر)دیگر کی وضاحت کریں)</asp:ListItem>
                    </asp:CheckBoxList>--%>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="lbmsg" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
            </div>







   

    <section id="newsletter">
        <div class="container">
             </ContentTemplate>
        </asp:UpdatePanel>
            <h1>Press Button To Submit Form</h1>
            
               <!-- <input type="email" placeholder="Enter Email Address..." />-->
<br />&nbsp; &nbsp; &nbsp;
            
        &nbsp;
            <asp:Button ID="Button1" runat="server" class="button_1" Text="Submit" OnClick="Button1_Click" />
            
        </div>
    </section>

    <!--<section id="boxes">
        <div class="container">
            <div class="box">
                <img src="o.png" width="500px" ; height="200px" />
                <h3>HTML5 Markup</h3>
                <p>This is basic web page which contain some Tags, Header and UI Design to help user to interact with some one easily</p>
            </div>
            <div class="box">
                <img src="s.png" width="500px" ; height="200px" />
                <h3>CSS Styling</h3>
                <p>This is basic web page which contain some Tags, Header and UI Design to help user to interact with some one easily</p>
            </div>

            <div class="box">
                <img src="m.png" width="500px" ; height="200px" />
                <h3>Graphic Design  </h3>
                <p>This is basic web page which contain some Tags, Header and UI Design to help user to interact with some one easily</p>
            </div>
        </div>
    </section>-->




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
