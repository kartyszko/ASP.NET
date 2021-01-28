using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\artys\OneDrive\Pulpit\Projekt_asp.net\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            string query = "select count(*) from tabluser where user_name ='" + txtuser.Text + "' and pass='" + txtpass.Text +"' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                //create a session
                Session["user"] = txtuser.Text;
                Response.Redirect("Welcome.aspx");
            }

            else
            {
                Response.Write("Login Faild");
            }
        }
    }
}