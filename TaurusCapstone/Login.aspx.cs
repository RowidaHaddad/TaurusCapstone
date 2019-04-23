using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Employee myEmp = new Employee();
        Client myClient = new Client();
        //bool empty = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            alert.Visible = false;
       
        }

        protected void loginButton_ServerClick(object sender, EventArgs e)
        {
            var enteredName =
                    from item in db.Employees
                    where item.EmployeeID.ToString() == usrTB.Value && item.Password == pswTB.Value
                    select item;

            //add client login
  
            if (enteredName.Count() != 0)
            {
                Employee myEmp = enteredName.First();
                Session.Add("Firstname", myEmp);

                if (myEmp.EmployeeType == "3")
                {
                    Response.Redirect("~/AdminHomePage.aspx");
                }
                 else if (myEmp.EmployeeType == "2")
                {
                    Response.Redirect("~/DLHomePage.aspx");
                }
                else if (myEmp.EmployeeType == "1")
                {
                    Response.Redirect("~/DOHomePage.aspx");
                }
                else if (myEmp.EmployeeType == "0")
                {
                    Response.Redirect("~/TLHomePage.aspx");
                }
                else if (myEmp.EmployeeType == null)
                {
                    alert.Visible = true;
                } 
                else 
                {
                    alert.Visible = true;
                    usrTB.Value = string.Empty;
                    pswTB.Value = string.Empty;
                }

            }
            //anothe query
            var clientLogin =
                from item in db.Clients
                where item.ClientID == Convert.ToInt16(usrTB.Value) && item.Password == pswTB.Value
                select item;

            if (clientLogin.Count() != 0)
            {
                var myClient = clientLogin.First();
                Session.Add("FirstClient", myClient);
                Response.Redirect("~/ClientHomePage.aspx");
            }
            else
            {
                alert.Visible = true;
                usrTB.Value = string.Empty;
                pswTB.Value = string.Empty;

            }
        }

        
}
}
