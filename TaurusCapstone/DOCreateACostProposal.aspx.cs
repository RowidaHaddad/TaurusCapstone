using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Web.UI.WebControls;

namespace TaurusCapstone
{
    public partial class WebForm44 : System.Web.UI.Page
    {
        PMSDataClassesDataContext mydb = new PMSDataClassesDataContext();
        int scoid;
        protected void Page_Load(object sender, EventArgs e)
        {
            alert.Visible = false;
            fields.Visible = false;

            if (!IsPostBack)
            {
                var pro = from a in mydb.Projects
                          from b in mydb.CostProposals
                          where a.ProjectID == b.ProjectID
                          select a;

                var proo = mydb.Projects.Except(pro);


                DropDownList1.DataSource = proo;
                DropDownList1.DataTextField = "ProjectName";
                DropDownList1.DataValueField = "ProjectID";
                DropDownList1.DataBind();

            }
        }



        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            ArrayList mylist = new ArrayList();
            for (int i = 0; i < Convert.ToInt16(DropDownList3.SelectedValue); i++)
            {
                mylist.Add(i);

            }
            GridView1.DataSource = mylist;
            GridView1.DataBind();

        }

        protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
        {
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                GridView gv = (GridView)GridView1.Rows[i].Cells[2].FindControl("Gridview3");
                DropDownList dp = (DropDownList)GridView1.Rows[i].Cells[1].FindControl("dropdownlist4");
                ArrayList mylist = new ArrayList();
                for (int j = 0; j < Convert.ToInt16(dp.SelectedValue); j++)
                {
                    mylist.Add(j);

                }
                gv.DataSource = mylist;
                gv.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CostProposal myprop = new CostProposal();
            myprop.Status = "Pending";
            //----myprop.Description = cpDescription.Value;
            myprop.Category = DropDownList2.SelectedValue;
            myprop.date = DateTime.Now;
            myprop.ProjectID = Convert.ToInt16(DropDownList1.SelectedValue);
            mydb.CostProposals.InsertOnSubmit(myprop);
            mydb.SubmitChanges();

            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                TextBox tb = (TextBox)GridView1.Rows[i].Cells[0].FindControl("Textbox2");
                GridView gv = (GridView)GridView1.Rows[i].Cells[2].FindControl("Gridview3");
                CostProposalScope myscope = new CostProposalScope();
                var cos = from a in mydb.CostProposals
                          orderby a.CostProposalID descending
                          select a;

                if (cos.Count() != 0)
                {
                    var c = cos.First();
                    Label1.Text = c.CostProposalID.ToString();
                }
                myscope.CostProposalID = Convert.ToInt16(Label1.Text);
                myscope.ScopeName = tb.Text;
                mydb.CostProposalScopes.InsertOnSubmit(myscope);
                mydb.SubmitChanges();

                for (int j = 0; j <= gv.Rows.Count - 1; j++)
                {
                    TextBox tbb = (TextBox)gv.Rows[j].Cells[0].FindControl("Textbox4");
                    ScopeDeliverable mydel = new ScopeDeliverable();
                    var sco = from a in mydb.CostProposalScopes
                              orderby a.ScopeID descending
                              select a;

                    if (sco.Count() != 0)
                    {
                        var sc = sco.First();
                        scoid = sc.ScopeID;
                    }
                    mydel.ScopeID = scoid;
                    mydel.Deliverable = tbb.Text;
                    mydb.ScopeDeliverables.InsertOnSubmit(mydel);
                    mydb.SubmitChanges();
                    alert.Visible = true;
                }
            }
        }
    }
}