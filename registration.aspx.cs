using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace fellrims3
{
    public partial class Register : Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Connection string directly in code or through web.config
            string connectionString = "Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=FELLRIMS;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Check if username already exists
                string checkUserQuery = "SELECT COUNT(1) FROM Users WHERE Username = @Username";
                using (SqlCommand checkUserCommand = new SqlCommand(checkUserQuery, connection))
                {
                    checkUserCommand.Parameters.AddWithValue("@Username", username);
                    int userExists = Convert.ToInt32(checkUserCommand.ExecuteScalar());

                    if (userExists > 0)
                    {
                        lblMessage.Text = "Username already exists. Please choose another.";
                    }
                    else
                    {
                        // Insert new user
                        string insertQuery = "INSERT INTO Users (Username, Password) VALUES (@Username, @Password)";
                        using (SqlCommand command = new SqlCommand(insertQuery, connection))
                        {
                            command.Parameters.AddWithValue("@Username", username);
                            command.Parameters.AddWithValue("@Password", password); // Ideally hash the password before storing

                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                lblMessage.Text = "Registration successful!";
                                Response.Redirect("Login.aspx");
                            }
                            else
                            {
                                lblMessage.Text = "Registration failed. Please try again.";
                            }
                        }
                    }
                }
            }
        }
    }
}
