using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Employee myEmp = new Employee();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "Firstname")
                    {
                        //myEmp = (Employee)Session[item];
                        userName.Text = myEmp.FirstName; /*+ " " + myEmp.LastName;*/
                    }
                }
            }
        }
        protected void addClientButton_ServerClick (object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAddClient.aspx");
        }
        protected void addEmployeeButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAddEmployee.aspx");

        }
    }
}