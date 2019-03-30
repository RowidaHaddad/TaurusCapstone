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
        CostProposalCreation newCP = new CostProposalCreation();
        ProjectDefinition projectDef = new ProjectDefinition();
        protected void Page_Load(object sender, EventArgs e)
        {
            //display details
            projectName.Text = myProject.ProjectName;
            dateUploadedLabel.Text = myCP.date.ToString();
            cpStatusLabel.Text = myCP.Status;
            scopeLabel.Text = projectDef.Scope;
            deliverablesLabel.Text = projectDef.Deliverable;
        }

        protected void submitCP_Click (object sender, EventArgs e)
        {
            //it will go to DO with decision and remarks
            
            clientDecision.SelectedValue = myCP.ClientDecision.ToString();
            clientRemarks.Value = myCP.ClientNotes;

            db.CostProposals.InsertOnSubmit(myCP);
            db.SubmitChanges();
            Response.Redirect("~/ClientViewProjects.aspx");
        }
    }

    }