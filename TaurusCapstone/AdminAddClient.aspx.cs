using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        bool valid = true;
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            requiredField.Visible = false;

        }

        protected void addClient_ServerClick(object sender, EventArgs e)
        {
            Client newClient = new Client();
            newClient.ClientName = clientName.Value;
            newClient.ClientMobileNumber = clientNumber.Value;
            newClient.ClientNumber = clientNumber.Value;
            newClient.ClientEmail = clientEmail.Value;
            newClient.Password = clientPassword.Value;

            if (valid)
            {
                db.Clients.InsertOnSubmit(newClient);
                db.SubmitChanges();
                Response.Redirect("~/ AdminClientConfirmationPage.aspx");
            }
            else
            {
                requiredField.Visible = true;
            }
        }
        protected void cancelButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminClients.aspx");
        }
    }
}