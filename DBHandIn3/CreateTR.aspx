<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="CreateTR.aspx.cs" Inherits="DBHandIn3.CreateTR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="header-wrap">
            <div style="margin-left: -4%;">
        <asp:Button ID="ButtonBackToTRAdmin" runat="server" CssClass="button"  Text="Go back to treatments admin page" PostBackUrl="~/TreatmentsAdmin.aspx" OnClick="ButtonCreateTR_Click" BackColor="#666666" Width="338px" />
            </div>
        </div>
        <div class="repeater" >
            <br />
            <div class="repeater-form">
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxCreateTRName" runat="server" style="text-align: center" Width="373px" Height="25px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelCreateTRName" runat="server" Text="Treatment name" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
                <br />
                <br />&nbsp;&nbsp;<asp:TextBox ID="TextBoxCreateTRPrice" runat="server" Width="373px" Height="25px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelCreateTRPrice" runat="server" Text="Treatment price" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
                <br />
                <br />&nbsp;<asp:TextBox ID="TextBoxCreateTRDate" runat="server" Width="373px" Height="25px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelCreateTRDate" runat="server" Text="Treatment date" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
                <br />
                <br />&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxCreateTRImage" runat="server" Width="373px" Height="25px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelCreateTRImage" runat="server" Text="Treatment image" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
                <br />
                <br />
                <div style="margin-left: -9%;">
                    <asp:Button ID="ButtonCreateTR" runat="server" CssClass="button"  Text="Create new treatment" PostBackUrl="~/CreateTR.aspx" OnClick="ButtonCreateTR_Click" Width="338px"  />
                    <br />
                    <asp:Label ID="LabelMessageCreateTR" runat="server" Style="color: #58b31e; font-family: Helvetica, sans-serif;font-size: 17px;padding-top: 3%;padding-left: 15%;font-style: italic;"></asp:Label>
                    <br />
                </div>
                <br />
                <br />&nbsp;
                <br />
            </div>
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   
</asp:Content>
