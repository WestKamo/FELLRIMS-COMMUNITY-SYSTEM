<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EducationalBackground.aspx.cs" Inherits="fellrims3.EducationalBackground" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Educational Background</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh; /* Full height */
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('https://miro.medium.com/v2/resize:fit:4800/format:webp/1*42ebJizcUtZBNIZPmmMZ5Q.jpeg') no-repeat center center fixed; /* Background image */
            background-size: cover; /* Cover the entire screen */
        }
        .form-container {
            position: relative; /* For positioning children */
            width: 100%;
            max-width: 800px; /* Increased max width */
            height: auto; /* Allow height to expand with content */
            padding: 40px; /* Increased padding for more space */
            background-color: rgba(255, 255, 255, 0.95); /* More opaque white background for form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Shadow */
        }
        form {
            padding: 20px; /* Adjusted padding for better layout */
            width: 100%; /* Fill available width */
        }
        .logo {
            text-align: center; /* Center the logo text */
            font-size: 32px; /* Font size for logo */
            font-weight: bold;
            color: #6a11cb; /* Color of the logo text */
            font-family: 'Arial', sans-serif; /* Font family for the logo */
            margin-bottom: 20px; /* Space below the logo */
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 15px; /* Space below the header */
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            color: #555;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px; /* Increased padding in text fields */
            margin: 5px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: white; /* Ensure text bars are white */
        }
        .submit-button, .reset-button {
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 12px 20px; /* Increased button padding */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .submit-button:hover {
            background-color: #4cae4c;
        }
        .reset-button {
            background-color: #d9534f;
        }
        .reset-button:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form id="form1" runat="server">
            <div class="logo">Fellrims</div> <!-- Logo positioned inside the form -->
            <h2>Enter Your Educational Background</h2>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br />

            <asp:Label ID="lblEducationLevel" runat="server" Text="Education Level: " />
            <asp:TextBox ID="txtEducationLevel" runat="server" /><br />

            <asp:Label ID="lblInstitution" runat="server" Text="Institution: " />
            <asp:TextBox ID="txtInstitution" runat="server" /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="submit-button" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="ResetForm" CssClass="reset-button" />
        </form>
    </div>
</body>
</html>