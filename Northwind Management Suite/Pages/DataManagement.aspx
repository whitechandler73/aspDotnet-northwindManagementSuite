﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManagement.aspx.cs" Inherits="Pages_DataManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../Styles/NavStyle.css" />
    <title>Northwind - Data Management</title>
</head>
<body>    
    <div class="header">
        <div class="navContainer">
            <nav class="navBar">
                <ul>
                    <li class="navBarListItem" id="navBarNorthwindLogo">Northwind Management Suite <img class="northwindLogoImg" src="../Images/12305709971640903060qubodup_Swirly_logo_thing.svg.hi.png" /></li>
                    <li class="navBarListItem"><a href="../Default.aspx">Home</a></li>
                    <li class="navBarListItem"><a href="../Pages/DataManagement.aspx" target="_blank">Data Management</a></li>
                    <li class="navBarListItem"><a href="../Pages/About.aspx">About</a></li>
                    <li class="navBarListItem"><a href="../Pages/Contact.aspx">Contact</a></li>
                </ul>
            </nav>
        </div>
        <div id="bottomHeaderBorder"></div>
    </div>

    <!-- I think that we should put our dropDownList and Table views in this form - not sure --> 
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
