using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm25 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

         
            var ele = from a in db.Projects
                      from b in db.Employees
                      from c in db.DLAssignments
                      where a.ProjectID==c.ProjectID && b.EmployeeID==c.DLID
                      select new { a.ProjectName, a.ProjectType, a.ExpectedEndDate, a.Status, name = b.FirstName + " " + b.LastName };
            if(ele.Count()!=0)
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

        protected void viewProjects_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("ViewDetails"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewProjects.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectDetails", s);
                Response.Redirect("~/DOProjectDetails.aspx");
            }
            if (e.CommandName.Equals("ViewProposal"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewProjects.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectDetails", s);
                Response.Redirect("~/DOViewCP.aspx");
            }
        }
    }
}
