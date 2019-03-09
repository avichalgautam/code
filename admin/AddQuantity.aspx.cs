using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_AddQuantity : System.Web.UI.Page
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

        if (!Page.IsPostBack)
        {
            String query = @"select Iname,Qnt,Aqnt,Sqnt from item";
            connection(query);
            rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            GridView1.DataSource = rd;
            GridView1.DataBind();
            cmd.Dispose();
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
       string q1="select qnt from item where Iname='"+DropDownList2.SelectedItem.Value+"'";
        connection(q1);
        String rt;
        rd=cmd.ExecuteReader(CommandBehavior.CloseConnection);
        rt="0";
        while (rd.Read())
        {
            rt = rd["qnt"].ToString();
        }
        String i = Convert.ToString(int.Parse(txtquan.Text) + int.Parse(rt));
        String qq = "Update item set qnt=@qnt,aqnt=@aqnt where Iname='"+ DropDownList2.SelectedValue+"'";
        connection(qq);
        cmd.Parameters.AddWithValue("@qnt", i);
        cmd.Parameters.AddWithValue("@aqnt", i);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        Response.Redirect("AddQuantity.aspx");
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}