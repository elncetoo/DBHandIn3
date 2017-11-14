<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ReservationsAdmin.aspx.cs" Inherits="DBHandIn3.ReservationsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-wrap" style="margin-left: -2%;">
     <div class="header-wrap">
            <div style="margin-left: -3%;">
                <br /><br />
            <asp:Button ID="ButtonGoBackToTRAdmin" runat="server" CssClass="button"  Text="Go back to admin page" PostBackUrl="~/TreatmentsAdmin.aspx" BackColor="#666666" />
            </div>
        </div>
</div>
    <div style="margin-left: 1%;">
       <asp:Label ID="LabelMessageResAdmin" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 17px;text-align: center;padding-top: 3%;padding-left: 47%;font-style: italic;"></asp:Label>
        <div class="repeater" >
            <br />
        &nbsp;<asp:DropDownList ID="DropDownListPatient" runat="server" AutoPostBack="True" Height="60px" Width="338px" OnSelectedIndexChanged="DropDownListPatient_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownDate" runat="server" AutoPostBack="True" Height="60px" Width="338px" OnSelectedIndexChanged="DropDownDate_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridViewReservations" runat="server" Width="889px" CssClass="mytable">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="ButtonAllRes" runat="server" Text="Show All Reservations" CssClass="button" Style="vertical-align: middle; text-align: center;" />
            <br />
            <br />
           <div style="margin-left: 40px">
            <asp:Label ID="LabelMessage" runat="server" Style="color: #58b31e; font-family: Helvetica, sans-serif; font-size: 17px; padding-top: 3%;margin-left:-9%;font-style: italic;"></asp:Label>
            <br />
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
   
</asp:Content>