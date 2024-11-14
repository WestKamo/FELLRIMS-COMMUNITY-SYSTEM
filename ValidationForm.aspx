<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="fellrims3.ValidationForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Form</title>
    <style>
        body {
            height: 100vh; /* Use viewport height for full-screen */
            background-image: url('https://www.kamilgrzybek.com/images/blog/posts/domain-model-validation/feature_image.png');
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
            max-width: 600px; /* Set a max width for the form */
            width: 100%; /* Allow the form to take full width */
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px; /* Added margin for spacing below the title */
        }

        .status-message {
            margin-top: 20px;
            font-weight: bold;
            text-align: center; /* Center-align the status message */
        }

        .error {
            color: red;
        }

        .success {
            color: green;
        }

        label {
            display: block; /* Make labels block elements */
            margin-bottom: 10px; /* Space between label and input */
            font-weight: bold;
        }

        input[type="checkbox"] {
            margin-bottom: 15px; /* Spacing below checkbox */
        }

        button {
            width: 100%; /* Full width for buttons */
            padding: 12px; /* Increased padding for better usability */
            background-color: #4CAF50; /* Button color */
            color: white; /* Text color */
            border: none; /* Remove border */
            border-radius: 4px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s; /* Transition for button color */
        }

        button:hover {
            background-color: #45a049; /* Darker shade on hover */
        }

        /* Media Queries for better responsiveness */
        @media (max-width: 500px) {
            #form1 {
                padding: 20px;
                width: 90%; /* For smaller devices, reduce max-width */
            }

            h2 {
                font-size: 22px; /* Reduce font size for smaller screens */
            }

            button {
                padding: 10px; /* Reduce padding on buttons */
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Validate and Confirm Your Details</h2>
            <asp:Label ID="lblSummary" runat="server" Text=""></asp:Label><br /><br />

            <asp:CheckBox ID="chkConfirm" runat="server" Text="I confirm that the details are correct" /><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />
            
            <!-- Status label to display submission status messages -->
            <asp:Label ID="lblStatus" runat="server" CssClass="status-message" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>