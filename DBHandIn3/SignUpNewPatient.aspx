<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUpNewPatient.aspx.cs" Inherits="DBHandIn3.SignUpNewPatient" Theme="Treatments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-wrap">
</div>
    <div style="margin-left: 38%;">
    <asp:Label ID="LabelSignUpNewPat" runat="server" Text="To sign up, please fill out the form below." CssClass="label" Font-Names="Helvetica, sans-serif;" Font-Size="Medium" ForeColor="#6CBCFD"></asp:Label>
    <br />
    <br />
    <asp:Label ID="LabelFirstName" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="First name"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ControlToValidate="TextBoxFirstName" EnableClientScript="False" ErrorMessage="Name is missing" ForeColor="Crimson">*</asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="TextBoxFirstName" runat="server" Width="297px"></asp:TextBox>
        <br />
    <br />
    <asp:Label ID="LabelLastName" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="Last name"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="TextBoxLastName" EnableClientScript="False" ErrorMessage="Last name is missing" ForeColor="Crimson">*</asp:RequiredFieldValidator>
&nbsp;<br />
        <asp:TextBox ID="TextBoxLastName" runat="server" Width="297px"></asp:TextBox>
        <br />
    <br />
    <asp:Label ID="LabelCpr" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="CPR"></asp:Label>
   <br />
    <asp:TextBox ID="TextBoxCpr" runat="server" Width="297px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelAge" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="Age"></asp:Label>
        <br />
       <asp:TextBox ID="TextBoxAge" runat="server" Width="297px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelGender" runat="server" Font-Names="Helvetica" Font-Size="Small" ForeColor="Black"  Text="Gender"></asp:Label>
&nbsp;<asp:RadioButtonList ID="RadioButtonListGender" runat="server" AutoPostBack="False" OnSelectedIndexChanged="RadioButtonListGender_SelectedIndexChanged">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="LabelEmail" runat="server" Font-Names="Helvetica" Font-Size="Small" ForeColor="Black"  Text="Email"></asp:Label>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="* Email format is incorrect" ForeColor="Crimson" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Font-Italic="True"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBoxEmail" runat="server" Width="297px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelPassword" runat="server" Font-Names="Helvetica" Font-Size="Small" ForeColor="Black"  Text="Password"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Password is missing" ForeColor="Crimson">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Password must be between 4 and 8 characters , letters and numbers" ForeColor="Crimson" ValidationExpression="^\w{4,8}" Font-Italic="True"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBoxPassword" runat="server" Width="297px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelConfirm" runat="server" Font-Names="Helvetica" Font-Size="Small" ForeColor="Black"  Text="Confirm "></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxConfirm" EnableClientScript="False" ErrorMessage="Confirm is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidatorConfirm" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirm" EnableClientScript="False" ErrorMessage="Passwords do not match" ForeColor="Crimson" Font-Italic="True" Font-Names="Helvetica" Font-Size="Small"></asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextBoxConfirm" runat="server" Width="297px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonSignUp" runat="server" CssClass="button" Text="Sign up as a new patient" OnClick="ButtonSignUp_Click" />
            <br />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 17px;text-align: center;padding-top: 3%;padding-left: 4%;font-style: italic;"></asp:Label>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary" runat="server" BorderStyle="None" EnableClientScript="False" ForeColor="Crimson" HeaderText="&nbsp;&nbsp;&nbsp; Errors on page:" Width="700px" CssClass="validation-sum" Font-Italic="True" Font-Names="Helvetica" Font-Size="Small" />
            <br />&nbsp;
            <br />
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   
</asp:Content>
