<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Pages_About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8" />
    <meta name="language" content="english" /> 
    <meta http-equiv="content-type" content="text/html" />
    <meta name="author" content="Michael White" />

    <link rel="stylesheet" type="text/css" href="../Styles/NavStyle.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/FooterStyle.css" />

    <title>Northwind - About</title>
</head>

<body>    
    <div class="header">
        <div class="navContainer">
            <nav class="navBar">
                <ul>
                     <li class="navBarListItem" id="navBarNorthwindLogo">Northwind Management Suite
                        <img class="northwindLogoImgNav" src="../Images/12305709971640903060qubodup_Swirly_logo_thing.svg.hi.png" /></li>
                    <li class="navBarListItem"><a href="../Default.aspx">Home</a></li>
                    <li class="navBarListItem"><a href="../Pages/DataManagement.aspx">Data Management</a></li>
                    <li class="navBarListItem"><a href="../Pages/About.aspx">About</a></li>
                    <li class="navBarListItem"><a href="../Pages/Contact.aspx">Contact</a></li>
                </ul>
            </nav>
        </div>
        <div id="bottomHeaderBorder"></div>
    </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>

    


        <footer>
            <div class="footerContainer">
                <div class="footer-leftSide">
                    <ul class="footerList">
                        <li class="footerElement">&copy; 2019 - Northwind</li>
                        <li class="footerElement footerLink" id="left-mostFooterElement"><a href="https://github.com/whitechandler73/aspDotnet-northwindManagementSuite">Github</a></li>
                        <li class="footerElement footerLinK"><a href="Pages/DataManagement.aspx">Data Management</a></li>
                        <li class="footerElement footerLink"><a href="Pages/About.aspx">About</a></li>
                        <li class="footerElement footerLink"><a href="Pages/Contact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-center">
                    <!-- maybe we'll put something here - I was thinking a logo? Not a priority --> 
                </div>
                <div class="footer-rightSide">

            </div>
        </div>
        </footer>
</body>
</html>
