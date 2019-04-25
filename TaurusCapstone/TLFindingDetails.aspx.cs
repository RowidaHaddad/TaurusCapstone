using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm42 : System.Web.UI.Page
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

                        myEmp = (Employee)Session[item];
                       //userName.Text = myEmp.FirstName;
                    }
                }
            }
            var ele = from a in db.Projects
                      from b in db.TaskLeadAssignments
                      from c in db.TaskCreations
                      where c.ProjectID == a.ProjectID && b.TLID == myEmp.EmployeeID
                      select a;

            if (ele.Count()!=0)
            {
                DropDownList1.DataSource = ele;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var el = from a in db.Tasks
                     from b in db.TaskLeadFindingSubmissions
                     from c in db.Findings
                     where a.TaskID == b.TaskID && b.FindingID == c.FindingID
                     select new {}
            GridView1.DataSource
        }
    }
}