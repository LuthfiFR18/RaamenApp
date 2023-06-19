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
    public partial class UpdateUser : System.Web.UI.Page
    {
        UserRepository ur = new UserRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                
            }
            if (Session["User"] == null)
            {
                Response.Redirect("~/Views/Login.aspx");
            }
            if (IsPostBack == false)
            {
                int userId = Convert.ToInt32(Session["userId"].ToString());
                User curUser = ur.findUserbyId(userId);

                TbUsername.Text = curUser.Username;
                TbEmail.Text = curUser.Email;
                GenderList.SelectedValue = GenderList.Items.FindByText(curUser.Gender).ToString();
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Session["UserID"]);
            string username = TbUsername.Text;
            string email = TbEmail.Text;
            string gender = GenderList.SelectedItem.Text;
            string password = TbPassword.Text;
            User curUser = (User)Session["Username"];
            ur.updateUser(
                Id,
                TbUsername.Text,
                TbEmail.Text,
                Convert.ToInt32(GenderList.SelectedValue).ToString(),
                TbPassword.Text
                );
            Response.Redirect("~/Views/Login.aspx");
        }
    }
}