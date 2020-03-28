<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationResult.aspx.cs" Inherits="AD_Project2.ApplicationSubmission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
  <h2>Result: </h2>
  <div class="alert alert-success">
      <strong>Welcome !</strong> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      <br /><br />          
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
  </div>
    </form>
</body>
</html>
