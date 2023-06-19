using Raamen.Model;
using Raamen.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Raamen.Views
{
    public partial class UpdateRamen : System.Web.UI.Page
    {
        RamenRepository rr = new RamenRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/View/Login.aspx");
            }

            if (Session["Role"].ToString() == "Member")
            {
                Response.Redirect("~/View/Home.aspx");
            }
            if (!IsPostBack)
            {
                MeatRepository rp = new MeatRepository();
                DropDownMeat.DataSource = rp.getMeat();
                DropDownMeat.DataTextField = "Name";
                DropDownMeat.DataValueField = "Id";
                DropDownMeat.DataBind();

                string ramenID = Request["ID"];
                Raman currentRamen = rr.getRamen(Convert.ToInt32(ramenID));

                itemnameTxt.Text = currentRamen.Name;
                brothTxt.Text = currentRamen.Broth;
                PriceTxt.Text = currentRamen.Price;
                DropDownMeat.SelectedValue = currentRamen.MeatId.ToString();
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            RamenRepository rp = new RamenRepository();
            rp.updateRamen(
                Convert.ToInt32(Request["ID"]),
                itemnameTxt.Text,
                brothTxt.Text,
                PriceTxt.Text,
                Convert.ToInt32(DropDownMeat.SelectedValue)
                ); 
            Response.Redirect("~/Views/Home.aspx");
        }
    }
}