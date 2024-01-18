using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuroraDecos
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Success.aspx");
        }

        protected void btnCancelOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}