using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;

public partial class User_MyAccount : System.Web.UI.Page
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
        txtemail.Focus();
        txtemail.Text = (String)Session["Data786"];
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string q = "Update [user] set name=@name,address=@add,city=@city,pin=@pin,mobile=@mob where email='"+txtemail.Text+"'";
        connection(q);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@add", txtaddd.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@pin", txtpincode.Text);
        cmd.Parameters.AddWithValue("@mob", txtmpbile.Text);
        int i=cmd.ExecuteNonQuery();
        lblmsg.Text = "Updated...";
        cmd.Dispose();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string q1 = "select name,address,city,pin,mobile from [user] where email='" + txtemail.Text + "'";
        connection(q1);
        rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rd.Read())
        {
            txtname.Text = rd["name"].ToString();
            txtaddd.Text = rd["address"].ToString();
            txtcity.Text = rd["city"].ToString();
            txtpincode.Text = rd["pin"].ToString();
            txtmpbile.Text = rd["mobile"].ToString();
        }
    }
}