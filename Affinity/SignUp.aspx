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
        .auto-style8 {
            text-align: right;
            width: 425px;
            font-weight: bold;
            height: 11px;
        }
        .auto-style9 {
            text-align: left;
            height: 11px;
        }
        .auto-style10 {
            text-align: right;
            width: 425px;
            font-weight: bold;
            height: 1px;
        }
        .auto-style11 {
            text-align: left;
            height: 1px;
        }
    </style>
    <script type ="text/javascript">
        function CheckBoxRequired_ClientValidate(sender, e) {
            e.IsValid = jQuery(".AcceptedAgreement input:checkbox").is(':checked');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<table class="auto-style1" align="center">
    <tr>
        <td class="auto-style8">
            <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfUsername" runat="server" ControlToValidate="txtUsername" Font-Bold="True" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
        </td>
        <td class="auto-style11">
            <asp:Button ID="btnCheckAvail" runat="server" OnClick="btnCheckAvail_Click" Text="Check" ValidateRequestMode="Enabled" ValidationGroup="username" />
            <asp:Label ID="lblAvailable" runat="server" ForeColor="#009933" Text="Available" Visible="False" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfPassword" runat="server" ControlToValidate="txtPassword" Font-Bold="True" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm Password: " CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtPasswordConfirm" runat="server" ValidationGroup="password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfPasswordConfirm" runat="server" ControlToValidate="txtPasswordConfirm" Font-Bold="True" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="comparePassword" runat="server" ErrorMessage=" Passwords Must Match" Font-Bold="True" ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblEmail" runat="server" Text="Enter Email:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfEmail" runat="server" Font-Bold="True" ForeColor="Red" ControlToValidate="txtEmail">*Required Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm Email:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEmailConfirm" runat="server" ValidationGroup="email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfEmailConfirm" runat="server" Font-Bold="True" ForeColor="Red" ControlToValidate="txtEmailConfirm">*Required Field</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compareEmail" runat="server" ErrorMessage="  Emails Must Match" Font-Bold="True" ForeColor="Red" ControlToCompare="txtEmail" ControlToValidate="txtEmailConfirm"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:CustomValidator ID="checkValidator" runat="server" ForeColor="#FF5050" OnServerValidate="checkValidator_ServerValidate" ClientValidationFunction ="CheckBoxRequired_ClientValidate">*Must Agree*</asp:CustomValidator>
            <asp:CheckBox ID="checkAgree" runat="server" Text="I <a href='ToS.html' target='_blank' style='text-decoration: none'>Agree</a>." TextAlign="Left" />
        </td>
        <td class="auto-style5">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="26px" OnClick="btnSubmit_Click" />
        </td>
    </tr>
</table>
<asp:SqlDataSource ID="userDS" runat="server" ConnectionString="<%$ ConnectionStrings:users %>" SelectCommand="SELECT * FROM [user]" ProviderName="<%$ ConnectionStrings:users.ProviderName %>"></asp:SqlDataSource>

</asp:Content>
