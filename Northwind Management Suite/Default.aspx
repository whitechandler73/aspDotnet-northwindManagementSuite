<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Styles/Default.css" />
    <link rel="stylesheet" type="text/css" href="Styles/NavStyle.css" />
    <title>Northwind - Home</title>
</head>
<body>
    <div class="header">
        <div class="navContainer">
            <nav class="navBar">
                <ul>
                    <li class="navBarListItem" id="navBarNorthwindLogo">Northwind Management Suite <img class="northwindLogoImg" src="Images/12305709971640903060qubodup_Swirly_logo_thing.svg.hi.png" /></li>
                    <li class="navBarListItem"><a href="Default.aspx">Home</a></li>
                    <li class="navBarListItem"><a href="Pages/DataManagement.aspx" target="_blank">Data Management</a></li>
                    <li class="navBarListItem"><a href="Pages/About.aspx">About</a></li>
                    <li class="navBarListItem"><a href="Pages/Contact.aspx">Contact</a></li>
                </ul>
            </nav>
        </div>
        <div id="bottomHeaderBorder"></div>
    </div>

    <div class="pageContent">
        <div class="bigLogoOuterContainer">
            <div class="bigLogoInnerContainer">
                <div class="bigNorthwindHeaderTop defaultHeader">
                    Northwind
                </div>
                <div class="bigNorthwindHeaderBottom defaultHeader">
                    Management Suite
                </div>
                <hr />
            </div>
        </div>

        <div class="zoneBorder"><!-- Used to space the header from the rest of the body's content --></div>

        <div class=""
            <div class="aboutContainer">
                <div class="aboutHeaderContainer">
                    <h3 id="aboutHeader">About</h3>
                </div>
                <div class="aboutParagraphContainer">
                    <p id="aboutParagraph">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

                </div>
            </div>
        


    </div>

</body>
</html>
