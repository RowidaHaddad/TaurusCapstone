using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "Firstname")
                    {
                        Employee myemployee = (Employee)Session[item];
                        usernameLabel.Text = myemployee.EmployeeID.ToString();
                        emailLabel.Text = myemployee.Email;
                        numberLabel.Text = myemployee.Mobile;
                    }
                }
            }
        }
    }
}