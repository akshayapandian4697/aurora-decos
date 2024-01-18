using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuroraDecos
{
    public partial class DecoCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["AuroraConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            con.Open();

            string cmdText = "INSERT INTO tblItemsCatgory (Name,Description,CategoryId ) " +
                "Values ('" + txtDecoCategory.Text + "','" + txtDescription.Text + "', '" + int.Parse(ddlLocation.SelectedValue) + "')";
            SqlCommand cmd = new SqlCommand(cmdText, con);
            int row = cmd.ExecuteNonQuery();
            con.Close();
            if (row > 0)
            {
                Response.Write("<script>alert('New record added successfully!')</script>");
                Response.Redirect(Request.Url.ToString());
            }
            else
            {
                Response.Write("<script>alert('Error while inserting new record!')</script>");
                Response.Redirect(Request.Url.ToString());
            }
        }
    }
}