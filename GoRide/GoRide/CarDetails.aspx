<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="GoRide.CarDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 357px;
        }
        .auto-style2 {
            width: 403px;
        }
        .auto-style3 {
            width: 453px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblUserID" runat="server" Text="UserID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUserID" runat="server" Width="426px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCarNumber" runat="server" Text="Car Number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCarNumber" runat="server" Width="421px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCarNumber" runat="server" ErrorMessage="Please Enter Your Car Number" ControlToValidate="txtCarNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCarModel" runat="server" Text="Car Model"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCarModel" runat="server" Width="417px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCarModel" runat="server" ErrorMessage="Please Enter Your Car Model" ControlToValidate="txtCarModel" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPickUp" runat="server" Text="Pickup Address"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPickupAddress" runat="server" Width="421px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPickUp" runat="server" ErrorMessage="Please Enter The Pickup Address" ControlToValidate="txtPickupAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblDrop" runat="server" Text="Drop Address"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDropAddress" runat="server" Width="418px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDrop" runat="server" ErrorMessage="Please Enter The Drop Address" ControlToValidate="txtDropAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblFare" runat="server" Text="Fare"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFare" runat="server" Width="427px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvFare" runat="server" ErrorMessage="Please Enter The Fare For A Ride" ControlToValidate="txtFare" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNumberOfSeats" runat="server" Text="Number of Seats"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSeats" runat="server" Width="425px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvSeats" runat="server" ErrorMessage="Please Enter The Number Of  Seats Available" ControlToValidate="txtSeats" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
