using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class User_Registration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void connection(String query)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ishan Arora\Desktop\medinet\App_Data\new.mdf;Integrated Security=True;User Instance=True");
        cmd = new SqlCommand(query, con);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
            Guid g = Guid.NewGuid();
            String q = "Insert into [user](Name,Gender,Da,Mobile,Email,Password) values (@name,@gender,@Da,@mobile,@email,@pass)";
            connection(q);
        
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@Da", TextBox2.Text);
            cmd.Parameters.AddWithValue("@mobile", txtmo.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@pass", txtpass.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            txtname.Text="";
            TextBox2.Text="";
            txtmo.Text="";
            txtemail.Text="";
            txtpass.Text="";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label1.Text = "Slip Printed";

    }
}