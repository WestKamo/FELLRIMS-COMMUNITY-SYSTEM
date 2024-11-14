<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmploymentHistory.aspx.cs" Inherits="fellrims3.EmploymentHistory" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employment History</title>
    <style>
        body {
            height: 100vh; /* Use viewport height for full-screen */
            background-image: url('https://www.betterup.com/hubfs/Man%20has%20overwork%20and%20sitting%20with%20laptop%20and%20table%20lamp.%20Mental%20work%20with%20paper.%20Empty%20office.jpg');
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
            padding: 30px; /* Increased padding for a larger form */
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

        input[type="text"], select, button {
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
            <h2>Enter Your Employment History</h2>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />

            <asp:Label ID="lblEmployer" runat="server" Text="Employer: " />
            <asp:TextBox ID="txtEmployer" runat="server" Placeholder="Enter employer name here" /><br /><br />

            <asp:Label ID="lblJobTitle" runat="server" Text="Job Title: " />
            <asp:DropDownList ID="DDLJOB" runat="server">
                <asp:ListItem Text="-- Select Job Title --" Value="" />
                <asp:ListItem>Manager</asp:ListItem>
                <asp:ListItem>Worker</asp:ListItem>
                <asp:ListItem>CEO</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Security Guard</asp:ListItem>
                <asp:ListItem>Company Owner</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Label ID="lblDuration" runat="server" Text="Duration: " />
            <asp:TextBox ID="txtDuration" runat="server" Placeholder="Enter duration of employment" /><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#66FF33" ForeColor="Black" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="ResetForm" BackColor="#FF5050" style="margin-left: 0;" />
        </div>
    </form>
</body>
</html>