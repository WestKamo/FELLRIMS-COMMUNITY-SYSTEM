using System;
using System.Data.SqlClient;

namespace fellrims3
{
    public partial class Family : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Check if it's the first time the page is loaded
            {
                // If needed, initialize some controls or set default values here.
                lblStatus.Text = "Please enter family details."; // Initial message
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string familyName = txtFamilyName.Text;
            string address = txtAddress.Text;

            // Define the connection string directly in the code
            string connString = "Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO Families (FamilyName, Address) VALUES (@FamilyName, @Address)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@FamilyName", familyName);
                    cmd.Parameters.AddWithValue("@Address", address);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblStatus.Text = "Family details submitted successfully!";
                    }
                    else
                    {
                        lblStatus.Text = "Submission failed.";
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
            txtFamilyName.Text = "";
            txtAddress.Text = "";
        }
    }
}
