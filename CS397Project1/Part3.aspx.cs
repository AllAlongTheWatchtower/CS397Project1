using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS397Project1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected bool isValid = true;
        protected double assignmentScore;
        protected double quizScore;
        protected double midTermScore;
        protected double finalExamScore;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            double finalScore = CalculateFinalGrade();
            CheckName();
            CheckDataValidity();
            if (isValid)
            {
                string grade = "";
                if (finalScore >= 90)
                {
                    grade = "A";
                }
                else if (finalScore >= 80)
                {
                    grade = "B";
                }
                else if (finalScore >= 70)
                {
                    grade = "C";
                }
                else if (finalScore >= 60)
                {
                    grade = "D";
                }
                else
                {
                    grade = "F";
                }
                ErrorLbl.Text = "";
                FinalGradeLbl.Text = NameTbx.Text + " earned a grade of " + grade;
            }
        }

        // Validates the input in the name textbox
        protected void CheckName()
        {
            if (NameTbx.Text.Equals(""))
            {
                isValid = false;
                ErrorLbl.Text = "Please check that you have entered the name of the student.";
                FinalGradeLbl.Text = "";
            }
        }

        // Validates the input in the score textboxes
        protected void CheckDataValidity()
        {
            if (assignmentScore > 100 | assignmentScore < 0 |
                quizScore > 100 | quizScore < 0 |
                midTermScore > 100 | midTermScore < 0 |
                finalExamScore > 100 | finalExamScore < 0)
            {
                FinalGradeLbl.Text = "";
                ErrorLbl.Text = "Please check that you have entered scores between 0 and 100 for each item.";
                isValid = false;
            }
        }

        // Calculates the final grade
        protected double CalculateFinalGrade()
        {
            try {
                assignmentScore = Double.Parse(AssignmentScoreTbx.Text);
                quizScore = Double.Parse(QuizScoreTbx.Text);
                midTermScore = Double.Parse(MidTermScoreTbx.Text);
                finalExamScore = Double.Parse(FinalExamScoreTbx.Text);
            }
            catch (Exception)
            {
                FinalGradeLbl.Text = "";
                isValid = false;
                ErrorLbl.Text = "Please check that you have entered numbers for each score.";
            }
            double finalScore = (assignmentScore * .40) + (quizScore * .15) +
                (midTermScore * .20) + (finalExamScore * .25);
            return finalScore;
        }
    }
}