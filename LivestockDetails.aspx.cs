using System;
using System.Data.SqlClient;

namespace fellrims3
{
    public partial class LivestockDetails : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string livestockType = DDLlivestock.SelectedValue;
            string quantity = txtQuantity.Text;

            // Define the connection string directly in the code
            string connString = "Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO LivestockDetails(LivestockType, Quantity) VALUES (@LivestockType, @Quantity)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@LivestockType", livestockType);
                    cmd.Parameters.AddWithValue("@Quantity", quantity);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblStatus.Text = "Livestock details submitted successfully!";
                        Response.Redirect("EducationalBackground.aspx"); // Redirect to next page
                    }
                    else
                    {
                        lblStatus.Text = "Submission failed.";
                        DDLlivestock.Text = "";
                        txtQuantity.Text = "";
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
            DDLlivestock.Text = "";
            txtQuantity.Text = "";
        }
    }
}
