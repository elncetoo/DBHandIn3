<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="DeleteRes.aspx.cs" Inherits="DBHandIn3.DeleteRes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header-wrap">
</div>
    <div class="repeater">
        <div class="loginform">
            <asp:GridView ID="GridViewUpdateRes" runat="server" Width="808px" CssClass="mytable" >
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
            </asp:GridView> 
            <br />
             <br />
             <br />

            <asp:DropDownList ID="DropDownListRes" runat="server" Height="51px" style="margin-right: 17px; margin-top: 0px" Width="261px" OnSelectedIndexChanged="DropDownListRes_SelectedIndexChanged" >
            </asp:DropDownList>

            <br />&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp; <asp:Button ID="ButtonDeleteRes" runat="server" CssClass="button" Text="Delete reservation"  Width="261px" OnClick="ButtonDeleteRes_Click" />
             &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMessageCRR" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 15px;text-align: center;padding-top: 3%;margin-left: -12%;font-style: italic;" CssClass="labelmessage"></asp:Label>
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