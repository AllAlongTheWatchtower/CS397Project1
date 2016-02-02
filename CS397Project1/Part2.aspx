<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part2.aspx.cs" Inherits="CS397Project1.Part2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sarah Anderson's Salon</title>
    <link href="Project1Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton ="CalculateBtn">
    <div>
    
        Sarah Anderson&#39;s Salon<br />
        <br />
    
        <asp:DropDownList ID="ddlServices" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="ddlDiscount" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="CalculateBtn" runat="server" Text="Calculate Total Bill" class="button" OnClick="Calculate_Click" />
    
        <br />
        <br />
        <asp:Label ID="totalCostLbl" runat="server" Text=" "></asp:Label>
    </div>
    </form>
</body>
</html>
