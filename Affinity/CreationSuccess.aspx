<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreationSuccess.aspx.cs" Inherits="CreationSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Account Created! &lt;a href=&quot;Default.aspx&quot; style=&quot;text-decoration: none&quot;&gt;Click&lt;a&gt; to go home."></asp:Label>
    </p>
    <p>
    </p>
</asp:Content>

