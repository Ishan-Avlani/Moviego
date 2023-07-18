<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Moviego_one.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .frm {
    background-color: black;
    color: cornsilk;
    padding: 20px;
    width: 30%;
    border: 2px solid #007b5e;
    border-radius: 20px;
    height: 275px;
}
    </style>
</head>
<body class="body">

    <div class="container">
    		
        <div>
            <nav class="row">
                
                    <a href="home.html" style="text-decoration:none; width:150px; height:80px;">
                        <h2 style="color: red; font-size: 40px; width: 200px; height: 0px ">Movie Go</h2>
                    </a>
             
                <ul class="main-nav">
                    <li><a href="home.html">HOME</a></li>
                    <li><a href="login.aspx">BOOKING</a></li>
                    <li><a href="login.aspx">ConfirmationPage</a></li>
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

        <center>
            <span>
        <asp:Label ID="Label1" runat="server" Text="Label" BackColor="White" ForeColor="Red" Font-Bold="true"></asp:Label>
        </span>
        </center>
        
        <br />

    <center>
    <div  class="container frm">
        <center><h2 style="color:cornsilk;">Admin Login Form</h2></center>
        <hr/>
	    <br/>
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td>Username</td>
                    <td>&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Red"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Password </td>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="Red" TextMode="Password"></asp:TextBox>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Red" Height="36px" Text="Submit" Width="75px" OnClick="Button1_Click" />
            &nbsp;<span><a href="signin.aspx">New user ? </a> </span>
        </form>
    </div>
    </center>

	 <div>
            <center>
                <h3 style="color:red;padding-top:20px;">
                    &copy; All Rights Reserved by Ishan Sandip Avlani
                </h3>
            </center>
        </div>
    
	</div>
</body>
</html>
