<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ReservatonsPatient.aspx.cs" Inherits="DBHandIn3.ReservatonsPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header-wrap">
</div>
    <div class="repeater">
        <asp:GridView ID="GridViewUpdateRes" runat="server" Width="808px" CssClass="mytable" OnSelectedIndexChanged="GridViewUpdateRes_SelectedIndexChanged" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
        </asp:GridView>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMessageCRR" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 15px;text-align: center;padding-top: 3%;margin-left: -1%;font-style: italic;" CssClass="labelmessage"></asp:Label>
            <br />
        <div class="loginform">

&nbsp;<br />
            <asp:Label ID="LabelResPat" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="To cerate a reservation, please fill out the form below." ForeColor="#6CBCFD"></asp:Label>
            <br />
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMessageResPat" runat="server"></asp:Label>
            <br />
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelResPatID" runat="server" Font-Names="Helvetica" Font-Size="Small" ForeColor="Black" Text="Patient ID:" ></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxResPatID" runat="server" ToolTip="Please, enter your patient ID number here." Width="261px" MaxLength="50"></asp:TextBox>
&nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelResPatTRID" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="Treatment ID:"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxResPatTRID" runat="server" ToolTip="Please, enter treatment ID number here." Width="261px"></asp:TextBox>
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelResDate" runat="server" Font-Names="Helvetica" Font-Size="Small" Text="Reservation date:"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxResDate" runat="server" ToolTip="Please, enter reservation date here." Width="261px"></asp:TextBox>
            &nbsp;<br />&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<asp:Button ID="ButtonCreateResPat" runat="server" CssClass="button" Text="Create reservation"  Width="261px" OnClick="ButtonCreateResPat_Click" />
            <br />
            &nbsp;<asp:Button ID="ButtonUpdateRes" runat="server" CssClass="button" Text="Update reservation"  Width="261px" OnClick="ButtonUpdateRes_Click"  />
             <br />
             &nbsp;<asp:Button ID="ButtonDeleteRes" runat="server" CssClass="button" Text="Delete reservation"  Width="261px" OnClick="ButtonDeleteRes_Click" />
             <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />&nbsp;
            <br />
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   </div>
</asp:Content>