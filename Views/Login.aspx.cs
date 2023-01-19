using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ClinicHospitalMS.Views
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        UserInput ut = new UserInput();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
           
        }
    }
}