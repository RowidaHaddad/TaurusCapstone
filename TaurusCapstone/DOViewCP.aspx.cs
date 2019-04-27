using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm33 : System.Web.UI.Page
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
                        projectName.Text = (string)Session[name];
                        
                    }

                }
            }

            //add details for proposal
                        
            var ele = from a in db.CostProposalScopes

                      from c in db.Projects
                      from d in db.CostProposals
                      where c.ProjectID == d.ProjectID && a.CostProposalID == d.CostProposalID && c.ProjectID == Convert.ToInt32(projectName.Text)
                      select a;
            if (ele.Count() != 0)
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
                           where c.ProjectID == Convert.ToInt32(projectName.Text) && c.ProjectID == d.ProjectID && c.CostProposalID == a.CostProposalID && a.ScopeID == b.ScopeID && a.ScopeName == GridView1.Rows[i].Cells[1].Text
                           select b;

                if (dele.Count() != 0)
                {
                    gv.DataSource = dele;
                    BoundField bf = (BoundField)gv.Columns[1];
                    bf.DataField = "Deliverable";
                    gv.DataBind();
                }

                for (int j = 0; j <= gv.Rows.Count - 1; j++)
                {
                    Label lb1 = (Label)gv.Rows[j].Cells[0].FindControl("numberD");
                    lb1.Text = (j + 1).ToString();
                }

            }
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DOEditsCP.aspx");
        }
    }
}