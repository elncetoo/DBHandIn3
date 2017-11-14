<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="LogOut.aspx.cs" Inherits="DBHandIn3.LogOut" Theme="Treatments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="header-wrap">
        </div>
        <div style="margin-left: 39%" font-names="Helvetica">
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:Button ID="ButtonLogOut" runat="server" CssClass="button" Text="Log Out" OnClick="ButtonLogOut_Click" Width="338px" />
            <br />
            <br />
            <asp:Label ID="LabelMessageLogOut" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 17px;text-align: center;padding-top: 3%;font-style: italic;"></asp:Label>
            <br />
            <br />

            <br />&nbsp;
            <br />
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   
</asp:Content>
