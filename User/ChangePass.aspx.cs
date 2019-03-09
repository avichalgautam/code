using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_ChangePass : System.Web.UI.Page
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
        txtemail.Text = (String)Session["Data786"];
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string q = "Update [user] set password=@pass where email='"+txtemail.Text+"'";
        connection(q);
        cmd.Parameters.AddWithValue("@pass", txtpass.Text);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Password Changed";
        cmd.Dispose();
        con.Close();
    }
}