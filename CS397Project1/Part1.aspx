<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part1.aspx.cs" Inherits="CS397Project1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maximum Training Heart Rate for Maximum Fitness!</title>
    <link href="Project1Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton ="calculateBtn">
    <div>
    
        Calculate Your Training Heart Rate!<br />
        <br />
        Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="ageTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        Resting Heart Rate:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="restingHeartRateTbx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="calculateBtn" runat="server" class="button" Text="Calculate" OnClick="calculate_Click" />
    
        <br />
        <br />
        <asp:Label ID="trainingHeartRateLbl" runat="server" Text="  "></asp:Label>
    
        <asp:Label ID="error" runat="server" CssClass="error" Text=" "></asp:Label>
    
    </div>
    </form>
</body>
</html>
