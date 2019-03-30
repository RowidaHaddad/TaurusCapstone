using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void createProject_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/DOCreateAProject.aspx");
        }
        protected void createCP_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
    }
}