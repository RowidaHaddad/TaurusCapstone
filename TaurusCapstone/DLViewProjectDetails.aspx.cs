using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Data;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();

        Employee myEmp = new Employee();
        protected void Page_Load(object sender, EventArgs e)
        {

            

                if (Session.Count != 0)
                {
                    foreach (string name in Session.Keys)
                    {
                        if (name == "ProjectDetails")
                        {
                            pNameLabel.Text = (string)Session[name];
                            var projectdetails = from a in db.Projects
                                                 from b in db.Clients
                                                     //from c in db.DLAssignments
                                                     // from d in db.Employees
                                                 where a.ProjectName == pNameLabel.Text && a.ClientID == b.ClientID
                                                 select new { b.ClientName, a.ExpectedEndDate, a.Status, a.ProjectType, a.ProjectID };
                            if (projectdetails.Count() != 0)
                            {
                                var prdet = projectdetails.First();
                                clientLabel.Text = prdet.ClientName;
                                pStatusLabel.Text = prdet.Status;
                                dateLabel.Text = prdet.ExpectedEndDate.ToString("dd/MM/yyyy");

                                pTypeLabel.Text = prdet.ProjectType;
                                // currentStatusLabel.Text =
                                Label1.Text = prdet.ProjectID.ToString();
                                //  did = prdet.DLID;
                            }

                        }
                        if (name == "Firstname")
                        {

                            myEmp = (Employee)Session[name];
                            designLeadLabel.Text = myEmp.FirstName;
                            Label2.Text = myEmp.EmployeeID.ToString();
                        }

                    }
                }
            if (!IsPostBack)
            {
                //NewRowGridview();
                alert.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            ArrayList mylist = new ArrayList();
            for (int j = 0; j < Convert.ToInt16(TextBox1.Text); j++)
            {
                mylist.Add(j);

            }

            GridView1.DataSource = mylist;
            GridView1.DataBind();


            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                Label lb = (Label)GridView1.Rows[i].Cells[0].FindControl("number");
                lb.Text = (i + 1).ToString();
                TextBox taskName = (TextBox)GridView1.Rows[i].Cells[1].FindControl("taskName");
                TextBox taskDescription = (TextBox)GridView1.Rows[i].Cells[2].FindControl("taskDescription");
                TextBox taskDate = (TextBox)GridView1.Rows[i].Cells[3].FindControl("taskDate");
                DropDownList taskLead = (DropDownList)GridView1.Rows[i].Cells[4].FindControl("taskLeadName");




                var ele =
                          from b in db.Employees
                          where b.EmployeeType == "0" 
                          select new { name = b.FirstName + " " + b.LastName, b.EmployeeID };
                if (ele.Count() != 0)
                {
                    taskLead.DataSource = ele;
                    taskLead.DataTextField = "name";
                    taskLead.DataValueField = "EmployeeID";
                    taskLead.DataBind();
                }
            }
        }



        protected void Button1_Click3(object sender, EventArgs e)
        {

            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                TextBox taskName = (TextBox)GridView1.Rows[i].Cells[1].FindControl("taskName");
                TextBox taskDescription = (TextBox)GridView1.Rows[i].Cells[2].FindControl("taskDescription");
                TextBox taskDate = (TextBox)GridView1.Rows[i].Cells[3].FindControl("taskDate");
                DropDownList taskLead = (DropDownList)GridView1.Rows[i].Cells[4].FindControl("taskLeadName");

                Task mytask = new Task();
                mytask.TaskName = taskName.Text;
                mytask.Description = taskDescription.Text;
              
                mytask.ExpectedEndDate = Convert.ToDateTime(taskDate.Text);
                mytask.Status = "Pending";

                db.Tasks.InsertOnSubmit(mytask);
                db.SubmitChanges();

                TaskCreation mytaskcreation = new TaskCreation();
                var ele = from a in db.Tasks
                          orderby a.TaskID descending
                          select a;

                if (ele.Count() != 0)
                {
                    var tid = ele.First();

                    mytaskcreation.TaskID = tid.TaskID;

                    mytaskcreation.ProjectID = Convert.ToInt16(Label1.Text);
                    mytaskcreation.DLID = Convert.ToInt16(Label2.Text);
                    db.TaskCreations.InsertOnSubmit(mytaskcreation);
                    db.SubmitChanges();
                }

                TaskLeadAssignment MYASSIGN = new TaskLeadAssignment();
                var tele = from a in db.Tasks
                           orderby a.TaskID descending
                           select a;

                if (tele.Count() != 0)
                {
                    var tid = tele.First();

                    mytaskcreation.TaskID = tid.TaskID;
                    MYASSIGN.DLID = Convert.ToInt16(Label2.Text);
                    MYASSIGN.TaskID = tid.TaskID;
                    MYASSIGN.TLID = Convert.ToInt16(taskLead.SelectedValue);
                    db.TaskLeadAssignments.InsertOnSubmit(MYASSIGN);
                    db.SubmitChanges();
                }
                alert.Visible = true;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}