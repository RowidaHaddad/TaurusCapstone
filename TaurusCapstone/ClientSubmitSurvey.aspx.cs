using System;
using System.Collections.Generic;
using System.Linq;
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

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            var pro = from a in db.Projects
                      from b in db.ProjectEvaluations
                      where a.ProjectID == b.ProjectID && a.Status == "Completed"
                      select a;

            db.ProjectEvaluations.InsertOnSubmit(proEva);
            db.SubmitChanges();
            Response.Redirect("~/ClientHomePage.aspx");
        }


    }
}