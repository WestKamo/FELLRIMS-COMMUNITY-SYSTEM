<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="fellrims3.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            height: 100vh;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnwjkhb1_h9H8lCvuAGnbt2lztz2hnSi5tDFLKmiz1kPkY-wMKzHW-Q7TsC5ZVstXTSpw&usqp=CAU');
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
            max-width: 400px; /* Set a smaller max-width for the login form */
            width: 100%;
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
        }

        label {
            font-weight: bold;
        }

        input, button {
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            margin-top: 10px;
        }

        /* Media Queries for better responsiveness */
        @media (max-width: 500px) {
            #form1 {
                padding: 10px;
                width: 90%;
            }

            h2 {
                font-size: 22px;
            }

            button {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login</h2>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label><br /><br />

            <asp:Label ID="lblUsername" runat="server" Text="Username: " />
            <asp:TextBox ID="txtUsername" runat="server" Width="100%"></asp:TextBox><br /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Password: " />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100%"></asp:TextBox><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="#66FF33" ForeColor="Black" Width="100%" />
        </div>
    </form>
</body>
</html>
