<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  
        .style6
        {
            color: Green;
            text-align: right;
            height: 24px;
        }
        .style7
        {
            height: 24px;
        }
  
        .style8
        {
            color: Green;
            text-align: right;
            height: 19px;
        }
        .style9
        {
            height: 19px;
        }
  
        .style10
        {
            color: Green;
            text-align: right;
            height: 25px;
        }
        .style11
        {
            height: 25px;
        }
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="2">
            Registration Form</td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Name :
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;Gender:</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" Width="150px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Doctor&nbsp;:</td>
        <td class="style9">
            <asp:TextBox ID="TextBox2" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Mobile :
        </td>
        <td>
            <asp:TextBox ID="txtmo" runat="server" CssClass="txt" Width="160px" 
                MaxLength="10" ></asp:TextBox>
                
        </td>
    </tr>
    <tr>
        <td class="style10">
            Email :
        </td>
        <td class="style11">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Password :
        </td>
        <td>
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" Width="160px" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Confirm - Pass :
        </td>
        <td class="style7">
            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="160px" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Register" 
                onclick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Print Slip" CssClass="btn" 
                onclick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Text="Log Out" CssClass="btn" 
                onclick="Button5_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="color: #006600">
            Already have an username and password
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Default2.aspx">Login Here</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>

