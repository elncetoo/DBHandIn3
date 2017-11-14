<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Patients.aspx.cs" Inherits="DBHandIn3.Patients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Button ID="ButtonAllRes" runat="server" OnClick="ButtonAllRes_Click" Text="Show all reservations" />
&nbsp;<asp:DropDownList ID="DropDownListPatient" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListPatient_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownDate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownDate_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridViewReservations" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="LabelMessage" runat="server" Text="No Message"></asp:Label>
    <br />
    <br />
</asp:Content>