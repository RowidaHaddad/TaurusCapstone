using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm31 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        ProjectEvaluation proEva = new ProjectEvaluation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session.Count!=0)
            {
                foreach(string item in Session.Keys)
                {
                    if(item== "ProjectNameC")
                    {
                        Label5.Text = (string)Session[item];
                    }
                }
            }
            var prid = from a in db.Projects
                       where a.ProjectName == Label5.Text
                       select a;
            if(prid.Count()!=0)
            {
                var pp = prid.First();
                Label6.Text = pp.ProjectID.ToString();
            }
                      
                      
  }
        protected void submit_Click(object sender, EventArgs e)
        {
          for(int i=1; i<=4; i++)
            {
                //ArrayList mylist = new ArrayList();
                string[] mylist ={ question1.Text, question2.Text, question3.Text, question4.Text };
               
                ProjectEvaluation myeva = new ProjectEvaluation();
                myeva.ProjectID = Convert.ToInt32(Label6.Text);
                myeva.CriteriaID = i;
                myeva.GradeText = mylist[i];
                db.ProjectEvaluations.InsertOnSubmit(myeva);
                db.SubmitChanges();

            }

            Response.Redirect("~/ClientHomePage.aspx");
        }


    }
}