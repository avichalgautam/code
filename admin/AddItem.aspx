<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="admin_AddminItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
    {
            width: 156px;
            text-align: left;
        }
    .style14
    {
        width: 156px;
    }
        .style18
    {
        width: 216px;
    }
        .style20
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            height: 29px;
        }
        .style21
        {
            height: 29px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 424px; width: 100%">
    <tr>
        <td colspan="2" class="tblhead" align="center">
            Add Item</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Item Name:</td>
        <td align="LEFT" >
            <asp:TextBox ID="txtiname" runat="server" placeholder=" Type item name!!!" 
                CssClass="txt" Width="129px" Font-Bold="False" Font-Italic="False" 
                ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtiname" ErrorMessage="Enter Item Name" 
                ForeColor="Red" ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Description:</td>
        <td style="text-align: left" >
            <asp:TextBox ID="txtdescrip" runat="server" placeholder=" Enter Description!!" 
                 CssClass="txt" ontextchanged="txtdescrip_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtdescrip" ErrorMessage="Enter Detail" ForeColor="Red" 
                ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Price:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtprice" runat="server" placeholder="Enter Price!!" 
              CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtprice" ErrorMessage="Enter Price" ForeColor="Red" 
                ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style20">
            Quantity:</td>
        <td style="text-align: left" class="style21">
            <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity" 
         CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="Enter Quantity" ForeColor="Red" 
                ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style20">
            Image:</td>
        <td style="text-align: left" class="style21">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="Please Browse Image" 
                ForeColor="Red" ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Image1 :</td>
        <td style="text-align: left">
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="FileUpload2" ErrorMessage="Please Browse Image" 
                ForeColor="Red" ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Image2 :</td>
        <td style="text-align: left">
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="FileUpload3" ErrorMessage=" Please Browse Image" 
                ForeColor="Red" ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Size : </td>
        <td style="text-align: left">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="Cname" DataValueField="Cname" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>ChildrenWear</asp:ListItem>
                <asp:ListItem>GentsWear</asp:ListItem>
                <asp:ListItem>LadiesWear</asp:ListItem>
                <asp:ListItem>MeansWear</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Enter Category Name" 
                ForeColor="Red" ValidationGroup="Item"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style18" align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD ITEM" Height="30px" Width="100px" ValidationGroup="Item" />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style12">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [item] WHERE [Iid] = @Iid" 
                InsertCommand="INSERT INTO [item] ([Iid], [Iname], [Price]) VALUES (@Iid, @Iname, @Price)" 
                SelectCommand="SELECT [Iid], [Iname], [Price] FROM [item]" 
                
                UpdateCommand="UPDATE [item] SET [Iname] = @Iname, [Price] = @Price WHERE [Iid] = @Iid">
                <DeleteParameters>
                    <asp:Parameter Name="Iid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Iid" Type="String" />
                    <asp:Parameter Name="Iname" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Iname" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="Iid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Cname] FROM [category]"></asp:SqlDataSource>
        </td>
        <td align="left">
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateDeleteButton="True" onrowdeleting="GridView1_RowDeleting" 
                onrowediting="GridView1_RowEditing1" 
                onrowupdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="419px" 
                AutoGenerateColumns="False" DataKeyNames="Iid" 
                DataSourceID="SqlDataSource1" onrowdeleted="GridView1_RowDeleted" 
                onrowupdated="GridView1_RowUpdated">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Iid" HeaderText="Iid" 
                        SortExpression="Iid" ReadOnly="True" />
                    <asp:BoundField DataField="Iname" HeaderText="Iname" SortExpression="Iname" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:TemplateField HeaderText = "Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width = "100px" Height ="100px" />
                    
                    </ItemTemplate>
                    
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

