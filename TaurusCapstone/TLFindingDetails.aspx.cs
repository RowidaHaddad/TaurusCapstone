using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm42 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var ele = from a in db.Projects
                      from b in db.Findings
                      from c in db.Tasks
                      select a;
        }
    }
}