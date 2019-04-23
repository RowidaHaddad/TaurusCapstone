using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm46 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Employee myEmp = new Employee();

        protected void Page_Load(object sender, EventArgs e)
        {
            alert.Visible = false;
        }

        protected void update1_Click(object sender, EventArgs e)
        {
            var update = from a in db.Employees
                         where a.EmployeeType == "1"
                         select a;

            if (update.Count() != 0)
            {
                emailInput.Value = myEmp.Email;
                passwordInput.Value = myEmp.Password;
                alert.Visible = true;
                emailInput.Value = string.Empty;
                passwordInput.Value = string.Empty;

            }
        }
    }
}