using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuroraDecos
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var books = Session["myCart"] as List<Decos>;

            if (!IsPostBack && books != null)
            {
                decimal fValue = 0;
                foreach (var item in books)
                {
                    fValue = Convert.ToDecimal(item.Qty) * (item.Price);
                    lbxCart.Items.Add(item.Name + " : $" + fValue);
                }
            }

        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnRemoveItem_Click(object sender, EventArgs e)
        {
            if (lbxCart.SelectedIndex > -1)
            {
                var books = Session["myCart"] as List<Decos>;
                books.RemoveAt(lbxCart.SelectedIndex);
                lbxCart.Items.RemoveAt(lbxCart.SelectedIndex);

                if (books.Count == 0)
                {
                    btnCheckout.Enabled = false;
                }
            }
        }

        protected void btnEmptyCart_Click(object sender, EventArgs e)
        {
            lbxCart.Items.Clear();
        }
    }
}