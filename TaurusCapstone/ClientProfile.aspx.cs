using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Client myClient = new Client();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "FirstClient")
                    {

                        myClient = (Client)Session[item];
                        usernameLabel.Text = myClient.ClientID.ToString();
                        emailLabel.Text = myClient.ClientEmail;
                        numberLabel.Text = myClient.ClientMobileNumber;
                    }
                }
            }
            

        }
    }
}