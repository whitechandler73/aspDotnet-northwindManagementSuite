<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="language" content="english" /> 
    <meta http-equiv="content-type" content="text/html" />
    <meta name="author" content="Michael White" />
    <meta name="no-email-collection" content="http://www.unspam.com/noemailcollection/" />

    <link rel="stylesheet" type="text/css" href="Styles/Default.css" />
    <link rel="stylesheet" type="text/css" href="Styles/NavStyle.css" />
    <link rel="stylesheet" type="text/css" href="Styles/FooterStyle.css" />

    <title>Northwind - Home</title>
</head>
<body>
    <div class="header">
        <div class="navContainer">
            <nav class="navBar">
                <ul>
                    <li class="navBarListItem" id="navBarNorthwindLogo">Northwind Management Suite
                        <img class="northwindLogoImgNav" src="Images/12305709971640903060qubodup_Swirly_logo_thing.svg.hi.png" /></li>
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
        <div class="zoneBorder">
            <!-- Used to space the header from the rest of the body's content -->
        </div>
        <main>
                <div class="textDiv">
                    <div class="aboutContainer">
                        <div class="headerContainer">
                            <h3 id="sectionHeader">About</h3>
                        </div>
                        <div class="paragraphContainer">
                            <hr />
                            <p id="aboutParagraph">&emsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                        </div>
                    </div>

                    <div class="rightSpaceHolder">
                        <div class="moreShitContainer">
                            <div class="headerContainer">
                                <h3 class="sectionHeader">More Shit</h3>
                            </div>
                            <div class="paragraphContainer">
                                <hr />
                                <p id="moreShitParagraph">&emsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac tortor dignissim convallis aenean et tortor at. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Fermentum iaculis eu non diam phasellus. Ut sem viverra aliquet eget sit amet tellus cras adipiscing. Adipiscing tristique risus nec feugiat in fermentum posuere urna nec. Elementum nibh tellus molestie nunc non blandit. Diam sit amet nisl suscipit adipiscing bibendum. Faucibus purus in massa tempor. Sit amet est placerat in egestas erat imperdiet. Sit amet nisl suscipit adipiscing bibendum est ultricies integer. Viverra tellus in hac habitasse platea dictumst. Elementum pulvinar etiam non quam. Vitae tempus quam pellentesque nec. Platea dictumst vestibulum rhoncus est. Nec sagittis aliquam malesuada bibendum arcu.</p>
                            </div>
                        </div>
                    </div>
                </div> 
        </main>
    </div>
    <div class="zoneBorder">
            <!-- Used to space the footer from the rest of the body's content -->
    </div>
    <div class="footerContainer">
        <footer>
            <div class="footer-leftSide">
                <ul class="footerList">
                    <li class="footerElement">&copy; 2019 - Northwind</li>
                    <li class="footerElement footerLink" id="left-mostFooterElement"><a target="_blank" href="https://github.com/whitechandler73/aspDotnet-northwindManagementSuite">Github</a></li>
                    <li class="footerElement footerLinK"><a href="Pages/DataManagement.aspx">Data Management</a></li>
                    <li class="footerElement footerLink"><a href="Pages/About.aspx">About</a></li>
                    <li class="footerElement footerLink"><a href="Pages/Contact.aspx">Contact</a></li>
                </ul>
            </div>
            <div class="footer-center">
                <ul class="footerList">
                    <li class="footerElement"><img class="northwindLogoImgFooter" src="Images/12305709971640903060qubodup_Swirly_logo_thing.svg.hi.png" /></li>
                </ul>
            </div>
            <div class="footer-rightSide">

            </div>
        </footer>
    </div>


</body>
</html>
