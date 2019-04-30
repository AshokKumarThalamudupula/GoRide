<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="GoRide.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 94%;
            height: 305px;
        }
        .auto-style3 {
            width: 261px;
        }
        .auto-style4 {
            width: 344px;
        }
        .auto-style5 {
            width: 903px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblName" runat="server" Text="Name" BorderStyle="None"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtName" runat="server" Width="272px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;<asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblUserID" runat="server" Text="UserID"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUserID" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="revUserID" runat="server" ControlToValidate="txtUserID" ErrorMessage="Please Enter the Valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="268px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAge" runat="server" Width="266px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RangeValidator ID="rvAge" runat="server" ErrorMessage="Please Enter the age between 15 - 100" ForeColor="Red" MaximumValue="100" MinimumValue="15" Type="Integer" ControlToValidate="txtAge"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="rdbMale" runat="server" Text="Male" Checked="True" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdbFemale" runat="server" Text="Female" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPhone" runat="server" Width="269px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter the Valid Phone Number" ForeColor="Red" ValidationExpression="[6-9]\d{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAddress" runat="server" Width="267px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Enter Your Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" style="height: 26px" />
    </form>
</body>
</html>
