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
            if(!IsPostBack)
            {

            }

        }

        //protected void cancelButton_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/AdminHomePage.aspx");
        //}
        protected void addEmployee_Click(object sender, EventArgs e)
        {
            if (valid)
            {
                myEmp.FirstName = empFN.Value;
                myEmp.LastName = empLN.Value;
                myEmp.Mobile = empNumber.Value;
                myEmp.Email = empEmail.Value;
            
                myEmp.JobTitle = jobTitle.Value;

                if (myEmp.JobTitle == "Admin")
                {
                    myEmp.EmployeeType = "3";
                }
                if (myEmp.JobTitle == "Design Lead")
                {
                    myEmp.EmployeeType = "2";
                }
                if (myEmp.JobTitle == "Design Officer")
                {
                    myEmp.EmployeeType = "1";
                }
                if (myEmp.JobTitle=="Task Lead")
                {
                   myEmp.EmployeeType = "0";
                }
                
                myEmp.Password = empPassword.Value;

                db.Employees.InsertOnSubmit(myEmp);
                db.SubmitChanges();

                if (myEmp.EmployeeType == "2")
                {
                    //myEmp.EmployeeID;

                }
                Response.Redirect("~/ AdminEmployeeConfirmationPage.aspx");

                //Response.Write("<script> alert('User is Successfully Added!')</script> ");
            }
        }
    }
    }
