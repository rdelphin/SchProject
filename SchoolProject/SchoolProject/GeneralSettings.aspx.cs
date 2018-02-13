using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolProject
{
    public partial class GeneralSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calEffectiveBeginDate.Visible = false;
                calEffectiveEndDate.Visible = false;
                // GridView data source
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[4]
                        {
                            new DataColumn("PhoneType"),
                            new DataColumn("PhoneNumber"),
                            new DataColumn("Extension"),
                            new DataColumn("Primary")
                        }
                    );
                ViewState["Phone"] = dt;
                this.BindGrid();

                // Gridview1  data source
                DataTable dttr = new DataTable();
                dttr.Columns.AddRange(new DataColumn[8]
                {
                    new DataColumn("TrimesterName"),
                    new DataColumn("ShortName"),
                    new DataColumn("Graded"),
                    new DataColumn("Exam"),
                    new DataColumn("BeginDate"),
                    new DataColumn("EndDate"),
                    new DataColumn("GradePostingBegins"),
                    new DataColumn("GradePostingEnds")
                });
                ViewState["Trimester"] = dttr;
                this.BindGrid();

                // Grade Levels gridview
                DataTable dtGradeLevels = new DataTable();
                // Add columns to Datatable
                dtGradeLevels.Columns.AddRange(new DataColumn[4]
                {
                    new DataColumn("GradeName"),
                    new DataColumn("ShortName"),
                    new DataColumn("Order"),
                    new DataColumn("NextGradeLevel")
                });

                // set the default value
                dtGradeLevels.Columns["GradeName"].DefaultValue = 0;
                // Add Rows to Datatable
                dtGradeLevels.Rows.Add("Premier Annee", "1er", "1", "Deuxieme Annee");
                dtGradeLevels.Rows.Add("Deuxieme Annee", "2e", "2", "Troisieme Annee");
                dtGradeLevels.Rows.Add("Troisieme Annee", "3e", "3", "Quatrieme Annee");
                dtGradeLevels.Rows.Add("Quatrieme Annee", "4e", "4", "Cinquieme Annee");
                dtGradeLevels.Rows.Add("Cinquieme Annee", "5e", "5", "Sixieme Annee");
                dtGradeLevels.Rows.Add("Sixieme Annee", "6e", "7", "Septieme Annee");
                ViewState["GradeLevel"] = dtGradeLevels;
                this.BindGrid();

            }
        }

        protected void BindGrid()
        {
            GridView1.DataSource = (DataTable)ViewState["Phone"];
            GridView1.DataBind();

            Gridview2.DataSource = (DataTable)ViewState["Trimester"];
            Gridview2.DataBind();

            grdGradeLevels.DataSource = (DataTable)ViewState["GradeLevel"];
            grdGradeLevels.DataBind();

            
        }
    

        protected void imgEffectiveBeginDate_Click(object sender, ImageClickEventArgs e)
        {
            if (calEffectiveBeginDate.Visible)
            {
                calEffectiveBeginDate.Visible = false;
            }
            else
            calEffectiveBeginDate.Visible = true;
        }

        protected void imgEffectiveEndDate_Click(object sender, ImageClickEventArgs e)
        {
            if(calEffectiveEndDate.Visible)
            {
                calEffectiveEndDate.Visible = false;
            }
            else
            calEffectiveEndDate.Visible = true;
        }

        protected void calEffectiveBeginDate_SelectionChanged(object sender, EventArgs e)
        {
            txtEffectiveBeginDate.Text = calEffectiveBeginDate.SelectedDate.ToString("d");
            calEffectiveBeginDate.Visible = false;
        }

        protected void calEffectiveEndDate_SelectionChanged(object sender, EventArgs e)
        {
            txtEffectiveEndDate.Text = calEffectiveEndDate.SelectedDate.ToString("d");
            calEffectiveEndDate.Visible = false;
        }

        protected void calEffectiveBeginDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
               
            }
           
        }

        protected void calEffectiveEndDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void btnAddToList_Click(object sender, EventArgs e)
        {
           
            DataTable dt = (DataTable)ViewState["Phone"];
            dt.Rows.Add(txtPhoneNumber.Text.Trim(), ddlPhoneType.Text.Trim(), txtExtension.Text.Trim(), chkPrimary.Checked);
            ViewState["Phone"] = dt;
            this.BindGrid();
            ddlPhoneType.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
            txtExtension.Text = string.Empty;
            chkPrimary.Checked = false;
        }

        protected void btnAddtoListTrimester_Click(object sender, EventArgs e)
        {
            DataTable dttr = (DataTable)ViewState["Trimester"];
            dttr.Rows.Add(txtTrimesterName.Text.Trim(), txtShortName.Text.Trim(), chkGraded.Checked, chkExam.Checked, txtBeginDate.Text.Trim(),
            txtEnddate.Text.Trim(), txtGradePostingBeings.Text.Trim(), txtGradePostingEnds.Text.Trim());
            ViewState["Trimester"] = dttr;
            this.BindGrid();
            txtTrimesterName.Text = string.Empty;
            txtShortName.Text = string.Empty;
            chkGraded.Checked = false;
            chkExam.Checked = false;
            txtBeginDate.Text = string.Empty;
            txtEnddate.Text = string.Empty;
            txtGradePostingBeings.Text = string.Empty;
            txtGradePostingEnds.Text = string.Empty;
        }
    }
}