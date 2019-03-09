<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
            width: 318px;
        }
        </style>
    <script type="text/javascript">
    
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>View Product Detail</h2>
    <table class="style2">
        <tr>
            <td class="style6">
                Doctors::<br />
            </td>
            <td valign="top" rowspan="2" 
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0" 
                bgcolor="#D8F5D8" height="70">
                &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style6">
                <table class="style2">
                    <tr>
                        <td>
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="Uname" DataSourceID="SqlDataSource2" CellPadding="4" 
                                ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Uname" HeaderText="Uname" ReadOnly="True" 
                                        SortExpression="Uname" />
                                    <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [admin] WHERE [Uname] = @Uname" 
                                InsertCommand="INSERT INTO [admin] ([Uname], [pass]) VALUES (@Uname, @pass)" 
                                SelectCommand="SELECT * FROM [admin]" 
                                UpdateCommand="UPDATE [admin] SET [pass] = @pass WHERE [Uname] = @Uname">
                                <DeleteParameters>
                                    <asp:Parameter Name="Uname" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Uname" Type="String" />
                                    <asp:Parameter Name="pass" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="pass" Type="String" />
                                    <asp:Parameter Name="Uname" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT [Name], [Gender], [Da], [Mobile], [Symptoms], [Email], [Password], [Medic] FROM [user]" 
                                DeleteCommand="DELETE FROM [user] WHERE [Email] = @Email" 
                                InsertCommand="INSERT INTO [user] ([Name], [Gender], [Da], [Mobile], [Symptoms], [Email], [Password], [Medic]) VALUES (@Name, @Gender, @Da, @Mobile, @Symptoms, @Email, @Password, @Medic)" 
                                UpdateCommand="UPDATE [user] SET [Name] = @Name, [Gender] = @Gender, [Da] = @Da, [Mobile] = @Mobile, [Symptoms] = @Symptoms, [Password] = @Password, [Medic] = @Medic WHERE [Email] = @Email">
                                <DeleteParameters>
                                    <asp:Parameter Name="Email" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Da" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="Int64" />
                                    <asp:Parameter Name="Symptoms" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Medic" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Da" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="Int64" />
                                    <asp:Parameter Name="Symptoms" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Medic" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                Patients::<br />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Email" DataSourceID="SqlDataSource1" >
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Da" HeaderText="Da" SortExpression="Da" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                            SortExpression="Mobile" />
                        <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" 
                            SortExpression="Symptoms" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                            SortExpression="Email" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Medic" HeaderText="Medic" SortExpression="Medic" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="btn" 
                    onclick="Button2_Click"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

