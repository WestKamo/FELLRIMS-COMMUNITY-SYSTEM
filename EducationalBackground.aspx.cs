using System;
using System.Data.SqlClient;

namespace fellrims3
{
    public partial class EducationalBackground : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string educationLevel = txtEducationLevel.Text;
            string institution = txtInstitution.Text;

            // Define the connection string directly in the code
            SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True");

            try
            {
                conn.Open();
                string query = "INSERT INTO EducationBackground (EducationLevel, Institution) VALUES (@EducationLevel, @Institution)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@EducationLevel", educationLevel);
                cmd.Parameters.AddWithValue("@Institution", institution);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lblStatus.Text = "Educational background submitted successfully!";
                    Response.Redirect("ValidationForm.aspx"); // Redirect to the validation form page
                }
                else
                {
                    lblStatus.Text = "Submission failed.";
                    txtEducationLevel.Text = "";
                    txtInstitution.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error: " + ex.Message;
            }
            finally
            {
                // Ensure the connection is closed after the operation
                conn.Close();
            }
           
        }
        protected void ResetForm(object sender, EventArgs e)
        {
            txtEducationLevel.Text = "";
            txtInstitution.Text = "";
        }
    }
}
