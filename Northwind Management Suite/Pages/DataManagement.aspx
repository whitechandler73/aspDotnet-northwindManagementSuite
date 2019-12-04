<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManagement.aspx.cs" Inherits="Pages_DataManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" type="text/css" href="../Styles/DataManagement.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/NavStyle.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/FooterStyle.css" />

    <title>Northwind - Data Management</title>
</head>
<body>    
    <div class="header">
        <div class="navContainer">
            <nav class="navBar">
                <ul>
                     <li class="navBarListItem" id="navBarNorthwindLogo">Northwind Management Suite
                        <img class="northwindLogoImgNav" src="../Images/12305709971640903060qubodup_Swirly_logo_thing.svg.hi.png" /></li>
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
    
        <br />
    
        <asp:DropDownList ID="TableDDL" runat="server" Width="327px" OnSelectedIndexChanged="TableDDL_SelectedIndexChanged" AutoPostBack ="true">
            <asp:ListItem Value = "category">Category</asp:ListItem>
            <asp:ListItem Value = "customers">Customers</asp:ListItem>
            <asp:ListItem Value = "employees">Employees</asp:ListItem>
            <asp:ListItem Value = "order_details">Order_Details</asp:ListItem>
            <asp:ListItem Value = "orders">Orders</asp:ListItem>
            <asp:ListItem Value = "products">Products</asp:ListItem>
            <asp:ListItem Value = "shippers">Shippers</asp:ListItem>
            <asp:ListItem Value = "suppliers">Suppliers</asp:ListItem>
            <asp:ListItem Selected="True" Value="selectATable">Select a Table</asp:ListItem>
        </asp:DropDownList>
    
        <br />
    
    </div>
        <asp:GridView ID="orderDetailsTbl" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="OrderDetailID" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible="false">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="OrderDetailID" HeaderText="OrderDetailID" ReadOnly="True" SortExpression="OrderDetailID" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Order_Details] WHERE [OrderDetailID] = @OrderDetailID" InsertCommand="INSERT INTO [Order_Details] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (@OrderDetailID, @OrderID, @ProductID, @Quantity)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [OrderDetailID], [OrderID], [ProductID], [Quantity] FROM [Order_Details]" UpdateCommand="UPDATE [Order_Details] SET [OrderID] = @OrderID, [ProductID] = @ProductID, [Quantity] = @Quantity WHERE [OrderDetailID] = @OrderDetailID">
            <DeleteParameters>
                <asp:Parameter Name="OrderDetailID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderDetailID" Type="Int32" />
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="OrderDetailID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="customersTbl" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible="False" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [County]) VALUES (@CustomerID, @CustomerName, @ContactName, @Address, @City, @PostalCode, @County)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [County] FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CustomerName] = @CustomerName, [ContactName] = @ContactName, [Address] = @Address, [City] = @City, [PostalCode] = @PostalCode, [County] = @County WHERE [CustomerID] = @CustomerID">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="County" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="County" Type="String" />
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="productsTbl" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="ProductID" DataSourceID="SqlDataSource6" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible ="false">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (@ProductID, @ProductName, @SupplierID, @CategoryID, @Unit, @Price)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price] FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [Unit] = @Unit, [Price] = @Price WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="Unit" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="Unit" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="employeesTbl" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible ="False" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (@EmployeeID, @LastName, @FirstName, @BirthDate, @Photo, @Notes)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [LastName] = @LastName, [FirstName] = @FirstName, [BirthDate] = @BirthDate, [Photo] = @Photo, [Notes] = @Notes WHERE [EmployeeID] = @EmployeeID">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter DbType="Date" Name="BirthDate" />
                <asp:Parameter Name="Photo" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter DbType="Date" Name="BirthDate" />
                <asp:Parameter Name="Photo" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="ordersTbl" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="OrderID" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible ="false">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="ShipperID" HeaderText="ShipperID" SortExpression="ShipperID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (@OrderID, @CustomerID, @EmployeeID, @OrderDate, @ShipperID)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [CustomerID] = @CustomerID, [EmployeeID] = @EmployeeID, [OrderDate] = @OrderDate, [ShipperID] = @ShipperID WHERE [OrderID] = @OrderID">
            <DeleteParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="OrderDate" />
                <asp:Parameter Name="ShipperID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="OrderDate" />
                <asp:Parameter Name="ShipperID" Type="Int32" />
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="suppliersTbl" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="SupplierID" DataSourceID="SqlDataSource8" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible ="false">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" SortExpression="SupplierID" />
                <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" SortExpression="SupplierName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Suppliers] WHERE [SupplierID] = @SupplierID" InsertCommand="INSERT INTO [Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (@SupplierID, @SupplierName, @ContactName, @Address, @City, @PostalCode, @Country, @Phone)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone] FROM [Suppliers]" UpdateCommand="UPDATE [Suppliers] SET [SupplierName] = @SupplierName, [ContactName] = @ContactName, [Address] = @Address, [City] = @City, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone WHERE [SupplierID] = @SupplierID">
            <DeleteParameters>
                <asp:Parameter Name="SupplierID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="SupplierName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SupplierName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="shippersTbl" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="ShipperID" DataSourceID="SqlDataSource7" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible ="false">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ShipperID" HeaderText="ShipperID" ReadOnly="True" SortExpression="ShipperID" />
                <asp:BoundField DataField="ShipperName" HeaderText="ShipperName" SortExpression="ShipperName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Shippers] WHERE [ShipperID] = @ShipperID" InsertCommand="INSERT INTO [Shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (@ShipperID, @ShipperName, @Phone)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [ShipperID], [ShipperName], [Phone] FROM [Shippers]" UpdateCommand="UPDATE [Shippers] SET [ShipperName] = @ShipperName, [Phone] = @Phone WHERE [ShipperID] = @ShipperID">
            <DeleteParameters>
                <asp:Parameter Name="ShipperID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ShipperID" Type="Int32" />
                <asp:Parameter Name="ShipperName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ShipperName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="ShipperID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="categoryTbl" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="10" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="25%" HorizontalAlign="Right" Width="50%" Visible="False" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusinessDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description]) VALUES (@CategoryName, @Description)" ProviderName="<%$ ConnectionStrings:BusinessDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Description] = @Description WHERE [CategoryID] = @CategoryID">
            <DeleteParameters>
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

    


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
</body>
</html>
