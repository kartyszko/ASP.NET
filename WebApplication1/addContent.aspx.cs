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
    public partial class addContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Home.aspx");
            } 

}

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\artys\OneDrive\Pulpit\Projekt_asp.net\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into tableAd"+ "(ID,date,ogloszenie,podpis) values (@ID,@date,@ogloszenie,@podpis)", con);
            cmd.Parameters.AddWithValue("@ID",txtID.Text);
            cmd.Parameters.AddWithValue("@date", txtDate.Text);
            cmd.Parameters.AddWithValue("@ogloszenie", txtAd.Text);
            cmd.Parameters.AddWithValue("@podpis", txtYourName.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Sukces')</script>");

        }
    }
}