using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuroraDecos
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIndoorProd_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                HttpCookie cookie = Request.Cookies["UserInfo"];
                if (cookie != null)
                {
                    Response.Redirect("~/Indoor.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Login first!')</script>");
            }
            
        }

        protected void btnoutdoorProd_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                HttpCookie cookie = Request.Cookies["UserInfo"];
                if (cookie != null)
                {
                    Response.Redirect("~/Outdoor.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Login first!')</script>");
            }
        }

        protected void btnNavHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserInfo");

            cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie);

            Response.Redirect("~/Home.aspx");
        }

        protected void btnDecoCategory_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                HttpCookie cookie = Request.Cookies["UserInfo"];
                if (cookie != null)
                {
                    Response.Redirect("~/DecoCategory.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Login first!')</script>");
            }
        }
    }
}