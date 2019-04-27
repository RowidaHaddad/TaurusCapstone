using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm34 : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                var ele = from a in db.Projects
                          from b in db.Clients
                          from c in db.DLAssignments
                          from d in db.Employees
                      where a.ProjectName == pNameLabel.Text && a.ClientID == b.ClientID && a.ProjectID == c.ProjectID && d.EmployeeID == c.DLID
                      select new { a.ProjectName, b.ClientName, a.Status, a.ExpectedEndDate, name = d.FirstName + " " + d.LastName };

            if (ele.Count() != 0)
            {
                var el = ele.First();
                pNameLabel.Text = el.ProjectName;
                clientLabel.Text = el.ClientName;
                pStatusLabel.Text = el.Status;
                dateLabel.Text = el.ExpectedEndDate.ToString();
                designLeadLabel.Text = el.name;

                //list all the fields you want to show for specific project and then take him to page of cost proposal

            }

            //PROPOSAL DETAILS

            var costproposal = from a in db.CostProposals
                               from b in db.Projects
                               where a.ProjectID == b.ProjectID && b.ProjectName==pNameLabel.Text
                               select a;

            if(costproposal.Count()!=0)
            {
                var cp = costproposal.First();
                dateLabel.Text = cp.date.ToString("dd/MM/yyyy");
                cpStatusLabel.Text = cp.Status;
                decisionLabel.Text = cp.ClientDecision.ToString();
                    noCP.Visible = false;

                }
                else
            {
                    cp.Visible = false;

                    noCP.Visible = true;
            }

            //PROJECT FINDINGS
            //var finding = from a in db.Findings
            //              from b in db.Projects
            //              from c in db.Employees
                          
            //              from g in db.DLAssignments
            //              from f in db.Clients
            //              where c.EmployeeID == g.DLID && b.ClientID == f.ClientID && b.ProjectName==pNameLabel.Text
            //              select new { a.FindingName, a.FindingType, a.FindingDescription, a.EndDate};

            //if (finding.Count() != 0)
            //{
            //    GridView1.DataSource = finding;
            //    BoundField bf = (BoundField)GridView1.Columns[0];
            //    bf.DataField = "FindingName";
            //    BoundField bf1 = (BoundField)GridView1.Columns[1];
            //    bf.DataField = "FindingType";
            //    BoundField bf2 = (BoundField)GridView1.Columns[2];
            //    bf2.DataField = "EndDate";
            //    BoundField bf3 = (BoundField)GridView1.Columns[3];
            //    bf3.DataField = "FindingDescription";          
            //    GridView1.DataBind();
            //}
        }
        }

        protected void moreButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DOViewCP.aspx");

        }
    }
}