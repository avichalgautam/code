<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="PRODUCT.aspx.cs" Inherits="PRODUCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                PRODUCT</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="100%" 
        onitemcommand="DataList1_ItemCommand" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged">
    <ItemStyle CssClass="igrid" />
    <ItemTemplate>
        <table class="tbl" >
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image2" runat="server"  CssClass="img" ImageUrl='<%#Eval("image") %>' />
                </td>
            </tr>
            <tr>
                <td>
                                Name :
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("iname") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                                Price :
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%#Eval("iid") %>' PostBackUrl="~/View.aspx">View..</asp:LinkButton>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Iname], [Price], [Image] FROM [item]">
                </asp:SqlDataSource>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
&nbsp;</td>
        </tr>
    </table>
</asp:Content>

