using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

public partial class User_Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = (String)Session["Data"];
        Session["Data786"] = TextBox1.Text;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["Data3"]=e.CommandArgument.ToString();
        Response.Redirect("View.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}