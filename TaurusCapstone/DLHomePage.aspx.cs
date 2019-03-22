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

                        //userName.Text = (Employee)Session[item]; ; /*+ " " + myEmp.LastName;*/
                    }
                }
            }
        }
        protected void addClientButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAddClient.aspx");
        }
        protected void addEmployeeButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAddEmployee.aspx");

        }
    }
}