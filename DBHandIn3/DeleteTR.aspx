<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="DeleteTR.aspx.cs" Inherits="DBHandIn3.DeleteTR" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header-wrap">
        <asp:Button ID="ButtonGoBackToTRAdmin" runat="server" CssClass="button"  Text="Go back to treatments admin page" PostBackUrl="~/TreatmentsAdmin.aspx" BackColor="#666666" />
        </div>    
        <div style="text-align: center"> 
            <asp:GridView ID="GridViewDeleteTR" runat="server" CssClass="mytable">
            </asp:GridView>
            <br />
            <asp:DropDownList ID="DropDownListDeleteTR" runat="server" OnSelectedIndexChanged="DropDownListDeleteTR_SelectedIndexChanged" Height="25px" Width="338px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelMessageDeleteTR" runat="server" Text="No message" Style="color: #58b31e; font-family: Helvetica, sans-serif;font-size: 17px;padding-top: 3%; padding-left: 1%;font-style: italic;"></asp:Label>
            <br />
            <br />
            <asp:Button ID="ButtonDeleteTR" runat="server" Text="Delete" OnClick="ButtonDeleteTR_Click" CssClass="button" Width="338px" />
        </div>
</asp:Content>