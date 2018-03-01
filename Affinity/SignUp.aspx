<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-right: 0px;
    }
    .auto-style2 {
        text-align: right;
        width: 425px;
        font-weight: bold;
        font-size: medium;
    }
    .auto-style3 {
        text-align: right;
        height: 52px;
        width: 425px;
        font-weight: bold;
    }
    .auto-style4 {
        height: 52px;
        text-align: left;
    }
    .auto-style5 {
        text-align: left;
    }
    .auto-style6 {
        text-align: right;
        width: 425px;
        font-weight: bold;
    }
    .auto-style7 {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<table class="auto-style1" align="center">
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Required Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Required Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm Password: " CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtPasswordConfirm" runat="server" ValidationGroup="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfPasswordConfirm" runat="server" ControlToValidate="txtPasswordConfirm" ErrorMessage="*Required Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="comparePassword" runat="server" ErrorMessage=" *Passwords Must Match" Font-Bold="True" ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblEmail" runat="server" Text="Enter Email:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfEmail" runat="server" ErrorMessage="*Required Field" Font-Bold="True" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm Email:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEmailConfirm" runat="server" ValidationGroup="email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfEmailConfirm" runat="server" ErrorMessage="*Required Field" Font-Bold="True" ForeColor="Red" ControlToValidate="txtEmailConfirm"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compareEmail" runat="server" ErrorMessage="  *Emails Must Match" Font-Bold="True" ForeColor="Red" ControlToCompare="txtEmail" ControlToValidate="txtEmailConfirm"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </td>
    </tr>
</table>
<p>
</p>

</asp:Content>

