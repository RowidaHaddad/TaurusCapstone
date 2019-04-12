using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        CostProposal myCP = new CostProposal();
        Project myProject = new Project();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //display details
            projectName.Text = myProject.ProjectName;
            dateUploadedLabel.Text = myCP.date.ToString();
            cpStatusLabel.Text = myCP.Status;

            //extract  data from CostProposalScope and ScopeDeliverable
            var ele = from a in db.CostProposalScopes
                      from b in db.ScopeDeliverables
                      from c in db.Projects
                      from d in db.CostProposals
                      where c.ProjectID == d.ProjectID && a.CostProposalID == d.CostProposalID
                      select new { a.ScopeName, b.Deliverable };

            GridView1.DataSource = ele;
            BoundField bf = (BoundField)GridView1.Columns[0];
            bf.DataField = "ScopeName";
            BoundField bf1 = (BoundField)GridView1.Columns[1];
            bf1.DataField = "Deliverable";

        }

        protected void submitCP_Click (object sender, EventArgs e)
        {
            //it will go to DO with decision and remarks
            
            clientDecision.SelectedValue = myCP.ClientDecision.ToString();
           // clientRemarks.Value = myCP.ClientNotes;

            db.CostProposals.InsertOnSubmit(myCP);
            db.SubmitChanges();
            Response.Redirect("~/ClientViewProjects.aspx");
        }
    }

    }