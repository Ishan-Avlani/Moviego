using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace moviego
{
    public partial class movies : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileName = FileUpload1.FileName;
            string contentType = FileUpload1.PostedFile.ContentType;
            // Read the file data into a byte array
            byte[] data = FileUpload1.FileBytes;

            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into movies_details values(@Name, @ContentType,@mname,@details,@dname,@duration,@starcast,@mimage)", con);
            cmd.Parameters.AddWithValue("@Name", fileName);
            cmd.Parameters.AddWithValue("@ContentType", contentType);
            cmd.Parameters.AddWithValue("@mname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@details", TextBox2.Text);
            cmd.Parameters.AddWithValue("@dname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@duration", TextBox4.Text);
            cmd.Parameters.AddWithValue("@starcast", TextBox5.Text);
            cmd.Parameters.AddWithValue("@mimage", data);

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";


            string selectQuery = "SELECT * FROM movies_details";
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


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }



    }
}