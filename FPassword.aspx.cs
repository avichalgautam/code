using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FPassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rd;

    protected void connection(String query)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ishan Arora\Desktop\onlineshoes\App_Data\new.mdf;Integrated Security=True;User Instance=True");
        cmd = new SqlCommand(query, con);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        Label1.Visible = false;
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string q1 = "select password,mobile from [user] where email='" + txtemail.Text + "'";
        connection(q1);
        String rt = "";
        String rt1 = "";
        rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rd.Read())
        {
            rt = rd["password"].ToString();
            rt1 = rd["mobile"].ToString();
        }
        if (txtmobile.Text == rt1)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblerror.Text = "Invalid Info...";
            lblerror.Visible = true;
        }
    }
    protected void txtmobile_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string q1 = "select password,mobile from [user] where email='" + txtemail.Text + "'";
        connection(q1);
        String rt = "";
        String rt1 = "";
        rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rd.Read())
        {
            rt = rd["password"].ToString();
            rt1 = rd["mobile"].ToString();
        }
        if (txtmobile.Text == rt1)
        {
            Label1.Text ="Your Password: "+ rt;
            Label1.Visible = true;
        }
    }
}