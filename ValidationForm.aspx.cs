using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.Cmp;


namespace fellrims3
{
    public partial class ValidationForm : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (chkConfirm.Checked)
            {
                lblSummary.Text = "Validation successful! All details confirmed.";
                // You can add further validation logic or database actions here if needed
                ClientScript.RegisterStartupScript(this.GetType(), "closeWindow", "window.close();", true);
            }
            else
            {
                lblSummary.Text = "Please confirm that the details are correct.";
            }
        }
    }
}

