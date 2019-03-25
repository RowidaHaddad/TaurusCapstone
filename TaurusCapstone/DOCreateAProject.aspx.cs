using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Project myProject = new Project();
        Client myClient = new Client();
        Employee myEmp = new Employee();
        DesignLead myDL = new DesignLead();
        bool valid = true;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addProject_ServerClick(object sender, EventArgs e)
        {
            myCP.ClientName = clientName.Value;
            myCP.ClientMobileNumber = clientNumber.Value;
            myCP.ClientNumber = clientNumber.Value;
            myCP.ClientEmail = clientEmail.Value;
            myCP.Password = clientPassword.Value;

            if (valid)
            {
                db.CostProposals.InsertOnSubmit(myCP);
                db.SubmitChanges();
                //Response.Redirect("~/AdminClientConfirmationPage.aspx");
            }
            else
            {
                requiredField.Visible = true;
            }
        }
    }
}