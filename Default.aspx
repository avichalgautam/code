<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        text-decoration: underline;
    }
    .style8
    {
        font-size: medium;
    }
    .style9
    {
        text-decoration: underline;
        color: #FF3300;
    }
    .style10
    {
        font-size: medium;
        color: #FF3300;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <em><span class="style7"><span class="style10">Welcome
    </span></span><span class="style8">
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="style9"></asp:Label>
    <span class="style9">--</span></span></em><br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
    GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Da" HeaderText="Da" 
                SortExpression="Da" />
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" 
                SortExpression="Symptoms" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" 
                SortExpression="Email" />
            <asp:BoundField DataField="Medic" HeaderText="Medic" SortExpression="Medic" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [user] WHERE [Email] = @Email" 
        InsertCommand="INSERT INTO [user] ([Da], [Symptoms], [Mobile], [Email], [Medic]) VALUES (@Da, @Symptoms, @Mobile, @Email, @Medic)" 
        SelectCommand="SELECT [Da], [Symptoms], [Mobile], [Email], [Medic] FROM [user] WHERE ([Email] = @Email)" 
        
        
        UpdateCommand="UPDATE [user] SET [Da] = @Da, [Symptoms] = @Symptoms, [Mobile] = @Mobile, [Medic] = @Medic WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Da" Type="String" />
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Mobile" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Medic" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="data" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Da" Type="String" />
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Mobile" Type="Int32" />
            <asp:Parameter Name="Medic" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="btn" 
        onclick="Button2_Click"/>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" 
        Text="Fix An Appointment,Get 20% off on first transcation!!!!"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Text="Make A Transaction" 
        CssClass = "btn" PostBackUrl="~/User/Checkout.aspx" Width="170px" />
    <br />
    <br />
</asp:Content>

