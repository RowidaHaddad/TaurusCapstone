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
       
      

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                {

            
            requiredField.Visible = false;
            }
        }

        protected void cancelButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHomePage.aspx");
        }
        protected void addEmployee_Click(object sender, EventArgs e)
        {
          
                myEmp.FirstName = empFN.Value;
                myEmp.LastName = empLN.Value;
                myEmp.Mobile = empNumber.Value;
                myEmp.Email = empEmail.Value;
                myEmp.JobTitle = jobTitle.Value;

                if (empType.Value == "Admin")
                {
                    myEmp.EmployeeType = "3";
                }
                if (empType.Value == "Design Lead")
                {
                    myEmp.EmployeeType = "2";
                }
                if (empType.Value == "Design Officer")
                {
                    myEmp.EmployeeType = "1";
                }
                if (empType.Value == "Task Lead")
                {
                    myEmp.EmployeeType = "0";
                }

                myEmp.Password = empPassword.Value;

                db.Employees.InsertOnSubmit(myEmp);
                db.SubmitChanges();
     
                var empl = from a in db.Employees
                           orderby a.EmployeeID descending
                           select a;
                if (empl.Count() != 0)
                {
                    var type = empl.First();

                    if (type.EmployeeType == "2")
                    {
                        DesignLead mydl = new DesignLead();
                        mydl.DLID = type.EmployeeID;
                        db.DesignLeads.InsertOnSubmit(mydl);
                        db.SubmitChanges();
                    }
                    if (type.EmployeeType == "1")
                    {
                        DesignOfficer mydo = new DesignOfficer();
                        mydo.DOID = type.EmployeeID;
                        db.DesignOfficers.InsertOnSubmit(mydo);
                        db.SubmitChanges();
                    }
                    if (type.EmployeeType == "0")
                    {
                        TaskLead mytl = new TaskLead();
                        mytl.TLID = type.EmployeeID;
                        db.TaskLeads.InsertOnSubmit(mytl);
                        db.SubmitChanges();
                    }

                }
                Response.Redirect("~//AdminEmployeeConfirmationPage.aspx");
          
            //else
            //{
            //    requiredField.Visible = true;
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myEmp.FirstName = empFN.Value;
            myEmp.LastName = empLN.Value;
            myEmp.Mobile = empNumber.Value;
            myEmp.Email = empEmail.Value;
            myEmp.JobTitle = jobTitle.Value;

            if (empType.Value == "Admin")
            {
                myEmp.EmployeeType = "3";
            }
            if (empType.Value == "Design Lead")
            {
                myEmp.EmployeeType = "2";
            }
            if (empType.Value == "Design Officer")
            {
                myEmp.EmployeeType = "1";
            }
            if (empType.Value == "Task Lead")
            {
                myEmp.EmployeeType = "0";
            }

            myEmp.Password = empPassword.Value;

            db.Employees.InsertOnSubmit(myEmp);
            db.SubmitChanges();

            var empl = from a in db.Employees
                       orderby a.EmployeeID descending
                       select a;
            if (empl.Count() != 0)
            {
                var type = empl.First();

                if (type.EmployeeType == "2")
                {
                    DesignLead mydl = new DesignLead();
                    mydl.DLID = type.EmployeeID;
                    db.DesignLeads.InsertOnSubmit(mydl);
                    db.SubmitChanges();
                }
                if (type.EmployeeType == "1")
                {
                    DesignOfficer mydo = new DesignOfficer();
                    mydo.DOID = type.EmployeeID;
                    db.DesignOfficers.InsertOnSubmit(mydo);
                    db.SubmitChanges();
                }
                if (type.EmployeeType == "0")
                {
                    TaskLead mytl = new TaskLead();
                    mytl.TLID = type.EmployeeID;
                    db.TaskLeads.InsertOnSubmit(mytl);
                    db.SubmitChanges();
                }

            }
            Response.Redirect("~//AdminEmployeeConfirmationPage.aspx");

        }
    }
    }
