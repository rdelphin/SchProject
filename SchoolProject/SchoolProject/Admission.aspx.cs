using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

namespace SchoolProject
{
    public partial class Admission :System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calDateOfBirth.Visible = false;
            }
        }
     
        protected void calDateOfBirth_SelectionChanged(object sender, EventArgs e)
        {
            txtStudentDateOfBirth.Text = calDateOfBirth.SelectedDate.ToString("d");
            calDateOfBirth.Visible = false;
        }

        protected void calDateOfBirth_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void imgDateOfBirth_Click(object sender, ImageClickEventArgs e)
        {
            if (calDateOfBirth.Visible)
            {
                calDateOfBirth.Visible = false;
            }
            else
            {
                calDateOfBirth.Visible = true;
            }
        }

    }
}