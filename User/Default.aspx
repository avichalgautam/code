<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Product</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="100%" 
                onitemcommand="DataList1_ItemCommand" 
                onselectedindexchanged="DataList1_SelectedIndexChanged" 
                DataSourceID="SqlDataSource1">
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
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price :
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%#Eval("iname") %>' onclick="LinkButton1_Click">View..</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Iname], [Price], [Image] FROM [item]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

