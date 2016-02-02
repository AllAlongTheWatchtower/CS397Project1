<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part3.aspx.cs" Inherits="CS397Project1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade Calculator</title>
    <link href="Project1Style.css" rel="stylesheet" />
</head>
<body>
    <form id="gradeCalculator" runat="server" defaultbutton ="CalculateBtn">
    <div>
        <asp:Label ID="Name" runat="server" Text="Student's Name: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="NameTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Assignment" runat="server" Text="Total Assignment Score: "></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AssignmentScoreTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Quiz" runat="server" Text="Total Quiz Score: "></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="QuizScoreTbx" runat="server"></asp:TextBox>
    
        <br />
        <br />
        <asp:Label ID="MidTerm" runat="server" Text="Mid-Term Exam Score: "></asp:Label>
    
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="MidTermScoreTbx" runat="server"></asp:TextBox>
    
        <br />
        <br />
        <asp:Label ID="FinalExam" runat="server" Text="Final Exam Score: "></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="FinalExamScoreTbx" AutoPostBack="true" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="CalculateBtn" runat="server" CssClass="button" Text="Calculate Final Grade" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="FinalGradeLbl" runat="server" Text=""></asp:Label>
        <asp:Label ID="ErrorLbl" CssClass="error" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
