using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.IO;

public partial class View : System.Web.UI.Page
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
        TextBox1.Text = (String)Session["Data3"];
        TextBox4.Text=(String)Session["Data786"];
        if (!Page.IsPostBack)
        {
            string q1 = "select Cname,Detail,price,image,Aqnt,size from item where Iname='" + TextBox1.Text + "'";
            connection(q1);
            rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (rd.Read())
            {
                TextBox2.Text = rd["Cname"].ToString();
                lblname.Text = TextBox1.Text;
                lblprice.Text = rd["price"].ToString();
                Image3.ImageUrl = rd["image"].ToString();
                lblqnt.Text = rd["Aqnt"].ToString();
                lblqnt0.Text = rd["size"].ToString();
                lbldetil.Text = rd["Detail"].ToString();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        String q = "Select Aqnt,Sqnt from item where Iname='"+lblname.Text+"'";
        connection(q);
        String qq,qq1 = "";
        rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rd.Read())
        {
            qq = rd["Aqnt"].ToString();
            qq1 = rd["Sqnt"].ToString();
        }
        if (int.Parse(TextBox3.Text) > int.Parse(lblqnt.Text))
        {
            Response.Write("<script language='javascript'>alert('Out Of Order');</script>");
        }
        else
        {
            int j = (int.Parse(TextBox3.Text) * int.Parse(lblprice.Text));
            lbltot.Text = j.ToString();
            String q1 = "Update item set Aqnt=@aqnt,Sqnt=@sqnt where Iname='" + TextBox1.Text + "'";
            connection(q1);
            String ii=(int.Parse(lblqnt.Text)-int.Parse(TextBox3.Text)).ToString();
            cmd.Parameters.AddWithValue("@aqnt",ii );
            cmd.Parameters.AddWithValue("@sqnt", (int.Parse(qq1)+int.Parse(TextBox3.Text)).ToString());
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            Session["Data9"] = lbltot.Text;
            Session["Data10"] = TextBox1.Text;
            Session["Data11"] = TextBox3.Text;
            Response.Redirect("Checkout.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["Data3"] = e.CommandArgument.ToString();
        Response.Redirect("View.aspx");
    }
}