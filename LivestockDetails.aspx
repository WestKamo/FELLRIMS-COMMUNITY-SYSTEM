<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LivestockDetails.aspx.cs" Inherits="fellrims3.LivestockDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Livestock Details</title>
    <style>
        body {
            height: 100vh; /* Use viewport height for full-screen */
            background-image: url('https://foodtank.com/wp-content/uploads/2020/03/Food-Tank-28-Livestock-Farmers.jpeg');
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
            <h2>Enter Your Livestock Details</h2>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />

            <asp:Label ID="lblLivestockType" runat="server" Text="Livestock Type: " />
            <asp:DropDownList ID="DDLlivestock" runat="server">
                <asp:ListItem Text="-- Select Livestock Type --" Value="" />
                <asp:ListItem>Sheep</asp:ListItem>
                <asp:ListItem>Cows</asp:ListItem>
                <asp:ListItem>Goats</asp:ListItem>
                <asp:ListItem>Pigs</asp:ListItem>
                <asp:ListItem>Chickens</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Label ID="lblQuantity" runat="server" Text="Quantity: " />
            <asp:TextBox ID="txtQuantity" runat="server" Placeholder="Enter quantity of livestock" /><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#66FF33" ForeColor="Black" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="ResetForm" BackColor="#FF5050" style="margin-left: 0;" />
        </div>
    </form>
</body>
</html>