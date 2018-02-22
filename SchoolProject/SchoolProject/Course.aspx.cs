using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolProject
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calCourseBeginDate.Visible = false;
                calCourseEndDate.Visible = false;
                calSubjectBeginDate.Visible = false;
                calSubjectEndDate.Visible = false;
            }
        }

        protected void imgCourseBeginDate_Click(object sender, ImageClickEventArgs e)
        {
            if (calCourseBeginDate.Visible)
            {
                calCourseBeginDate.Visible = false;
            }
            else
            {
                calCourseBeginDate.Visible = true;
            }

        }

        protected void calCourseBeginDate_SelectionChanged(object sender, EventArgs e)
        {
            txtCourseBeginDate.Text = calCourseBeginDate.SelectedDate.ToString("d");
            calCourseBeginDate.Visible = false;
        }

        protected void calCourseBeginDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void imgCourseEndDate_Click(object sender, ImageClickEventArgs e)
        {
            if (calCourseEndDate.Visible)
            {
                calCourseEndDate.Visible = false;
            }
            else
            {
                calCourseEndDate.Visible = true;
            }
        }

        protected void calCourseEndDate_SelectionChanged(object sender, EventArgs e)
        {
            txtCourseEndDate.Text = calCourseEndDate.SelectedDate.ToString("d");
            calCourseEndDate.Visible = false;
        }

        protected void calCourseEndDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void imgSubjectBeginDate_Click(object sender, ImageClickEventArgs e)
        {
            if (calSubjectBeginDate.Visible)
            {
                calSubjectBeginDate.Visible = false;
            }
            else
            {
                calSubjectBeginDate.Visible = true;
            }
        }

        protected void calSubjectBeginDate_SelectionChanged(object sender, EventArgs e)
        {
            txtSubjectBeginDate.Text = calSubjectBeginDate.SelectedDate.ToString("d");
            calSubjectBeginDate.Visible = false;
        }

        protected void calSubjectBeginDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void imgSubjectEndDate_Click(object sender, ImageClickEventArgs e)
        {
            if (calSubjectEndDate.Visible)
            {
                calSubjectEndDate.Visible = false;
            }
            else
            {
                calSubjectEndDate.Visible = true;
            }
        }

        protected void calSubjectEndDate_SelectionChanged(object sender, EventArgs e)
        {
            txtSubjectEndDate.Text = calSubjectEndDate.SelectedDate.ToString("d");
            calSubjectEndDate.Visible = false;
        }

        protected void calSubjectEndDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}