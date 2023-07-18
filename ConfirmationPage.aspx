<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="BookMovies.ConfirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<title>Movie Go</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 510px;
            height: 219px;
        }
    </style>

</head>
<body  class="body">
	<div class="container">
        <div>
            <nav class="row">

                <a href="home.html" style="text-decoration:none; width:150px; height:80px;">
                    <h2 style="color: red; font-size: 40px; width: 200px; height: 0px ">Movie Go</h2>
                </a>


                <ul class="main-nav">
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="MovieForm.aspx">BOOKING</a></li>
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


    <form id="form1" runat="server" style="text-align:center;">
        <div style="margin-left: auto; border-radius: 25px; margin-right:auto;" class="auto-style25">
        	
			<center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" style="margin:auto;" Font-Size="XX-Large" Text="Confirmation" ForeColor="#FF6600"></asp:Label></center>
			<br />
			<br />

			<asp:Image ID="Image1" runat="server" Height="221px" Width="404px" ImageUrl="~/Images/11m.jpg" />

			<br />
			<br />
			<br />

			<table style="margin-left: auto; margin-right:auto; background-color: chartreuse;" class="auto-style1">
				<tr>
					<td class="auto-style30">&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Movie" ForeColor="Blue"></asp:Label>
					</td>
					<td class="auto-style8"> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
					&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style31">
						<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Ticket Type" ForeColor="Blue"></asp:Label>
					</td>
					<td class="auto-style32">
						<asp:Label ID="Label17" runat="server" Text="General :" Font-Bold="True"></asp:Label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

						<asp:Label ID="Label16" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="#CC3300"></asp:Label>
						&nbsp;<br />

						<asp:Label ID="Label19" runat="server" Text="Seniors & kids :" Font-Bold="True" ></asp:Label>
						&nbsp;
					
						<asp:Label ID="Label20" runat="server" Text="Label" Font-Bold="True"  ForeColor="#CC3300"></asp:Label>
						<br />
					</td>
				</tr>
				<tr>
					<td class="auto-style20">
						<asp:Label ID="Label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Total Tickets" ForeColor="Blue"></asp:Label>

					</td>
					<td class="auto-style24">
						<asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="True"  ForeColor="#CC3300"></asp:Label>
						&nbsp;</td>
				</tr>			
			</table>

        	<br />
			<br />
			
			<asp:Button ID="Button1" runat="server" style="border-radius: 25px;" Width="121px" BackColor="#009999" Font-Bold="True"  ForeColor="#66FF99" Height="35px" CssClass="auto-style29" Text="More Movies" OnClick="Button1_Click" />

			<br />
			<br />

			<asp:Button ID="Button5" runat="server" style="border-radius: 25px;" Width="121px" BackColor="#009999"  Font-Bold="True"  ForeColor="#66FF99" Height="35px" CssClass="auto-style29" Text="LogOut" OnClick="Button5_Click" />
			
        </div>

		<br />
		<br />
		<br />

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