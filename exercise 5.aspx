<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exercise 5.aspx.cs" Inherits="Exercise_5.exercise_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .button {
          background-color: #4CAF50;
          border: none;
          color: white;
          padding: 11px 30px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 13px;
          margin: 4px 2px;
          cursor: pointer;
          border-radius: 4px;
        }
        .input, .select {
          padding: 5px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td id="td1" runat="server">Flavor :
            <asp:DropDownList ID="dd1" runat="server">
                <asp:ListItem Value="5.37">Chocolate</asp:ListItem>
                <asp:ListItem Value="4.55">Red Velvet</asp:ListItem>
                <asp:ListItem Value="8.53">Fruit</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Quantity :
            <asp:TextBox ID="tb1" runat="server" AutoPostBack="True" CssClass="border input">1</asp:TextBox>

                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tb1" EnableClientScript="False" ErrorMessage="The minimum is 1 and maximum is 20" ForeColor="#FF3300" MaximumValue="20" MinimumValue="1" Type="Integer"></asp:RangeValidator>

            <br />
            <br />
            Topping :<asp:RadioButtonList ID="rd1" runat="server">
                            <asp:ListItem Value="3.40" Selected="True">Fondant</asp:ListItem>
                            <asp:ListItem Value="1.99">Buttercream</asp:ListItem>
                            <asp:ListItem Value="1.50">Naked</asp:ListItem>
                        </asp:RadioButtonList>
            <br />
            <br />
            Decoration :<asp:CheckBoxList ID="cb1" runat="server">
                            <asp:ListItem Value="2.99">M&amp;M</asp:ListItem>
                            <asp:ListItem Value="1.10">Snickers</asp:ListItem>
                            <asp:ListItem Value="0.99">Oreo</asp:ListItem>
                        </asp:CheckBoxList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit Order" OnClick="Button1_Click" CssClass="button border" />
                    </td>
                    <td id="td2" runat="server">Order Details :<br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="300px" Width="400px" />
                        <br />
                        <br />
                        Flavor :
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        Quantity :
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                        Topping :
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        Decoration :
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <br />
                        Total Price :
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
