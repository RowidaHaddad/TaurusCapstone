using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Project myProject = new Project();
        Client myClient = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            notclosed.Visible = false;
            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "FirstClient")
                    {

                        myClient = (Client)Session[item];
                        Label1.Text = myClient.ClientID.ToString();
                    }
                }
            }

            var pro = from a in db.Projects
                      where a.ClientID == Convert.ToInt16(Label1.Text)
                      select a;

            if(pro.Count()!=0)
            {
                GridView1.DataSource = pro;
                BoundField bf = (BoundField)GridView1.Columns[0];
                bf.DataField = "ProjectName";
                BoundField bff = (BoundField)GridView1.Columns[1];
                bff.DataField = "ExpectedEndDate";
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("ViewProposal"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectName", s);
                Response.Redirect("~/ClientViewCostProposal.aspx");
            }
            if (e.CommandName.Equals("ViewFindings"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                Session.Add("ProjectName", s);
                Response.Redirect("~/ClientViewFindings.aspx");
            }
            if (e.CommandName.Equals("SubmitSurvey"))
            {

                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                var pro = from a in db.Projects 
                          where a.ProjectName == s
                          select a;
                if (pro.Count()!=0)
                {
                    Session.Add("ProjectNameC", s);
                    Response.Redirect("~/ClientSubmitSurvey.aspx");
                }
                else
                {
                    //label no survey 
                    notclosed.Visible = true;
                }
            }
        }
    }
}