using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS397Project1
{
    public partial class Part4 : System.Web.UI.Page
    {
        protected double price;
        protected double downPayment;
        protected double apr;
        protected double years;
        protected bool inputIsValid = true;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateBtn_Click(object sender, EventArgs e)
        {
            GetUserData();
            ValidateData();
            if (inputIsValid)
            {
                double months = years * 12;
                double interest = apr / 1200;
                double monthlyPayment = ((price - downPayment) * interest * Math.Pow((1 + interest), months)) /
                    (Math.Pow((1 + interest), months) - 1);
                ErrorLbl.Text = "";
                MonthlyLoanPaymentLbl.Text = "Your monthly car loan payment is $" + monthlyPayment.ToString("#.##");
            }
        }

        // Get input from the aspx form, catch exception if data is not numbers
        protected void GetUserData()
        {
            try {
                price = Double.Parse(PriceTbx.Text);
                downPayment = Double.Parse(DPTbx.Text);
                apr = Double.Parse(APRTbx.Text);
                years = Double.Parse(YearsTbx.Text);
            }
            catch (Exception)
            {
                ErrorLbl.Text = "Please enter positive numbers in the calculator!";
                MonthlyLoanPaymentLbl.Text = "";
                inputIsValid = false;
            }
        }

        // Validate that data is positive numbers and 
        // that the down payment is not more than the price
        protected void ValidateData()
        {
            if (price < 0 | downPayment < 0 | apr < 0 | years < 0)
            {
                ErrorLbl.Text = "Please enter positive numbers in the calculator!";
                MonthlyLoanPaymentLbl.Text = "";
                inputIsValid = false;
            }
            else if (price <= downPayment)
            {
                ErrorLbl.Text = "Please make sure that your down payment is not more than the price of the car!";
                MonthlyLoanPaymentLbl.Text = "";
                inputIsValid = false;
            }
        }
    }
}