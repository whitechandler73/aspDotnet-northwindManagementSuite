﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Pages_Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../Styles/NavStyle.css" />
    <link rel="stylesheet"  type="text/css" href="../Styles/FooterStyle.css" />
    <title>Northwind - Contact</title>
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
        <h2>Development Team</h2>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:HyperLinkField DataNavigateUrlFields="Email" DataTextField="Email" HeaderText="Email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" SelectCommand="SELECT [Name], [Role], [Email] FROM [Contact]"></asp:SqlDataSource>
        <br />
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
