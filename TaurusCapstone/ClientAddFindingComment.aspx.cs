using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm45 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //add session
            //with finding name
        }

        protected void submitComment_Click(object sender, EventArgs e)
        {
           //add comment to db
           //
           //redirect to gridview again
        }
    }
}