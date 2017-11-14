<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Admin.aspx.cs" Inherits="DBHandIn3.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="header-wrap">
        </div>
        <div class="loginform" style="margin-left: 39%" font-names="Helvetica">
            <asp:Label ID="LabelLogInAdmin" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="To log in as an admin, please fill out the form below." ForeColor="#6CBCFD"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LogInLabelMessage" runat="server"></asp:Label>
            <br />
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelAdminLogIn" runat="server" Font-Names="Helvetica" Font-Size="Small" ForeColor="Black" Text="User name:" ></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxEmailLogInAdmin" runat="server" ToolTip="Please, enter your user name here." Width="261px" MaxLength="50"></asp:TextBox>

&nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelPasswordLogInAdmin" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="Password:"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxPasswordLogInAdmin" runat="server" ToolTip="Please, enter phone number here." Width="261px"></asp:TextBox>
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="ButtonLogInAdmin" runat="server" CssClass="button" Text="Log In "  Width="261px" OnClick="ButtonLogInAdmin_Click" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMessage" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 15px;text-align: center;padding-top: 3%;padding-left: 4%;font-style: italic;" CssClass="labelmessage"></asp:Label>
            <br />
            <br />
            <br />&nbsp;
            <br />
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   
</asp:Content>