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
            alert.Visible = false;
            fields.Visible = false;

        }

        protected void addClient_ServerClick(object sender, EventArgs e)
        {
            Client newClient = new Client();
            newClient.ClientName = clientName.Value;
            newClient.ClientMobileNumber = clientNumber.Value;
            newClient.ClientNumber = compNumber.Value;
            newClient.ClientEmail = clientEmail.Value;
            newClient.Password = clientPassword.Value;

            if (valid)
            {
                db.Clients.InsertOnSubmit(newClient);
                db.SubmitChanges();
                alert.Visible = true;
                clientName.Value = string.Empty;
                clientNumber.Value = string.Empty;
                compNumber.Value = string.Empty;
                clientEmail.Value = string.Empty;
                clientPassword.Value = string.Empty;

                //Response.Redirect("~/AdminClientConfirmationPage.aspx");
            }
            else
            {
                fields.Visible = true;
            }
        }
        protected void cancelButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminClients.aspx");
        }
    }
}