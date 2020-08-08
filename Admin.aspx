<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Exercise_5.Admin" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color:black;">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="images/cake-mart_logo.png" alt="" /></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#allorder">All Order</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login.aspx"><asp:Label ID="Label2" runat="server">Log In</asp:Label></a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="logout.aspx"><asp:Label ID="Label3" runat="server">Logout</asp:Label></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Welcome To Our Cake Shop!</div>
                <div class="masthead-heading text-uppercase">It's Nice To Meet You</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#allorder">See All Order</a>
            </div>
        </header>
    <section class="page-section bg-light" id="allorder">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">All Order</h2>
                </div>
                <form runat="server">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" width="100%" CssClass="table table-bordered">
                        <Columns>
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                            <asp:BoundField DataField="cakeName" HeaderText="cakeName" SortExpression="cakeName" />
                            <asp:BoundField DataField="toppingName" HeaderText="toppingName" SortExpression="toppingName" />
                            <asp:BoundField DataField="decorationName" HeaderText="decorationName" SortExpression="decorationName" />
                            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                            <asp:BoundField DataField="orderPrice" HeaderText="orderPrice" SortExpression="orderPrice" />
                            <asp:BoundField DataField="customerAddress" HeaderText="customerAddress" SortExpression="customerAddress" />
                            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" >
                            <ControlStyle CssClass="btn btn-danger" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderID] = @OrderID" SelectCommand="SELECT Cake.cakeName, Customer.customerName, Topping.toppingName, [Order].OrderID, [Order].quantity, [Order].decorationName, [Order].orderPrice, Customer.customerAddress FROM Cake INNER JOIN Topping INNER JOIN [Order] ON Topping.toppingID = [Order].toppingID INNER JOIN Customer ON [Order].customerID = Customer.customerID ON Cake.cakeID = [Order].cakeID">
                        <DeleteParameters>
                            <asp:Parameter Name="OrderID" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </div>
                    </form>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
