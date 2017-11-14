<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Treatments.aspx.cs" Inherits="DBHandIn3.Treatments" Theme="Treatments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="header-wrap">
            <div style="margin-left: -3%;">
            <asp:Button ID="ButtonShow" runat="server" OnClick="ButtonShow_Click" Text="Show All Treatments" CssClass="button" Style="vertical-align: middle; text-align: center;" />
            <asp:Button ID="ButtonSignUp" runat="server" CssClass="button" OnClick="ButtonSignUp_Click" Text="Sign Up as a New Patient" PostBackUrl="~/SignUpNewPatient.aspx" />
            </div>
        </div>
        <div class="repeater" >
            &nbsp;
            <asp:Repeater ID="RepeaterTreatment" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center; width: 63%;">
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
            <asp:Label ID="LabelMessage" runat="server" Style="color: #58b31e;font-family: Helvetica, sans-serif;font-size: 17px;padding-top: 3%;margin-left:-9%;font-style: italic;"></asp:Label>
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