<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Dlogin.aspx.cs" Inherits="Dlogin" %>

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
            font-size: medium;
            color: #FF0000;
        }
        .style10
        {
            text-decoration: underline;
            color: #FF0000;
        }
    .style11
    {
        color: #0033CC;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <em><span class="style7"><span class="style9">Welcome Dr.&nbsp;</span></span><span 
        class="style8"><asp:Label ID="Label1" 
        runat="server" CssClass="style10" Text="Label"></asp:Label>
    </span>
    <span class="style7"><span class="style9">&nbsp;&nbsp;&nbsp;</span></span></em><span 
        class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <span class="style11">Patient Details:::</span><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
    CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                SortExpression="Email" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [user] WHERE [Email] = @Email" 
        InsertCommand="INSERT INTO [user] ([Name], [Email]) VALUES (@Name, @Email)" 
        SelectCommand="SELECT [Name], [Email] FROM [user] WHERE ([Da] = @Da)" 
        UpdateCommand="UPDATE [user] SET [Name] = @Name WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Da" SessionField="Data" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Email" DataSourceID="SqlDataSource2" Height="50px" 
    Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Medic" HeaderText="Medic" SortExpression="Medic" />
            <asp:BoundField DataField="Email" HeaderText="Email" 
                SortExpression="Email" ReadOnly="True" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" 
                SortExpression="Symptoms" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [user] WHERE [Email] = @Email" 
        FilterExpression="Email='{0}'" 
        InsertCommand="INSERT INTO [user] ([Medic], [Email], [Mobile], [Symptoms], [Gender], [Name]) VALUES (@Medic, @Email, @Mobile, @Symptoms, @Gender, @Name)" 
        SelectCommand="SELECT [Medic], [Email], [Mobile], [Symptoms], [Gender], [Name] FROM [user]" 
        
        UpdateCommand="UPDATE [user] SET [Medic] = @Medic, [Mobile] = @Mobile, [Symptoms] = @Symptoms, [Gender] = @Gender, [Name] = @Name WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <FilterParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Email" 
                PropertyName="SelectedValue" />
        </FilterParameters>
        <InsertParameters>
            <asp:Parameter Name="Medic" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="Int32" />
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Medic" Type="String" />
            <asp:Parameter Name="Mobile" Type="Int32" />
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="btn" 
        onclick="Button2_Click" />
    &nbsp;<asp:Button ID="Button3" runat="server" Text="Print Medi" 
    CssClass="btn"/>
    <br />
    <br />
    <br />
    &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

