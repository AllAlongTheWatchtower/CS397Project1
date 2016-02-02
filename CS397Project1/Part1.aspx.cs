using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS397Project1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected double age;
        protected double rhr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calculate_Click(object sender, EventArgs e)
        {
            GetUserInput();
            if (age <= 0 | rhr <= 0)
            {
                error.Text = "Error!  Please enter valid numbers above 0 for the age and resting heart rate";
                trainingHeartRateLbl.Text = "";
            }
            else {
                double thr = (220 - age - rhr) * .60 + rhr;
                error.Text = "";
                trainingHeartRateLbl.Text = "Your target training heart rate is "+ thr.ToString();
            }
        }

        // Get age and resting heart rate from aspx file
        protected void GetUserInput()
        {
            try
            {
                age = Double.Parse(ageTbx.Text);
                rhr = Double.Parse(restingHeartRateTbx.Text);
            }
            catch (Exception)
            {
                error.Text = "Error!  Please enter numbers for the age and resting heart rate!";
                trainingHeartRateLbl.Text = "";
            }
        }
    }
}