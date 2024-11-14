<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="fellrims3.PersonalDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Details</title>
    <style>
        body {
            height: 100vh; /* Use viewport height for full-screen */
            background-image: url('https://as2.ftcdn.net/v2/jpg/01/96/95/65/1000_F_196956529_vPY2m45vEdnY8ars1LOi9NOiMv78qxyc.jpg');
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #form1 {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            max-width: 800px; /* Increased max-width to make form wider */
            width: 100%; /* Allow the form to take full width */
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px; /* Added margin for spacing below the title */
        }

        label {
            font-weight: bold;
            margin-top: 10px; /* Add space above labels */
            display: block; /* Make labels block elements */
        }

        input[type="text"], 
        input[type="email"],
        input[type="date"], 
        select, 
        button {
            width: 100%; /* Make inputs, dropdowns, and buttons full width */
            margin-bottom: 15px;
            padding: 12px; /* Increased padding for better usability */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        /* Placeholder text styling */
        input::placeholder {
            color: #888; /* Gray color for placeholder text */
            opacity: 1; /* Firefox lowers the opacity of placeholder text */
        }

        button {
            margin-top: 10px;
        }

        /* Media Queries for better responsiveness */
        @media (max-width: 500px) {
            #form1 {
                padding: 20px;
                width: 90%; /* Allow form to fill most of the width on smaller devices */
            }

            h2 {
                font-size: 22px; /* Reduce font size for smaller screens */
            }

            button {
                padding: 8px; /* Reduce padding on buttons */
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Enter Your Personal Details</h2>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />

            <asp:Label ID="lblName" runat="server" Text="Name: " />
            <asp:TextBox ID="txtName" runat="server" Placeholder="Enter your full name" /><br /><br />

            <asp:Label ID="lblDOB" runat="server" Text="Date of Birth: " />
            <asp:TextBox ID="txtDOB" runat="server" Placeholder="YYYY-MM-DD" TextMode="Date" /><br /><br />

            <asp:Label ID="lblGender" runat="server" Text="Gender: " />
            <asp:RadioButtonList ID="rblGender" runat="server">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList><br /><br />

            <asp:Label ID="lblIDNumber" runat="server" Text="ID Number: " />
            <asp:TextBox ID="txtIDNumber" runat="server" Placeholder="Enter your ID number" /><br /><br />

            <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number: " />
            <asp:TextBox ID="txtContactNumber" runat="server" Placeholder="Enter your contact number" /><br /><br />

            <asp:Label ID="lblEmail" runat="server" Text="Email: " />
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email" TextMode="Email" /><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#66FF33" ForeColor="Black" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="ResetForm" BackColor="#FF5050" />
        </div>
    </form>
</body>
</html>