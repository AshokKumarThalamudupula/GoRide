<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selection.aspx.cs" Inherits="GoRide.Selection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Please Select a Car "></asp:Label>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SelectACar">
            <Columns>
                <asp:BoundField DataField="Owner Name" HeaderText="Owner Name" SortExpression="Owner Name" />
                <asp:BoundField DataField="Owner ID" HeaderText="Owner ID" SortExpression="Owner ID" />
                <asp:BoundField DataField="Car Number" HeaderText="Car Number" SortExpression="Car Number" />
                <asp:BoundField DataField="Car Model" HeaderText="Car Model" SortExpression="Car Model" />
                <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" SortExpression="Phone Number" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Text="Go" />
        <asp:SqlDataSource ID="SelectACar" runat="server" ConnectionString="<%$ ConnectionStrings:GoRideConnectionString %>" SelectCommand="SELECT * FROM [Selection]"></asp:SqlDataSource>
    </form>
</body>
</html>
