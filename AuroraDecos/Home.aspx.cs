using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuroraDecos
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIndoorProd_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Indoor.aspx");
        }

        protected void btnIOutoorProd_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Outdoor.aspx");
        }
    }
}