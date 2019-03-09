using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rd;
    
    protected void connection(String query)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ishan Arora\Desktop\onlineshoes\App_Data\new.mdf;Integrated Security=True;User Instance=True");
        cmd = new SqlCommand(query,con);
        
        con.Open();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            String query = "select Cname from category";
            connection(query);
            rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            cmd.Dispose();   
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        Guid g = Guid.NewGuid();
        String q = "Insert into category(Cid,Cname) values (@id,@Cname)";
        connection(q);
        cmd.Parameters.AddWithValue("@id", g.ToString());
        cmd.Parameters.AddWithValue("@Cname",txtname.Text);
        cmd.ExecuteNonQuery();
        String query = "select Cname from category";
        connection(query);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        Response.Redirect("Addcategory.aspx");
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
            }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        
    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
      
    }
    private void bindgrid()
    {
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
