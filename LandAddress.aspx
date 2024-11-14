<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandAddress.aspx.cs" Inherits="fellrims3.LandAddress" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Land Address Details</title>
    <style>
        body {
            height: 100vh; /* Use viewport height for full-screen */
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
            max-width: 800px; /* Set max-width to allow larger sizes */
            width: 100%; /* Allow the form to take full width */
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
        }

        label {
            font-weight: bold;
        }

        select, button {
            width: 100%; /* Make buttons and dropdowns full width */
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
                width: 90%; /* For smaller devices, reduce max-width */
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
            <h2>Enter Your Land Address Details</h2>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />

            <asp:Label ID="lblLocation" runat="server" Text="Location: " />
            <asp:DropDownList ID="DDLlocation" runat="server" Height="16px">
                <asp:ListItem Text="-- Select Location --" Value="" />
                <asp:ListItem Text="Vanderbijlpark" Value="Vanderbijlpark" />
                <asp:ListItem Text="Vosloorus" Value="Vosloorus" />
                <asp:ListItem Text="Meyerton" Value="Meyerton" />
                <asp:ListItem Text="De Deur" Value="De Deur" />
                <asp:ListItem Text="Bedworth" Value="Bedworth" />
                <asp:ListItem Text="Pretoria" Value="Pretoria" />
                <asp:ListItem Text="Moria" Value="Moria" />
            </asp:DropDownList>
            <br />

            <asp:Label ID="lblOwnershipStatus" runat="server" Text="Ownership Status: " />
            <asp:DropDownList ID="DDLowner" runat="server">
                <asp:ListItem Text="-- Select Ownership Status --" Value="" />
                <asp:ListItem Text="Full Ownership" Value="FullOwnership" />
                <asp:ListItem Text="Rental" Value="Rental" />
                <asp:ListItem Text="Rent to Own" Value="RentToOwn" />
            </asp:DropDownList>
            <br />
        </div>
        
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#66FF33" ForeColor="Black" Width="96px" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="ResetForm" BackColor="#FF5050" style="margin-left: 0;" Width="93px" />
    </form>
</body>
</html>
