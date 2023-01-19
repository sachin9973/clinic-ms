using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ClinicHospitalMS.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt = new DataTable();
        SqlCommandBuilder cb;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            query = "Rec_Select";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            cb = new SqlCommandBuilder(adp);
            if(!IsPostBack)
            {
                Bind();
            }
        }
        public void Bind()
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btn_Save_as_Click(object sender, EventArgs e)
        {
            try
            {
                query = "_Insert";
                cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Rec_Name", Rec_Name.Text.Trim());
                cmd.Parameters.AddWithValue("@Rec_Email", Rec_Email.Text.Trim());
                cmd.Parameters.AddWithValue("@Rec_Password", Rec_Password.Text.Trim());
                cmd.Parameters.AddWithValue("@Rec_Phone", Rec_Phone.Text.Trim());
                cmd.Parameters.AddWithValue("@Rec_Address", Rec_Address.Text.Trim());
                con.Open();
                cmd.ExecuteNonQuery();
                ErrMsg.InnerText = "Receptionist Added";
                //ErrMsg.Attributes.CssStyle.Add("class","text-dark"); 
                Rec_Name.Text = "";
                Rec_Email.Text = "";
                Rec_Password.Text = "";
                Rec_Phone.Text = "";
                Rec_Address.Text = "";
                //Response.Headers ("refresh", "0");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataRow[] dr = dt.Select("Rec_Id=" + Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text));
            dr[0].Delete();
            adp.Update(dt);
            Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataRow[] dr = dt.Select("Rec_Id=" + Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text));
            dr[0][1] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            dr[0][2] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            dr[0][3] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            dr[0][4] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            dr[0][5] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            adp.Update(dt);
            GridView1.EditIndex = -1;
            Bind();


        }
    }
}