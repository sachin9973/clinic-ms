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
    public partial class Laboratorian : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt = new DataTable();
        SqlCommandBuilder cb;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            query = "Labo_Select";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            cb = new SqlCommandBuilder(adp);
            if (!IsPostBack)
            {
                Bind();
            }
        }
        public void Bind()
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            try
            {
                query = "Labo_Insert";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Labo_Name", Lab_Name.Text.Trim());
                cmd.Parameters.AddWithValue("@Labo_Email", Lab_Email.Text.Trim());
                cmd.Parameters.AddWithValue("@Labo_Password", Lab_Password.Text.Trim());
                cmd.Parameters.AddWithValue("@Labo_Phone", Lab_Phone.Text.Trim());
                cmd.Parameters.AddWithValue("@Labo_Address", Lab_Address.Text.Trim());
                cmd.Parameters.AddWithValue("@Labo_Gender", Lab_Gender.Text.Trim());
                con.Open();
                cmd.ExecuteNonQuery();
                ErrMsg.InnerText = "Laboratorian Added";
                Lab_Name.Text = "";
                Lab_Email.Text = "";
                Lab_Password.Text = "";
                Lab_Phone.Text = "";
                Lab_Address.Text = "";
                Lab_Gender.Text = "";
                Response.AddHeader("refresh", "0");

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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataRow[] dr = dt.Select("Lab_Id=" + Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text));
            dr[0][1] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            dr[0][2] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            dr[0][3] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            dr[0][4] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            dr[0][5] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            dr[0][6] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            adp.Update(dt);
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataRow[] dr = dt.Select("Lab_Id=" + Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text));
            dr[0].Delete();
            adp.Update(dt);
            Bind();
        }
    }
}