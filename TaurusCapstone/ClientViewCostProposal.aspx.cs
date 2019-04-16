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
        Client myClient = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "ProjectName")
                    {

                        projectName.Text = (string)Session[item];
                    }

                    if (item == "FirstClient")
                    {

                        myClient = (Client)Session[item];
                        Label2.Text = myClient.ClientID.ToString();
                    }
                }
            }
            //display details
            var det = from a in db.CostProposals
                      from b in db.Projects
                      where a.ProjectID == b.ProjectID && b.ProjectName == projectName.Text
                      select new { a.date, a.Status,a.ProjectID };

            if(det.Count()!=0)
            {
                var dett = det.First();
                dateUploadedLabel.Text = dett.date.ToShortDateString();
                cpStatusLabel.Text = dett.Status;
                Label1.Text = dett.ProjectID.ToString();
            }


            //extract  data from CostProposalScope and ScopeDeliverable
            var ele = from a in db.CostProposalScopes
                     
                      from c in db.Projects
                      from d in db.CostProposals
                      where c.ProjectID == d.ProjectID && a.CostProposalID == d.CostProposalID && c.ProjectID == Convert.ToInt32(Label1.Text)
                      select a;
            if(ele.Count()!=0)
            {
                GridView1.DataSource = ele;
                BoundField bf = (BoundField)GridView1.Columns[1];
                bf.DataField = "ScopeName";
                GridView1.DataBind();
            }
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                GridView gv = (GridView)GridView1.Rows[i].Cells[2].FindControl("Gridview3");
                Label lb = (Label)GridView1.Rows[i].Cells[0].FindControl("number");
                lb.Text = (i + 1).ToString();

                var dele = from a in db.CostProposalScopes
                           from b in db.ScopeDeliverables
                           from c in db.CostProposals
                           from d in db.Projects
                           where c.ProjectID == Convert.ToInt32(Label1.Text)&& c.ProjectID == d.ProjectID && c.CostProposalID == a.CostProposalID && a.ScopeID == b.ScopeID && a.ScopeName == GridView1.Rows[i].Cells[1].Text
                           select b;

                if (dele.Count() != 0)
                {
                    gv.DataSource = dele;
                    BoundField bf = (BoundField)gv.Columns[1];
                    bf.DataField = "Deliverable";
                    gv.DataBind();
                }
            
                for(int j=0; j<= gv.Rows.Count-1; j++)
                {
                    Label lb1 = (Label)gv.Rows[j].Cells[0].FindControl("numberD");
                    lb1.Text = (j + 1).ToString();
                }

            }
        

        }

        protected void submitCP_Click (object sender, EventArgs e)
        {
            var dec= from a in db.CostProposalScopes

                      from c in db.Projects
                      from d in db.CostProposals
                      where c.ClientID==Convert.ToInt16(Label2.Text) && c.ProjectID == d.ProjectID && a.CostProposalID == d.CostProposalID && c.ProjectID == Convert.ToInt32(Label1.Text)
                      select d;
            if(dec.Count()!=0)
            {
                var mydec = dec.First();
                mydec.ClientDecision=Convert.ToInt16(clientDecision.SelectedValue);
                mydec.ClientNotes=clientRemarks.Text;
                mydec.ClientID = Convert.ToInt16(Label2.Text);
                db.SubmitChanges();
                Response.Redirect("~/ClientViewProjects.aspx");
            }
            //it will go to DO with decision and remarks
           
            
        }
    }

    }