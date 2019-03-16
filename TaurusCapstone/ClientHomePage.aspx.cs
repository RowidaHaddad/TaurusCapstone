using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Client myClient = new Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewProjectsButton_ServerClick (object sender, EventArgs e)
        {
            Response.Redirect("~/ClientViewProjects.aspx");
        }

        protected void viewCPButton_ServerClick (object sender, EventArgs e)
        {
            Response.Redirect("~/ClientViewCostProposal.aspx");
        }
    }
}