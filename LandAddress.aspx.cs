using System;
using System.Data.SqlClient;

namespace fellrims3
{
    public partial class LandAddress : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get the selected values from the DropDownLists
            string location = DDLlocation.SelectedValue;
            string ownershipStatus = DDLowner.SelectedValue;

            // Define the connection string directly in the code
            string connString = "Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO Land (Location, OwnershipStatus) VALUES (@Location, @OwnershipStatus)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Location", location);
                    cmd.Parameters.AddWithValue("@OwnershipStatus", ownershipStatus);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblStatus.Text = "Land address details submitted successfully!";
                        Response.Redirect("LivestockDetails.aspx"); // Redirect to the next page
                    }
                    else
                    {
                        lblStatus.Text = "Submission failed.";
                        DDLlocation.Text = "";
                        DDLowner.Text = "";
                    }
                }
                catch (Exception ex)
                {
                    lblStatus.Text = "Error: " + ex.Message;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }
        protected void ResetForm(object sender, EventArgs e)
        {
            DDLlocation.Text = "";
            DDLowner.Text = "";
        }
    }
}
