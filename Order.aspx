<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Exercise_5.WebForm2" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
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
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#aboutus">About Us</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#menu">Menu</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#order">Order</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#myorder">My Order</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login.aspx"><asp:Label ID="Label2" runat="server">Log In</asp:Label></a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="register.aspx"><asp:Label ID="Label1" runat="server">Register</asp:Label></a></li>
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
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#aboutus">Tell Me More</a>
            </div>
        </header>
    <section class="page-section" id="aboutus" style="background-color:#ffd800">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">About Us</h2>
                    <h3 class="section-subheading text-muted">Cake Shop was founded by a team of passionate and dedicated bakers who are committed in baking the most delicious cakes and pastries around. Using only the freshest ingredients we can find, you can be sure that you are served the best quality cake you can ever have.</h3>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Sales</h4>
                        <p class="text-muted">We have evolved to become one of a premium distributor and wholesaler for cakes and pastries to some well known resturants, cafes, supermart, hotels and bakery</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shipping-fast fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Good Delievery</h4>
                        <p class="text-muted">Our online store is a leading online shop in Singapore providing cakes and gifts deliveries within Singapore. We provide competitive prices, good after sales services and on-time delivery.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-clock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Time</h4>
                        <p class="text-muted">The Cake Shop provides same day delivery service seven days a week, including Sunday, within Singapore to provide a high level of customer service.</p>
                    </div>
                </div>
            </div>
        </section>
    <section class="page-section bg-light" id="menu">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Menu</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                                <img class="img-fluid" src="images/birthday cake.jpg" alt=""/>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Birthday cake</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                                <img class="img-fluid" src="images/Chocolate cake.jpg" alt=""/>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Chocolate cake</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                                <img class="img-fluid" src="images/Fruit cake.jpg" alt="" width="350px" />
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Fruit cake</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="portfolio-item">
                                <img class="img-fluid" src="images/Red velvet cake.jpg" alt=""/>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Red velvet cake</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <div class="portfolio-item">
                                <img class="img-fluid" src="images/vanilla cake.jpg" alt=""/>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Vanilla cake</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="portfolio-item">
                                <img class="img-fluid" src="images/wedding cake.jpg" alt=""width="350px"/>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Wedding cake</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <form runat="server">
    <section class="page-section" id="order">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Order</h2>
                    <h3 class="section-subheading text-muted">You can make your order here.</h3>
                </div>
                
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                Flavor : <asp:DropDownList ID="dd1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="cakeName" DataValueField="cakeName">
                            </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cakeName] FROM [Cake]"></asp:SqlDataSource>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                               Quantity : <asp:TextBox ID="tb1" CssClass="form-control" runat="server" AutoPostBack="True">1</asp:TextBox>
                                <p class="help-block text-danger"><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tb1" EnableClientScript="False" ErrorMessage="The minimum is 1 and maximum is 20" MaximumValue="20" MinimumValue="1" Type="Integer"></asp:RangeValidator></p>
                            </div>
                            <div class="form-group mb-md-0">
                                Topping :<asp:RadioButtonList ID="rd1" runat="server" DataSourceID="SqlDataSource2" DataTextField="toppingName" DataValueField="toppingName">
                        </asp:RadioButtonList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [toppingName] FROM [Topping]"></asp:SqlDataSource>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group mb-md-0">
                                Decoration :<asp:CheckBoxList ID="cb1" runat="server" DataSourceID="SqlDataSource3" DataTextField="decorationName" DataValueField="decorationPrice"></asp:CheckBoxList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [decorationName], [decorationPrice] FROM [Decoration]"></asp:SqlDataSource>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0" id="td2">
                            <asp:Label ID="Label9" runat="server" Visible="False">
                                Order Details :
                                <br/>
                                <asp:Image ID="Image1" runat="server" Height="300px" Width="400px" />
                                <br />
                                <br />
                                Flavor :
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                                <br />
                                Quantity :
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                <br />
                                Topping :
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                                <br />
                                Decoration :
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                                <br />
                                Total Price :
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                                <p class="help-block text-danger"></p>
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="Button3" CssClass="btn btn-primary btn-xl text-uppercase" runat="server" Text="Submit Order" OnClick="ClickButton1" />
                    </div>
            </div>
        </section>
    <section class="page-section bg-light" id="myorder">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">My Order</h2>
                </div>
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource5" width="100%" CssClass="table table-bordered">
                        <Columns>
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" ReadOnly="True"/>
                            <asp:BoundField DataField="cakeName" HeaderText="cakeName" SortExpression="cakeName" ReadOnly="True"/>
                            <asp:BoundField DataField="toppingName" HeaderText="toppingName" SortExpression="toppingName" ReadOnly="True"/>
                            <asp:BoundField DataField="decorationName" HeaderText="decorationName" SortExpression="decorationName" ReadOnly="True"/>
                            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" ReadOnly="True" />
                            <asp:BoundField DataField="orderPrice" HeaderText="orderPrice" SortExpression="orderPrice" ReadOnly="True"/>
                            <asp:BoundField DataField="customerAddress" HeaderText="customerAddress" SortExpression="customerAddress" />
                            <asp:CommandField ShowEditButton="True" ButtonType="Button" >
                            <ControlStyle CssClass="btn btn-warning" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Cake.cakeName, Customer.customerName, Topping.toppingName, [Order].OrderID, [Order].quantity, [Order].decorationName, [Order].orderPrice, Customer.customerAddress FROM Cake INNER JOIN Topping INNER JOIN [Order] ON Topping.toppingID = [Order].toppingID INNER JOIN Customer ON [Order].customerID = Customer.customerID ON Cake.cakeID = [Order].cakeID" UpdateCommand="UPDATE Customer SET customerAddress = @customerAddress FROM Customer INNER JOIN [Order] ON Customer.customerID = [Order].customerID WHERE OrderID=@OrderID">
                        <UpdateParameters>
                            <asp:Parameter Name="customerAddress" />
                            <asp:Parameter Name="OrderID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
                </div>
                <div class="text-center">
                <asp:Button ID="Button2" runat="server" Text="Refresh" CssClass="btn btn-primary btn-xl text-uppercase" OnClick="Button2_Click"/>
                    </div>
            </div>
        </section>
        </form>
    
</asp:Content>
