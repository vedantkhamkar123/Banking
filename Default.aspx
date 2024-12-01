<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bankved.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bank Account Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            color: #333;
            padding: 20px;
        }

        form {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        button, input[type="submit"] {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        button:hover, input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .result-label {
            margin-top: 20px;
            font-size: 14px;
            color: #28a745;
            text-align: center;
        }

        .ecommerce-style {
            text-align: center;
            font-size: 13px;
            color: #999;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Bank Account Management</h2>
        <div>
            <label for="txtAccountNumber">Account Number:</label>
            <asp:TextBox ID="txtAccountNumber" runat="server" Placeholder="Enter account number"></asp:TextBox>
        </div>

        <div>
            <label for="txtAccountHolderName">Account Holder Name:</label>
            <asp:TextBox ID="txtAccountHolderName" runat="server" Placeholder="Enter account holder name"></asp:TextBox>
        </div>

        <div>
            <label for="txtBalance">Balance:</label>
            <asp:TextBox ID="txtBalance" runat="server" Placeholder="Enter balance"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" OnClick="btnCreateAccount_Click" />
        </div>

        <div>
            <label for="txtDepositAmount">Deposit Amount:</label>
            <asp:TextBox ID="txtDepositAmount" runat="server" Placeholder="Enter deposit amount"></asp:TextBox>
            <asp:Button ID="btnDeposit" runat="server" Text="Deposit" OnClick="btnDeposit_Click" />
        </div>

        <div>
            <label for="txtWithdrawAmount">Withdraw Amount:</label>
            <asp:TextBox ID="txtWithdrawAmount" runat="server" Placeholder="Enter withdrawal amount"></asp:TextBox>
            <asp:Button ID="btnWithdraw" runat="server" Text="Withdraw" OnClick="btnWithdraw_Click" />
        </div>

        <div>
            <asp:Button ID="btnViewDetails" runat="server" Text="View Details" OnClick="btnViewDetails_Click" />
        </div>

        <div class="result-label">
            <asp:Label ID="lblResult" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>

        <div class="ecommerce-style">
            © 2024 Bankved. All rights reserved.
        </div>
    </form>
</body>
</html>
