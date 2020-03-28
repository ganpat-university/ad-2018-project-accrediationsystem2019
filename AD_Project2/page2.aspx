<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page2.aspx.cs" Inherits="AD_Project2.page2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
     <link href="StyleSheet1.scss"  rel="stylesheet/scss" type="text/css" />
    <script src="JavaScript.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   
 <div class="container register-form">
            <div class="form">
                <div class="note">
                    <p></p>
                </div>

                <div class="form-content">
               
                <div class="container">
                  <ul class="pagination">
                        <li><a href="page1.aspx">prev</a></li>
                        <li><a href="page1.aspx">1</a></li>
                        <li><a href="page2.aspx">2</a></li>                        
                        <li><a href="page3.aspx">3</a></li>
                        <li><a href="page4.aspx">4</a></li>
                        <li><a href="page5.aspx">5</a></li>
                        <li><a href="page6.aspx">6</a></li>  
                        <li ><a href="page3.aspx">next</a></li>
</ul>
                    <br></br>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                Name of teacher who attended
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                                Title of the program
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                            <div class="form-group">
                                Duration (from – to) (DD-MM-YYYY)
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btnSubmit" OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
    </form>
</body>

     </html>

