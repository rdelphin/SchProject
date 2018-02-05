using System;
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
            }
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
    }
}