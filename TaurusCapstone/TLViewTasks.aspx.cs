using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm39 : System.Web.UI.Page
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
                        Label1.Text = myEmp.EmployeeID.ToString();
                    }
                }
            }
            if (!IsPostBack)
            {
                var proj = from a in db.Tasks
                           from b in db.Projects
                           from c in db.TaskCreations
                           from d in db.TaskLeadAssignments
                           where a.TaskID == c.TaskID && c.ProjectID == b.ProjectID && d.TaskID == a.TaskID && d.TLID == Convert.ToInt16(Label1.Text)
                           select new { b.ProjectID, b.ProjectName };

                if (proj.Count() != 0)
                {
                    DropDownList1.DataSource = proj;
                    DropDownList1.DataTextField = "ProjectName";
                    DropDownList1.DataValueField = "ProjectID";
                    DropDownList1.DataBind();
                }
            }
        }

     
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("View"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                Session.Add("taskName", s);
                Session.Add("typeS", "View");
                Response.Redirect("~/TLTaskDetails.aspx");
            }

            if (e.CommandName.Equals("SubmitFindings"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                Session.Add("taskName", s);
                Session.Add("typeF", "SubmitFindings");
                Response.Redirect("~/TLTaskDetails.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var ele =( from a in db.Tasks
                      from b in db.TaskLeadAssignments
                      from c in db.TaskCreations
                      where b.TaskID==c.TaskID && a.TaskID == b.TaskID && c.ProjectID == Convert.ToInt16(DropDownList1.SelectedValue) && b.TLID==Convert.ToInt32(Label1.Text)
                      select new { a.TaskName, a.ExpectedEndDate, a.Status }).Distinct();

            GridView1.DataSource = ele;
            BoundField bf = (BoundField)GridView1.Columns[0];
            bf.DataField = "TaskName";
            BoundField bf1 = (BoundField)GridView1.Columns[2];
            bf1.DataField = "ExpectedEndDate";
            BoundField bf2 = (BoundField)GridView1.Columns[1];
            bf2.DataField = "Status";
            GridView1.DataBind();


        }
    }
}