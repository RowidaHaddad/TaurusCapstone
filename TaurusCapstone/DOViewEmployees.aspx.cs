using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm28 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var ele = from a in db.Employees
                      select a;
            if (ele.Count() != 0)
            {
                viewEmployees.DataSource = ele;
                BoundField bf = (BoundField)viewEmployees.Columns[0];
                bf.DataField = "FirstName";
                BoundField bf1 = (BoundField)viewEmployees.Columns[1];
                bf1.DataField = "LastName";
                BoundField bf2 = (BoundField)viewEmployees.Columns[2];
                bf2.DataField = "JobTitle";
                BoundField bf3 = (BoundField)viewEmployees.Columns[3];
                bf3.DataField = "Mobile";
                BoundField bf4 = (BoundField)viewEmployees.Columns[4];
                bf4.DataField = "Email";
                viewEmployees.DataBind();
            }
        }

        protected void viewEmployees_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("View"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = viewEmployees.Rows[RowIndex].Cells[0].Text;
                Session.Add("EmployeeDetails", s);
                Response.Redirect("~/DOProjectDetails.aspx");
            }
        }
    }
}