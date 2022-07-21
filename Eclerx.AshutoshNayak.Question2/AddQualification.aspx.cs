using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eclerx.AshutoshNayak.Question2
{
    public partial class AddQualification : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_AddQualification", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@QualificationName", TxtQualificationName.Text);
                    cmd.Parameters.AddWithValue("@Institute", TxtInstitute.Text);
                    cmd.Parameters.AddWithValue("@YearOfPassing", TxtYearOfPass.Text);
                    cmd.Parameters.AddWithValue("@University", TxtUniversity.Text);
                    if(con.State==ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.ExecuteNonQuery();
               }
            }
        }
    }
}