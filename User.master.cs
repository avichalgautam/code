using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class User : System.Web.UI.MasterPage
{
     SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rd;

    protected void connection(String query)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ishan Arora\Desktop\medinet\App_Data\new.mdf;Integrated Security=True;User Instance=True");
        cmd = new SqlCommand(query, con);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
             String q1 = "Select count(*) from [user]";
            connection(q1);
            SqlDataReader dr = cmd.ExecuteReader();
            String a = "";
            while (dr.Read())
            {
                 a = dr[0].ToString();
            }
           //Label2.Text = a;
            cmd.Dispose();
            con.Close();
        txtuname.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0 || RadioButtonList1.SelectedIndex==2)
        {
              string q1 = "select pass from [admin] where Uname='" + txtuname.Text + "'";
            connection(q1);
            String rt = "";

            rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (rd.Read())
            {
                rt = rd["pass"].ToString();
            }

            if (txtupass.Text == rt)
            {
                if (RadioButtonList1.SelectedIndex == 0)
                {

                    Session["Data"] = txtuname.Text;
                    Response.Redirect("Dlogin.aspx");
                    cmd.Dispose();
                    con.Close();

                }
                else if (RadioButtonList1.SelectedIndex == 2)
                {
                    Response.Redirect("Registration.aspx");
                    cmd.Dispose();
                    con.Close();
                }
            }
            else
            {
                lblerror.Text = "Invalid Last";
                lblerror.Visible = true;
            }
            }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            string q1 = "select Password from [user] where Email='" + txtuname.Text + "'";
            connection(q1);
            String rt = "";

            rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (rd.Read())
            {
                rt = rd["password"].ToString();
            }
            if (txtupass.Text == rt)
            {
                Session["data"] = txtuname.Text;
                Response.Redirect("Default.aspx");
                cmd.Dispose();
            }
            else
            {
                lblerror.Text = "Invalid Patient";
                lblerror.Visible = true;
            }
 
            con.Close();
        }
        else
        {
            lblerror.Text = "Invalid Last";
            lblerror.Visible = true;
        }
 
        
    }
}
