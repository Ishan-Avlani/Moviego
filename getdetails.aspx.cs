using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace moviego
{
    public partial class getdetails : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           
                
                string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";



            string selectQuery = "SELECT id,Name, ContentType, mname, details, dname, duration,starcast,mimage FROM movies_details";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                    }
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btnBook = (Button)sender; // The button that raised the event

            // Retrieve the dynamic image path and movie name from the button attributes
            string imgPath = btnBook.Attributes["data-imgpath"];
            string movieName = btnBook.Attributes["data-moviename"];

            // Set the session variables
            Session["IMG"] = "Pictures/" + imgPath;
            Session["MOVIEN"] = movieName;

            // Perform the server-side transfer to another page
            Server.Transfer("MovieForm.aspx");
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}