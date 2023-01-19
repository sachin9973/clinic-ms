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
    public partial class Doctors : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt = new DataTable();
        SqlCommandBuilder cb;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            query = "Doc_Select";
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

        protected void btn_Save_as_Click(object sender, EventArgs e)
        {
             try
             {
                 query = "Doc_Insert";
                 SqlCommand cmd = new SqlCommand(query, con);
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@Doc_Name", Doc_Name.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Phone", Doc_Phone.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Exp",Doc_Exp.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Spec", Doc_Spec.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Email", Doc_Email.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Password", Doc_Password.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Gender", Doc_Gender.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Address", Doc_Address.Text.Trim());
                 cmd.Parameters.AddWithValue("@Doc_Dob", Doc_Dob.Text.Trim());
                 con.Open();
                 cmd.ExecuteNonQuery();
                 ErrMsg.InnerText = "Doctor Added";
                 Doc_Name.Text = "";
                 Doc_Phone.Text= "";
                 Doc_Exp.Text = "";
                 Doc_Spec.Text = "";
                 Doc_Email.Text= "";
                 Doc_Password.Text= "";
                 Doc_Gender.Text = "";
                 Doc_Address.Text = "";
                 Doc_Dob.Text = "";
                 Response.AddHeader("refesh", "0");

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
            DataRow[] dr = dt.Select("Doc_Id=" + Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text));
            dr[0][1] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            dr[0][2] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            dr[0][3] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            dr[0][4] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            dr[0][5] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            dr[0][6] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            dr[0][7] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            dr[0][8] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            dr[0][9] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataRow[] dr = dt.Select("Doc_Id=" + Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text));
            dr[0].Delete();
            adp.Update(dt);
            Bind();
        }
    }
}