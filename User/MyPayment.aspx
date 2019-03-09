<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyPayment.aspx.cs" Inherits="User_MyPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Payment</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="878px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                DataKeyNames="Pid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:BoundField HeaderText="Pid"  DataField="Pid" ReadOnly="True" 
                    SortExpression="Pid" />
<asp:BoundField HeaderText="Amount"  DataField="Amount" SortExpression="Amount" />
<asp:BoundField HeaderText="Type"  DataField="Type" SortExpression="Type" />
            <asp:BoundField HeaderText="Bank"  DataField="Bank" SortExpression="Bank" />
            <asp:BoundField HeaderText="Branch"  DataField="Branch" SortExpression="Branch" />
            </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [Pid], [Amount], [Type], [Bank], [Branch] FROM [payment] WHERE ([Uname] = @Uname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Uname" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

