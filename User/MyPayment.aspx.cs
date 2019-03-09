using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = (String)Session["Data786"];
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}