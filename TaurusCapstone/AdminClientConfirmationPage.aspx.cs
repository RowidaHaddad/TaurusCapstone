using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addClientButton_ServerClick (object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAddClient.aspx");
        }
        protected void addEmployeeButton_ServerClick (object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAddEmployee.aspx");
        }
    }
}