<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Family.aspx.cs" Inherits="fellrims3.Family" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Family Details</title>
    <style>
        body {
            height: 100vh; /* Use viewport height for full-screen */
            background-image: url('https://cdn.pixabay.com/photo/2022/08/17/15/46/family-7392843_640.jpg');
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
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            max-width: 100%; /* Remove max-width to allow full width */
            width: 100%; /* Allow the form to take full width */
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
        }

        label {
            font-weight: bold;
            margin-top: 10px; /* Add space above labels */
            display: block; /* Make labels block elements */
        }

        input[type="text"], button {
            width: 100%; /* Make inputs and buttons full width */
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
                padding: 15px;
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
            <h2>Enter Family Details</h2>
            
            <asp:Label ID="lblFamilyName" Text="Family Name:" runat="server" />
            <asp:TextBox ID="txtFamilyName" runat="server" Placeholder="Enter family name here" />
            <br />
            
            <asp:Label ID="lblAddress" Text="Address:" runat="server" />
            <asp:TextBox ID="txtAddress" runat="server" Placeholder="Enter address here" />
            <br />
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#66FF33" ForeColor="Black" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="ResetForm" BackColor="#FF5050" style="margin-left: 0;" />
            <br />

            <asp:Label ID="lblStatus" runat="server" Text="" />
        </div>
    </form>
</body>
</html>