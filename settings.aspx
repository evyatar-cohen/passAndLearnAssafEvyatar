<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Settings" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <style> @import url('https://fonts.googleapis.com/css?family=Rubik&display=swap');</style>
        <title>מחולל מסור ולמד / דף הגדרות</title>
    <meta name="description" content="הגדרות המשחק." />
    <meta name="keywords" content="מחולל, מסור, למד, כדורגל, משחק לימודי , הגדרות" />
    <meta name="author" content=" אביתר כהן, אסף זיתוני" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<link rel="shortcut icon" type="image/png" src="images/favicon.png"/>


    <link href="styles/myStyle.css" rel="stylesheet" />
        <script src="jscripts/jquery-1.12.0.min.js"></script>
    <script src="jscripts/JavaScript.js"></script>
</head>
<body lang="he" dir="rtl">
    <form id="form1" runat="server">
        <div id="header">
     <a href="Default.aspx"><img id="logo" src="images/Logo.svg" /> </a>
     <nav id="GenNav">
                <ul>
                     <li><a href="index.aspx" class="NavLi" id="ToTheGame">למשחק</a></li>
                    <li><a class="about" id="ToTheGame2">אודות</a></li>

                </ul>
            </nav>
</div>
                <div id="aboutDiv" class="popUp bounceInDown hide">
            <a class="closeAbout">X</a>
            <p> <img id="logo2" src="images/Logo.svg" /></p>
            <p>אפיון ופיתוח: <i>אסף זיתוני ואביתר כהן</i> </p>

            <p>
                פותח במסגרת פרויקט בקורסים: <br />
                סביבות לימוד אינטראקטיביות 1 & אנימציה, תשע"ט
            </p>
            <p>
                <a id="log" href="http://www.hit.ac.il/telem/overview">
                    הפקולטה לטכנולוגיות למידה
                </a>
                <br />

                המכון הטכנולוגי חולון
            </p>

            <img id="hit" src="images/hit.png" />
        </div>
        <div id="FullPage2">
           <asp:Button ID="imgBtnBack" runat="server" value="" PostBackUrl="~/Default.aspx" />
           <asp:Button ID="imgBtnSave" runat="server" value="" OnClick="updateXmlAndBack"/>
          <div id="settingstitle">
            <h2>הגדרות</h2>
            <h3>שם המשחק</h3>
            <p>(1-50)</p>
                </div>
            <asp:TextBox ID="addNameTB2" item="1" CharacterLimit="60" Font-Names="Rubik" CssClass="CharacterCount" runat="server" ></asp:TextBox>
            <asp:Label ID="LabelCounter1" runat="server" Text="0"></asp:Label>
            <h4 id="TimePerQ">הגדרת זמן לשאלה</h4>
            <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem Text="ללא הגבלה" Value="0" />
                 <asp:ListItem Text="30 שניות" Value="1" />
                 <asp:ListItem Text="45 שניות" Value="2" />
                 <asp:ListItem Text="60 שניות" Value="3" />
            </asp:DropDownList>
            <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/trees/XMLFile.xml"></asp:XmlDataSource>
            <div id="sideBtns">
            <asp:Button ID="imgBtnSaveNEdit" runat="server" OnClick="updateXmlAndNext"/>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            
        </div>
    </form>
</body>
</html>
