<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="GoRide.Wecome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Welcome.css" rel="stylesheet" />
</head>
<body>
<div id="forminput">
    
    <form id="form1" runat="server">
        <h1 id="head">Welcome To GoRide!</h1>
        <asp:TextBox CssClass="input" ID="txtUserId" placeholder="User Id" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <asp:TextBox CssClass="input" ID="txtPassword" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <div id="divbtn">
        <asp:Button ID="btnSingIn" CssClass="button" runat="server" Text="Sign In" OnClick="btnSingIn_Click" />
        <asp:Button ID="btnSignUp" CssClass="button" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
        </div>
        </form>
    </div>
</body>
</html>
