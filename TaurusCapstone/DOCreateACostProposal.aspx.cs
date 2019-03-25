using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm26 : System.Web.UI.Page
    {

        bool valid = true;
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            requiredField.Visible = false;

        }
        protected void sendCP_ServerClick (object sender, EventArgs e)
        {
            CostProposal myCP = new CostProposal();
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

        protected void cancelButton_ServerClick (object sender, EventArgs e)
        {
            Response.Redirect("~/DOHomePage.aspx");
        }
}