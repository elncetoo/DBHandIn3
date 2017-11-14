<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="DBHandIn3.LogIn" Theme="Treatments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            padding-left: 1px;
            text-align: center;
        }
        .auto-style2 {
            display: flex;
            flex-direction: row;
            justify-content: center;
            padding: 1% 3% 1% 3%;
            margin-top: -44px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style2">
        </div>
        <div class="auto-style1" style="margin-left: -3%;">
            <asp:Label ID="LabelLogInPat" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="To log in as a patient, please fill out the form below." ForeColor="#6CBCFD"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LogInLabelMessage" runat="server"></asp:Label>
            <br />
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelUserNameLogIn" runat="server" Font-Names="Helvetica" Font-Size="Medium" Text="Email:" CssClass="label" ></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxEmailLogIn" runat="server" ToolTip="Please, enter your user name here." Width="338px" MaxLength="50" Height="25px"></asp:TextBox>

&nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelPasswordLogIn" runat="server" Font-Names="Helvetica" Font-Size="Medium" Text="Password:" CssClass="label"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxPasswordLogIn" runat="server" ToolTip="Please, enter phone number here." Width="338px" Height="25px"></asp:TextBox>
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="ButtonLogIn" runat="server" CssClass="button" Text="Log In " OnClick="ButtonLogIn_Click" Width="261px" />
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
