<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="UpdateTR.aspx.cs" Inherits="DBHandIn3.UpdateTR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="header-wrap">
        <asp:Button ID="ButtonGoBackToTRAdmin" runat="server" CssClass="button"  Text="Go back to admin page" PostBackUrl="~/TreatmentsAdmin.aspx" BackColor="#666666" />
        </div>
        <div class="repeater" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridViewUpdateTR" runat="server" Width="808px" OnSelectedIndexChanged="GridViewUpdateTR_SelectedIndexChanged" CssClass="mytable">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <br />

            <div class="repeater-form">
            <asp:TextBox ID="TextBoxUpdateTRName" runat="server" style="text-align: center" Width="373px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelUpdateTRName" runat="server" Text="Update name" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBoxUpdateTRPrice" runat="server" Width="373px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelUpdateTRPrice" runat="server" Text="Update price" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBoxUpdateTRDate" runat="server" Width="373px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelUpdateTRDate" runat="server" Text="Update date" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>
            <br />
            <br />
            &nbsp;
            <asp:TextBox ID="TextBoxUpdateTRImage" runat="server" Width="373px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelUpdateTRImage" runat="server" Text="Update image" Font-Names="Helvetica" Font-Size="Small" ForeColor="#6CBCFD"></asp:Label>

            <br />
                <div style="margin-left: -8%;">
                    <asp:Button ID="ButtonUpdateTR" runat="server" CssClass="button"  Text="Update treatment" Width="338px" OnClick="ButtonUpdateTR_Click"  />
                      <br />
                    <div style="margin-left: -17%;">
                    <asp:Label ID="LabelMessageUpdateTR" runat="server" Style="color: #58b31e; font-family: Helvetica, sans-serif;font-size: 17px;padding-top: 3%; padding-left: 15%;font-style: italic;"></asp:Label>
                    </div>
                 </div>
            <br />
            <br />
            <br />
            </div>
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   
</asp:Content>