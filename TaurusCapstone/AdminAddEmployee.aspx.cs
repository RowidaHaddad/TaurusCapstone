using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Employee myEmp = new Employee();
        TaskLead myTL = new TaskLead();
        DesignLead myDL = new DesignLead();
        DesignOfficer myDO = new DesignOfficer();
        bool valid = true;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancelButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHomePage.aspx");
        }
        protected void addEmployee_ServerClick (object sender, EventArgs e)
        {
            if (valid)
            {
                myEmp.FirstName = empFN.Value;
                myEmp.LastName = empLN.Value;
                myEmp.Mobile = empNumber.Value;
                myEmp.Email = empEmail.Value;
               //myEmp.EmployeeType = Convert.ToInt32(empType.SelectedValue);
                myEmp.Password = empPassword.Value;

                db.Employees.InsertOnSubmit(myEmp);
                db.SubmitChanges();

                if (myEmp.EmployeeType == 2)
                {
                    //myEmp.EmployeeID;

                }
                Response.Write("<script> alert('User is Successfully Added!')</script> ");
            }
        }
    }
    }
}