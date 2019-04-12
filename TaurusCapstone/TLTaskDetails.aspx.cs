using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm40 : System.Web.UI.Page
    {
        PMSDataClassesDataContext db = new PMSDataClassesDataContext();
       Task myTask = new Task();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count != 0)
            {
                foreach (string item in Session.Keys)
                {
                    if (item == "taskName")
                    {

                        Label3.Text = (string)Session[item];
                        
                    }
                    if (item == "typeF")
                    {

                        findings.Visible = true;

                    }
                    if(item =="typeS")
                    {
                        findings.Visible = false;

                    }
                }
            }

            var TASDET = from a in db.Tasks
                         where a.TaskName == Label3.Text
                         select a;
            if(TASDET.Count()!=0)
            {
                var det = TASDET.First();
                Label8.Text = det.TaskID.ToString();
                
                Label5.Text = det.ExpectedEndDate.ToString();
                Label6.Text = det.Status;
            }

            var projectDetails = from a in db.TaskCreations
                                 from b in db.Projects
                                 from c in db.DLAssignments
                                 from d in db.Employees
                                 where a.ProjectID == b.ProjectID && a.TaskID == Convert.ToInt16(Label8.Text) && c.ProjectID == b.ProjectID && d.EmployeeID == c.DLID
                                   select new {b.ProjectName, b.ProjectType, b.Description, name = d.FirstName + " " + d.LastName};
            if (projectDetails.Count() != 0)
            {
                var det = projectDetails.First();
                pName.Text = det.ProjectName;
                pType.Text = det.ProjectType;
                DLName.Text = det.name;
                pDescription.Text = det.Description;


            }
        }

        protected void viewDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TLViewProjectDetails.aspx");
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
                TextBox findingName = (TextBox)GridView1.Rows[i].Cells[1].FindControl("findingName");
                TextBox findingDescription = (TextBox)GridView1.Rows[i].Cells[2].FindControl("findingDescription");
                DropDownList findingType = (DropDownList)GridView1.Rows[i].Cells[3].FindControl("findingType");
                FileUpload findingResult = (FileUpload)GridView1.Rows[i].Cells[4].FindControl("findingResult");

                }
            }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TLViewTasks.aspx");
        }

        protected void backButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/TLViewTasks.aspx");
        }
    }
    }