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
        }

        protected void moreButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DOViewCP.aspx");

        }
    }
}