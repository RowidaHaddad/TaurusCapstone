using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                foreach (string name in Session.Keys)
                {
                    if (name == "ProjectDetails")
                    {
                        pNameLabel.Text = (string)Session[name];
                    }

                }
            }

            var ele = from a in db.Tasks
                      from b in db.Employees
                      where b.EmployeeType == "0"
                      select new { a.TaskName, a.Description, a.ExpectedEndDate };
            if (ele.Count() != 0)
            {
                viewProjects.DataSource = ele;
                BoundField bf = (BoundField)viewProjects.Columns[0];
                bf.DataField = "ProjectName";
                BoundField bf1 = (BoundField)viewProjects.Columns[1];
                bf1.DataField = "Status";
                BoundField bf2 = (BoundField)viewProjects.Columns[2];
                bf2.DataField = "ProjectType";
                BoundField bf3 = (BoundField)viewProjects.Columns[3];
                bf3.DataField = "ExpectedEndDate";
                BoundField bf4 = (BoundField)viewProjects.Columns[4];
                bf4.DataField = "name";
                viewProjects.DataBind();
            }
        }
    }
}