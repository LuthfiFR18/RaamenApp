using Raamen.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Raamen.Views
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/AddRamen.aspx");
        }

        protected void Unnamed1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridRamen.Rows[e.RowIndex];
            RamenRepository del = new RamenRepository();
            del.deleteRamen(Convert.ToInt32(row.Cells[0].Text));
            Response.Redirect("../Views/Home.aspx");
        }
    }
}