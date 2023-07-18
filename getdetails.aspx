<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getdetails.aspx.cs" Inherits="moviego.getdetails" %>

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

        <div>
            <center>
                <img src="Pictures/logo.png" />
            </center>
        </div>



        <br />
        <br />


        <center>
        <form id="form1" runat="server"> 
        <div>
            <table class="auto-style1">
                
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Height="121px" OnClick="Button2_Click" Text="View Latest Data" Width="194px" BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="Cornsilk" />
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
           

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="358px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="781px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
                    <asp:BoundField DataField="Name" HeaderText="File Name" SortExpression="Name" />
                    <asp:BoundField DataField="ContentType" HeaderText="Content Type" SortExpression="ContentType" />
                    <asp:BoundField DataField="mname" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="details" HeaderText="Details" SortExpression="ContentType" />
                    <asp:BoundField DataField="dname" HeaderText="Director" SortExpression="dname" />
                    <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                    <asp:BoundField DataField="starcast" HeaderText="Starcast" SortExpression="starcast" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="232px" ImageUrl='<%# "Pictures/" + Eval("Name") %>' Width="442px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Book Tickets">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Cancel" onClick="Button1_Click" data-imgpath='<%# Eval("Name") %>' data-moviename='<%# Eval("mname") %>' Text="Book" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
           

        
    </form>
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
