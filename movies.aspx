<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="moviego.movies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Details</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="body">
    <div class="container">
        <div>
            <nav class="row">

                <a href="home.html" style="text-decoration:none; width:150px; height:80px;">
                    <h2 style="color: red; font-size: 40px; width: 200px; height: 0px ">Movie Go</h2>
                </a>

                <ul class="main-nav">
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="login.aspx">BOOKING</a></li>
                    <li><a href="ConfirmationPage.aspx">Confirmation</a></li>
                    <li class="dropdown">
                        <a href="#">LOGIN</a>
                        <div class="dropdown-content">
                            <a href="signin.aspx">Register</a>
                            <a href="login.aspx">User LogIn</a>
                            <a href="adminlogin.aspx">Admin LogIn</a>
                        </div>
                    </li>
                    <li>
                    </li>
                </ul>

            </nav>
        </div>

        <div>
            <center>
                <img src="logo.png" style="" />
            </center>
        </div>

        <br />
        <br />

        <center>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Movie Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Movie Description</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Director Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Movie Duration</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Star Cast</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Movie Image</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="101px" OnClick="Button1_Click" Text="Submit" Width="198px" />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Height="121px" OnClick="Button2_Click" Text="View Data" Width="194px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
              
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>

                <asp:BoundField DataField="name" HeaderText="Movie Name" SortExpression="name" />
                <asp:BoundField DataField="details" HeaderText="Movie Description" SortExpression="details" />
                <asp:BoundField DataField="dname" HeaderText="Director Name" SortExpression="dname" />
                <asp:BoundField DataField="duration" HeaderText="Movie Duration" SortExpression="duration" />
                <asp:BoundField DataField="starcast" HeaderText="Star Cast" SortExpression="starcast" />
                <asp:TemplateField HeaderText="Images">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="111px" Width="150px" ImageUrl='<%# "Pictures/" + Eval("Name") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
   
    </form>
            </center>
        </div>
    <div>
            <center>
                <h3 style="color:red;padding-top:20px;">
                    &copy; All Rights Reserved by Ishan Sandip Avlani
                </h3>
            </center>
        </div>
</body>
</html>
