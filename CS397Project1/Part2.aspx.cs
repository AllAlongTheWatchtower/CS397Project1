using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS397Project1
{
    public partial class Part2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddToServicesDdl();
                AddToDiscountDdl();
            }
        }

        // Add options to the services drop-down box
        protected void AddToServicesDdl()
        {
            ListItem makeover = new ListItem("Makeover", "125");
            ListItem hairStyling = new ListItem("Hair Styling", "60");
            ListItem manicure = new ListItem("Manicure", "35");
            ListItem permanentMakeUp = new ListItem("Permanent Makeup", "200");
            ddlServices.Items.Add(makeover);
            ddlServices.Items.Add(hairStyling);
            ddlServices.Items.Add(manicure);
            ddlServices.Items.Add(permanentMakeUp);
        }

        // Add options to the discount drop-down box
        protected void AddToDiscountDdl()
        {
            ListItem noDiscount = new ListItem("No Discount", "1");
            ListItem tenPercent = new ListItem("10% Discount", ".9");
            ListItem twnetyPercent = new ListItem("20% Discount", ".8");
            ddlDiscount.Items.Add(noDiscount);
            ddlDiscount.Items.Add(tenPercent);
            ddlDiscount.Items.Add(twnetyPercent);
        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            double service;
            double discount;
            double cost = 0;
            try {
                service = Double.Parse(ddlServices.Text);
                discount = Double.Parse(ddlDiscount.Text);
                cost = service * discount;
            }
            catch  (Exception)
            {
                totalCostLbl.CssClass = "error";
                totalCostLbl.Text = "Error!  PLease try again!";
            }
            totalCostLbl.Text = "The cost of your visit today is $" + cost.ToString("#.##");
        }
    }
}