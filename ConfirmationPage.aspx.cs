using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookMovies
{
	public partial class ConfirmationPage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Label6.Text = (string)(Session["MOVIEN"]);
			Label8.Text = (string)(Session["TotTic"]);
			Label16.Text = (string)(Session["GenTic"]);
			Label20.Text = (string)(Session["SenTic"]);

			Image1.ImageUrl = (string)(Session["IMG"]);		
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Server.Transfer("getdetails.aspx");
		}

		protected void Button5_Click(object sender, EventArgs e)
		{
			Server.Transfer("index.html");
		}
	}
}