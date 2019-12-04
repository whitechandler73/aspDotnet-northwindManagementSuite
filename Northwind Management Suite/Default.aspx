<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="language" content="english" /> 
    <meta http-equiv="content-type" content="text/html" />
    <meta name="author" content="Michael White" />

    <link rel="stylesheet" type="text/css" href="../Styles/Default.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/NavStyle.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/FooterStyle.css" />

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
                            <p id="aboutParagraph">&emsp;Northwind Food Supply was founded in 1910 and have been serving the consumers of the Scranton, Pennsylvania area ever since. We here at Northwind supply the fastest shipping services and most delicious food supplies in the state of Pennsylvania. All of the food packaged here at Northwind is guaranteed fresh, being as we procure our products only from local farms here in Scranton. We believe that local restaurants should be cooking with nothing but local produce, thus invigorating the surrounding economies. <br /><br />&emsp;Food is something that brings everybody together, from any walk of life, so we are driven to provide our customers with the best. We apply this attitude of “the best” not only to our food supply but as well as our shipping services, offering the lowest bulk shipping rates on in the entire Northeast region. Getting food right from the farm and onto your customer’s table as quickly as possible is of upmost importance to us here at Northwind. Our personal mission statement is to assure fast and fresh food, without compromising customer service.</p>
                        </div>
                    </div>

                    <div class="rightSpaceHolder">
                        <div class="moreStuffContainer">
                            <div class="headerContainer">
                                <h3 class="sectionHeader">More Stuff</h3>
                            </div>
                            <div class="paragraphContainer">
                                <hr />
                                <article id="moreStuffParagraph">&emsp;
                                    <ul class ="moreStuffList">
                                        <li class="moreStuffListElement">&emsp;Northwind Food Supply is holding our annual Food Drive for the Needy on December 14th. Be sure to come out and help the homeless problem here in Scranton. Our goal is to raise at least $10,000 worth of canned food for the local homeless shelter.</li>
                                        <li class="moreStuffListElement">&emsp;Northwind is a current sponsor of The American Cancer Society’s Relay for Life to raise awareness for breast cancer. If you are interested in being on the Northwind Relay for Life team please contact Chandler White. His contact information is found on the contact page of our website.</li>
                                        <li class="moreStuffListElement">&emsp;Bring-Your-Kid-To-Work Day is coming up soon! This Friday, December 6th, bring your child to work so they can experience the joys of food packing and shipping!</li>
                                        <li class="moreStuffListElement">&emsp;Bring-Your-Kid-To-Work Day is coming up soon! Stinky smelly poopie butthole! Haha! This Friday, December 6th, bring your child to work so they can experience the joys of food packing and shipping!</li>
                                        <li class="moreStuffListElement">&emsp;We are looking to expand! Northwind Food Supply is in talks to open a new office in Stamford, Connecticut. The opening date is still undecided so we will return with more information at a later date.</li>
                                    </ul>
                                </article>
                            </div>
                        </div>
                    </div>
                </div> 
        </main>
    </div>
    <div class="zoneBorder">
            <!-- Used to space the footer from the rest of the body's content -->
    </div>


        <footer>
            <div class="footerContainer">
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
                    <!-- maybe we'll put something here - I was thinking a logo? Not a priority --> 
                </div>
                <div class="footer-rightSide">

            </div>
        </div>
        </footer>

    <script src="../Scripts/onLoad.js"></script>
</body>
</html>
