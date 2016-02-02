<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part4.aspx.cs" Inherits="CS397Project1.Part4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculate Your Monthly Car Payment! </title>
    <link href="Project1Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton = "CalculateBtn">
    <div>
    
        Car Loan Payment Calculator<br />
        <br />
    
        <asp:Label ID="PriceLbl" runat="server" Text="Price of Car:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PriceTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="DownPaymentLbl" runat="server" Text="Down Payment:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DPTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="AprLbl" runat="server" Text="Annual Percentage Rate:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="APRTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="YearsLbl" runat="server" Text="Term of Loan in Years:"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="YearsTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="CalculateBtn" runat="server" class="button" OnClick="CalculateBtn_Click" Text="Calculate Monthly Auto Loan Payment" />
        <br />
        <br />
        <asp:Label ID="MonthlyLoanPaymentLbl" runat="server" Text=" "></asp:Label>
        <asp:Label ID="ErrorLbl" runat="server" CssClass="error" Text=""></asp:Label>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
