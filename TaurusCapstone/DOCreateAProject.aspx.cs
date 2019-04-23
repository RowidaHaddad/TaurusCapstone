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

        Employee myEmp = new Employee();
        protected void Page_Load(object sender, EventArgs e)
        {
            alert.Visible = false;
            fields.Visible = false;

            if (Session.Count!=0)
            {
                foreach(string name in Session.Keys)
                {
                    if(name=="Firstname")
                    {
                        myEmp = (Employee)Session[name];

                    }
                }
            }
            
        }
        protected void addProject_ServerClick(object sender, EventArgs e)
        {
            Project myProject = new Project();
            myProject.ProjectName = projectName.Value;
            DateTime d = Convert.ToDateTime(date.Text);
            myProject.ExpectedEndDate = Convert.ToDateTime(d.ToString("MM/dd/yyyy"));
            myProject.StartDate = DateTime.Now;
            myProject.Status = "Pending";
            myProject.ProjectType = projectType.SelectedValue;
            myProject.Description = pDescription.Value;
            myProject.ClientID = Convert.ToInt16(clientNamesDL.SelectedValue);
            myProject.DOID = myEmp.EmployeeID;
            db.Projects.InsertOnSubmit(myProject);
            db.SubmitChanges();
            var el = from a in db.Projects
                     orderby a.ProjectID descending
                     select a;

            if(el.Count()!=0)
            {
                var ell = el.First();
            DLAssignment mydl = new DLAssignment();
            mydl.DOID = myEmp.EmployeeID;
            mydl.DLID = Convert.ToInt16(dlNames.SelectedValue);
                
                mydl.ProjectID = ell.ProjectID;
                db.DLAssignments.InsertOnSubmit(mydl);
                db.SubmitChanges();

                alert.Visible = true;
                projectName.Value = string.Empty;
                date.Text = string.Empty;
                pDescription.Value = string.Empty;
                

            }
            else
            {

                fields.Visible = true;
            }
        }
    }
}