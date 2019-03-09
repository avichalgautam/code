using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_AddminItem : System.Web.UI.Page
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
            int i=0;
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                Image x = (Image)gvrow.FindControl("Image1");
                string a = GridView1.Rows[i].Cells[2].Text;
                String query = "select Image from item where IID like '%" + a + "%'";
                connection(query);
                rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    x.ImageUrl = rd["Image"].ToString();
                }
                con.Close();
                i++;
            }

        
        }

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        
        Guid g = Guid.NewGuid();
        String q = "Insert into item(Iid,Iname,Detail,Price,Qnt,Aqnt,Sqnt,Image,Image1,Image2,Size,Cname) values (@id,@name,@detail,@prc,@qnt,@aqnt,@sqnt,@img,@img1,@img2,@size,@Cname)";
        connection(q);
        FileUpload1.SaveAs(Server.MapPath("~/img/")+ Path.GetFileName(FileUpload1.FileName));
        String link="~/img/"+ Path.GetFileName(FileUpload1.FileName);
        FileUpload2.SaveAs(Server.MapPath("~/img/")+ Path.GetFileName(FileUpload2.FileName));
        String link1="~/img/"+ Path.GetFileName(FileUpload2.FileName);
        FileUpload3.SaveAs(Server.MapPath("~/img/")+ Path.GetFileName(FileUpload3.FileName));
        String link2="~/img/"+ Path.GetFileName(FileUpload3.FileName);
        cmd.Parameters.AddWithValue("@id", g.ToString());
        cmd.Parameters.AddWithValue("@name", txtiname.Text);
        cmd.Parameters.AddWithValue("@detail", txtdescrip.Text);
        cmd.Parameters.AddWithValue("@prc", txtprice.Text);
        cmd.Parameters.AddWithValue("@qnt", txtquan.Text);
        cmd.Parameters.AddWithValue("@aqnt", txtquan.Text);
        cmd.Parameters.AddWithValue("@sqnt", '0');
        cmd.Parameters.AddWithValue("@img", link );
        cmd.Parameters.AddWithValue("@img1", link1);
        cmd.Parameters.AddWithValue("@img2", link2);
        cmd.Parameters.AddWithValue("@size", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@Cname", DropDownList1.SelectedItem.Value);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        Response.Redirect("AddItem.aspx");

    }
   
    private void bindgrid()
    {
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
       
    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
      
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtdescrip_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Redirect("AddItem.aspx");
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        Response.Redirect("AddItem.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}