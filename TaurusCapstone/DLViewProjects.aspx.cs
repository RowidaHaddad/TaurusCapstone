using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Employee myEmp = new Employee();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session.Count != 0)
                {
                    foreach (string item in Session.Keys)
                    {
                        if (item == "Firstname")
                        {

                            myEmp = (Employee)Session[item];
                            id = myEmp.EmployeeID;
                        }
                    }
                }

                var ele = (from a in db.Projects
                           from b in db.Clients
                           from c in db.DLAssignments
                           where a.ProjectID == c.ProjectID && id == c.DLID && b.ClientID == a.ClientID
                           select new { a.ProjectName, a.ProjectType, a.ExpectedEndDate, a.Status, b.ClientName }).Distinct();
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
                    bf4.DataField = "Status";
                    BoundField bf5 = (BoundField)viewProjects.Columns[5];
                    bf5.DataField = "ClientName";
                    viewProjects.DataBind();
                }
            }
        }

        protected void viewProjects_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("View"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewProjects.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectDetails", s);
                Response.Redirect("~/DLViewProjectDetails.aspx");
            }
            else if (e.CommandName.Equals("CloseProject"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewProjects.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectDetails", s);
                Response.Redirect("~/DLCloseProject.aspx");
            }
            else if (e.CommandName.Equals("SubmitFindings"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewProjects.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectDetails", s);
                Response.Redirect("~/DLViewTasksDetails.aspx");
            }
            else if (e.CommandName.Equals("CreateProjectCharter"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewProjects.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectDetails", s);
                Response.Redirect("~/DLCreateProjectCharter.aspx");
            }
        }
    }
}