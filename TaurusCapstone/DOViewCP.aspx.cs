using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm33 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.Count != 0)
            {
                foreach (string name in Session.Keys)
                {
                    if (name == "ProjectDetails")
                    {

                    }

                }
            }
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DOEditsCP.aspx");
        }
    }
}