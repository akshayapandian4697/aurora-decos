using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuroraDecos
{
    public partial class Indoor : System.Web.UI.Page
    {
        List<Decos> decos = new List<Decos>();
        Decos deco;
        protected void Page_Load(object sender, EventArgs e)
        {
            tblProductDetail.Visible = false;

            if (Session["myCart"] == null)
            {
                Session["myCart"] = decos;
            }
        }

        protected void ImageButtonCategory_Click(object sender, ImageClickEventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("ItemCategoryId");
            //cookie.Expires = DateTime.Now.AddDays(2);
            //cookie.Value = ((ImageButton)sender).CommandArgument.ToString();
            Label12.Text = ((ImageButton)sender).CommandArgument.ToString();

            //Response.Cookies.Add(cookie);
        }

        protected void ImageButtonItem_Click(object sender, ImageClickEventArgs e)
        {
           String Id = ((ImageButton)sender).CommandArgument.ToString();

            deco = this.getDecos(Id);

            lblDecoId.Text = Id;
            lblProdName.Text = deco.Name;
            lblDescription1.Text = deco.Description;
            lblPrice.Text = deco.Price.ToString();
            prodImg.ImageUrl = deco.ImagePath;

            tblProductDetail.Visible = true;

        }

        public Decos getDecos(String Id)
        {
            DataView dv = (DataView)DecoItemDetails.Select(DataSourceSelectArguments.Empty);
            dv.RowFilter = "Id = '" + Id + "'";
            DataRowView rowView = dv[0];

            Decos decosItem = new Decos();

            decosItem.Id = Convert.ToInt32(rowView["Id"]);
            decosItem.Name = (string)rowView["Name"];
            decosItem.Description = (string)rowView["Description"];
            decosItem.Price = Convert.ToDecimal(rowView["Price"]);
            decosItem.Qty = Convert.ToInt32(rowView["Qty"]);
            decosItem.ImagePath = (string)rowView["ImagePath"];


            return decosItem;
        }

        protected void btnGoToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            Decos deco;
            String Id = lblDecoId.Text;
            deco = getDecos(Id);
            deco.Qty = Convert.ToInt32(txtQuantity.Text);

            decos = (List<Decos>)Session["myCart"];
            decos.Add(deco);

            Session["myCart"] = decos;
            Response.Redirect("~/Cart.aspx");
        }
    }
}