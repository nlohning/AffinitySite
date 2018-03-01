<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 80%;
        margin: auto;
        overflow: hidden;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="showcase">
		<div class="container">
			<h1>Join us in your favorite game!</h1>
			<p>Our organization has many teams, with many more to come, in your favorite games.</p>
		</div>
	</section>

	<section id="news">
		<div class="auto-style1">
		    <asp:Label class="news" ID="lblSignUp" runat="server" Text="Sign up to receive emails about new tournaments and developments throughout Affinity!" Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Button class="SignUp" ID="SignUp" runat="server" Text="Sign Up!" />
		</div>
	</section>

	<section id="boxes">
		<div class="container">
			<div class="box">
				<img src="./images/leaguelogo.jpg">
				<h3>League of Legends</h3>
				<p>fuck me I want to die</p>
			</div>


		
			<div class="box">
				<img src="./images/leaguelogo.jpg">
				<h3>Suicide</h3>
				<p>fuck me I want to die</p>
			</div>
		

		
			<div class="box">
				<img src="./images/leaguelogo.jpg">
				<h3>Autism</h3>
				<p>fuck me I want to die</p>
			</div>
		</div>
		
	</section>

	
</asp:Content>

