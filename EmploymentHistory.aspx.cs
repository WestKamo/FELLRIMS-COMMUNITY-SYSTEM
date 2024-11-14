using System;
using System.Data.SqlClient;
using System.Configuration;

namespace fellrims3
{
    public partial class EmploymentHistory : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string employer = txtEmployer.Text;
            string jobTitle = DDLJOB.SelectedValue;
            string duration = txtDuration.Text;

            SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True");

          
                conn.Open();
                string query = "INSERT INTO EmploymentHistory (Employer, JobTitle, Duration) VALUES (@Employer, @JobTitle, @Duration)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Employer", employer);
                cmd.Parameters.AddWithValue("@JobTitle", jobTitle);
                cmd.Parameters.AddWithValue("@Duration", duration);
                cmd.ExecuteNonQuery();
                conn.Close();
            

            lblStatus.Text = "Employment history submitted successfully!";
            Response.Redirect("LandAddress.aspx");
        }

        protected void ResetForm(object sender, EventArgs e)
        {
            txtEmployer.Text = "";
            DDLJOB.Text = "";
            txtDuration.Text = "";
        }
    }
}
