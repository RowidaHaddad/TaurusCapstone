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
                        //clientLabel.Text = (string)Session[name];

                    }

                }
            }
            var ele = from a in db.Projects
                      where a.ProjectName == pNameLabel.Text
                      select a;

            if (ele.Count() != 0)
            {
                var el = ele.First();
                pNameLabel.Text = el.ProjectName;
                //clientLabel.Text = el.ClientID;
                pStatusLabel.Text = el.Status;
                dateLabel.Text = el.ExpectedEndDate.ToString();
                //designLeadLabel.Text = el.DLAssignments;

                //list all the fields you want to show for specific project and then take him to page of cost proposal

            }

            //PROPOSAL DETAILS

            //var costproposal = from a in db.CostProposalCreations
            //                   where a.ProjectID
            //                   select a;

            //if (costProposal)
            //{
            //    costProposal.Visible = true;
            //}
            //else
            //{
            //    noCP.Visible = true;
            //}

            //PROJECT FINDINGS
            var finding = from a in db.Findings
                          from b in db.Projects
                          from c in db.Employees
                          from d in db.CostProposals
                          from g in db.DLAssignments
                          from f in db.Clients
                          where c.EmployeeID == g.DLID && d.ProjectID == b.ProjectID && b.ClientID == f.ClientID
                          select new { a.FindingName, a.FindingResult, a.FindingType, a.FindingDescription, b.ProjectName, b.ProjectType, f.ClientName, name = c.FirstName + " " + c.LastName, d.ClientDecision, d.date, d.Status };

            if (finding.Count() != 0)
            {
                GridView1.DataSource = finding;
                BoundField bf = (BoundField)GridView1.Columns[0];
                bf.DataField = "FindingName";
                BoundField bf1 = (BoundField)GridView1.Columns[1];
                bf.DataField = "FindingType";
                BoundField bf2 = (BoundField)GridView1.Columns[2];
                bf2.DataField = "ExpectedEndDate";
                BoundField bf3 = (BoundField)GridView1.Columns[3];
                bf3.DataField = "FindingDescription";          
                GridView1.DataBind();
            }
        }

        protected void moreButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DOViewCP.aspx");

        }
    }
}