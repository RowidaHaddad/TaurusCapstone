using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        Client myClient = new Client();
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            var finddet = from a in db.Findings
                          from b in db.TaskLeadFindingSubmissions
                          from c in db.Projects
                          from d in db.TaskCreations
                          where a.FindingID == b.FindingID && b.TaskID == d.TaskID && d.ProjectID == c.ProjectID && c.ClientID == Convert.ToInt16(Label1.Text)
                          select a;

            if (finddet.Count() != 0)
            {

                GridView1.DataSource = finddet;
                BoundField BF0 = (BoundField)GridView1.Columns[0];
                BF0.DataField = "FindingID";
                BoundField bf = (BoundField)GridView1.Columns[1];
                bf.DataField = "FindingName";
                BoundField bf1 = (BoundField)GridView1.Columns[2];
                bf1.DataField = "FindingDescription";

                BoundField bf2 = (BoundField)GridView1.Columns[3];
                bf2.DataField = "FindingType";
                GridView1.DataBind();
            }
            //for(int i=0; i<= GridView1.Rows.Count-1; i++)
            //{
            //    //LinkButton lk = (LinkButton)GridView1.Rows[i].Cells[3].FindControl("downloadFinding");
            //    //var link = from a in db.Findings
            //    //           where a.FindingID == Convert.ToInt16(GridView1.Rows[i].Cells[0].Text)
            //    //           select a;
            //    //if(link.Count()!=0)
            //    //{

            //    //    var llink = link.First();

            //    //}
            //}
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName.Equals("DownLoadFindings"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                var findingresult = from a in db.Findings
                                    where a.FindingID == Convert.ToInt32(s)
                                    select a;

                if(findingresult.Count()!=0)
                {
                    var fr = findingresult.First();
                    string filepath = Server.MapPath("~//documents//" +fr.FindingResult);
                    WebClient user = new WebClient();
                    Byte[] FileBuffer = user.DownloadData(filepath);
                    if(FileBuffer!=null)
                    {
                        Response.ContentType = ("application/pdf");
                        Response.AddHeader("content-length", FileBuffer.Length.ToString());
                        Response.BinaryWrite(FileBuffer);
                    }
                }
             
            }
            if(e.CommandName.Equals("AddComment"))
            {
                int RowIndex = ((GridViewRow)((Control)e.CommandSource).NamingContainer).RowIndex;
                string s = GridView1.Rows[RowIndex].Cells[0].Text;
                Response.Redirect("~/ClientAddFindingComment.aspx");
            }
        }
        
    protected void downloadFinding_Click(object sender, EventArgs e)
        {

        }

        protected void addComment_Click(object sender, EventArgs e)
        {

        }
    }
}