using System;
using System.Data.SqlClient;

namespace fellrims3
{
    public partial class PersonalDetails : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string dob = txtDOB.Text;
            string gender = rblGender.SelectedValue;
            string idNumber = txtIDNumber.Text;
            string contactNumber = txtContactNumber.Text;
            string email = txtEmail.Text;

            // Define the connection string directly in the code
            string connString = "Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO PersonalDetails (Name, DOB, Gender, IDNumber, ContactNumber, Email) VALUES (@Name, @DOB, @Gender, @IDNumber, @ContactNumber, @Email)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@DOB", dob);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@IDNumber", idNumber);
                    cmd.Parameters.AddWithValue("@ContactNumber", contactNumber);
                    cmd.Parameters.AddWithValue("@Email", email);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblStatus.Text = "Personal details submitted successfully!";
                        Response.Redirect("EmploymentHistory.aspx");
                    }
                    else
                    {
                        lblStatus.Text = "Submission failed.";
                        txtName.Text = "";
                        txtDOB.Text = "";
                        rblGender.ClearSelection();
                        txtIDNumber.Text = "";
                        txtContactNumber.Text = "";
                        txtEmail.Text = "";
                    }
                }
                catch (Exception ex)
                {
                    lblStatus.Text = "Error: " + ex.Message;
                }
            }
        }

        protected void ResetForm(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtDOB.Text = "";
            rblGender.ClearSelection();
            txtIDNumber.Text = "";
            txtContactNumber.Text = "";
            txtEmail.Text = "";
        }
    }
}
