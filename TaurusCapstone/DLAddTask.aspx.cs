using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
        Task myTask = new Task();
        TaskLeadAssignment taskTL = new TaskLeadAssignment();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            //taskName.Value = myTask.TaskName;
            //taskLeads.SelectedValue = taskTL.TLID.ToString();
            //tDescription.Value = myTask.Description;
            //myTask.StartDate = DateTime.Now;
            //DateTime d = Convert.ToDateTime(month.SelectedValue + "/" + day.SelectedValue + "/" + year.SelectedValue);
            //myTask.ExpectedEndDate = Convert.ToDateTime(d.ToString("MM/dd/yyyy"));
            //taskCost.Value = myTask.Cost.ToString();

            //db.Tasks.InsertOnSubmit(myTask);
            //db.SubmitChanges();

            //var el = from a in db.Tasks
            //         orderby a.TaskID descending
            //         select a;

            //if (el.Count() != 0)
            //{
            //    var ell = el.First();
            //    TaskLeadAssignment taskTL = new TaskLeadAssignment();
            //    taskTL.TLID = myEmp.EmployeeID;
            //    mydl.DLID = Convert.ToInt16(dlNames.SelectedValue);

            //    mydl.ProjectID = ell.ProjectID;
            //    db.TaskLeadAssignments.InsertOnSubmit(mydl);
            //    db.SubmitChanges();
            //}

            //var ele = from a in db.TaskCreations
            //          orderby
        }
    }
    }
