<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Moviego_one.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sign In</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body class="body">
    <div class="container">
    <form id="form1" runat="server">

    <div>
            <nav class="row">
                
                    <a href="home.html" style="text-decoration:none; width:150px; height:80px;">
                        <h2 style="color: red; font-size: 40px; width: 200px; height: 0px ">Movie Go</h2>
                    </a>

                
                <ul class="main-nav">
                    <li><a href="home.html">HOME</a></li>
                    <li><a href="login.aspx">BOOKING</a></li>
                    <li><a href="about.aspx">ABOUT US</a></li>
                    <li><a href="contact.aspx">CONTACT US</a></li>
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

        <div >
            <center>
                <img src="logo.png" style="" />
            </center>
        </div>
        
        <div>
            <center>
                <table border="0" class="auto-style6" style="background-color:black; color: cornsilk;">
                    <tr>
                        <td class="auto-style1">Full Name </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="fullname" runat="server" ForeColor="Red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Address</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="address" runat="server" ForeColor="Red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Gender</td>
                        <td class="auto-style3">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="123px">
                                <asp:ListItem>male</asp:ListItem>
                                <asp:ListItem>female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">E-mail Address</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="email" runat="server" ForeColor="Red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Mobile Number</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="number" runat="server" ForeColor="Red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Username </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="username" runat="server" ForeColor="Red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Password</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="password" runat="server" TextMode="Password" ForeColor="Red"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Confirm Password</td>
                        <td class="auto-style5">
                            <br />
                            <asp:TextBox ID="password2" runat="server" TextMode="Password" ForeColor="Red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style5">
                            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="Red" OnClick="Button1_Click" Text="Submit" Width="95px" />
                        </td>
                    </tr>
                    </table>
            </center>
        </div>
                
                
        
        
        <div>
            <center>
                <h3 style="color:red;padding-top:20px;">
                    &copy; All Rights Reserved by Ishan Sandip Avlani
                </h3>
            </center>
        </div>
    </form>
	</div>
</body>
</html>
