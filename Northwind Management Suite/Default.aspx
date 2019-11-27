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
    </div>

</body>
</html>
