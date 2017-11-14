<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="TreatmentsAdmin.aspx.cs" Inherits="DBHandIn3.TreatmentsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="header-wrap" style="background:azure;padding-top: 5%;margin-top: 1%;">
            <asp:Button ID="ButtonShowTR" runat="server"  Text="Show All Treatments" CssClass="button" Style="vertical-align: middle; text-align: center;" OnClick="ButtonShowTR_Click" />
            <asp:Button ID="ButtonCreateTR" runat="server" CssClass="button"  Text="Create new treatment" PostBackUrl="~/CreateTR.aspx" OnClick="ButtonCreateTR_Click" />
            <asp:Button ID="ButtonUpdateTR" runat="server" CssClass="button"  Text="Update treatments" PostBackUrl="~/UpdateTR.aspx" />
            <asp:Button ID="ButtonDeleteTR" runat="server" CssClass="button"  Text="Delete treatments" PostBackUrl="~/DeleteTR.aspx" />
            <br />
            <br />
        </div>
     <div style="display: flex;justify-content: center;background: white;padding: 5% 0 1% 0;">
            <asp:Button ID="ButtonShowResAdmin" runat="server" CssClass="button"  Text="Reservations" PostBackUrl="~/ReservationsAdmin.aspx" />
            </div>
        <div class="repeater" style="margin-left:4%">
            &nbsp;
            <asp:Repeater ID="RepeaterTreatment" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center">
                        <tr>
                            <td class="myheader">Treatment number</td>
                            <td class="myheader">Treatment name</td>
                            <td class="myheader">Treatment price</td>
                            <td class="myheader">Treatment date</td>
                            <td class="myheader">Treatment image</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("tr_number") %></td>
                        <td class="myitem"><%# Eval("tr_name") %></td>
                        <td class="myitem"><%# Eval("tr_price") %></td>
                        <td class="myitem"><%# Eval("tr_date", "{0:dd-MM-yyyy}") %></td>
                        <td class="myitem">
                            <img src="Pictures/<%# Eval("tr_img") %>" alt="" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <br />
            <br />
           <div>
            <asp:Label ID="LabelMessage" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 17px;padding-top: 3%; margin-left: -3%; font-style: italic;"></asp:Label>
            <br />
            </div>
            <br />
            <br />&nbsp;
            <br />
            <br />&nbsp;&nbsp;
            <br />
            <br />
        </div>
   
</asp:Content>