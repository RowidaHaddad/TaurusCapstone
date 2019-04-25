using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm38 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Project myProject = new Project();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "ProjectDetails")
                    {
                        Label1.Text = (string)Session[item];
                    }
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            var pro = from a in db.Projects
                      where a.ProjectName == Label1.Text
                      select a;
            if (pro.Count() != 0)
            {
                string filename = finalFile.PostedFile.FileName;
                finalFile.SaveAs(MapPath("~/documents/" + filename));
                myProject.ActualEndDate = DateTime.Now;
                myProject.Status = "Completed";
                myProject.CloseDocument = filename;
                db.Projects.InsertOnSubmit(myProject);
                db.SubmitChanges();
                alert.Visible = true;
                filename = string.Empty;
            }
                
            }
        }
    }