using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectionMode == CalendarSelectionMode.Day)
            Response.Write("<br/>" + Calendar1.SelectedDate.ToLongDateString());
        else if (Calendar1.SelectionMode == CalendarSelectionMode.DayWeek)
        {
            foreach (DateTime d in Calendar1.SelectedDates)
            {
                Response.Write("<br/>" + d.ToLongDateString());
            }
        }
        else if (Calendar1.SelectionMode == CalendarSelectionMode.DayWeekMonth)
        {
             foreach (DateTime d in Calendar1.SelectedDates)
            {
                Response.Write("<br/>" + d.ToLongDateString());
            }
        }

    }
}
