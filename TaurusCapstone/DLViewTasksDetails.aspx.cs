using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm43 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "ProjectDetails")
                    {
                        Label1.Text = (string)Session[item];
                    }
                    if (item == "Firstname")
                    {
                        Employee myEmp = (Employee)Session[item];
                        //Label9.Text = myEmp.EmployeeID.ToString();

                    }
                }
            }
        }
    }
}