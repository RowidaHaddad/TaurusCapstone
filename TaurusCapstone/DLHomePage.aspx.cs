using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Employee myEmp = new Employee();
        DesignLead myDL = new DesignLead();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "Firstname")
                    {

                        myEmp = (Employee)Session[item];
                        userName.Text = myEmp.FirstName;
                    }
                }
            }
        }
        protected void addClientButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect ("~/DLViewProjectDetails.aspx");
        }
        protected void addEmployeeButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/DLViewTasksDetails.aspx");

        }
    }
}