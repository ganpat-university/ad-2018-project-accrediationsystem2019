<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page3.aspx.cs" Inherits="AD_Project2.page3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="JavaScript.js"></script>

    <link href="StyleSheet1.css" rel="stylesheet" />
        <link href="StyleSheet1.scss"  rel="stylesheet/scss" type="text/css" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
   
</head>
<body>
    <form id="form1" runat="server">
   
 <div class="container register-form">
            <div class="form">
                <h3>Page3 of 6</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                Year                                            
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                Name of the government funding agencies        
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox2" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                Name of the non government funding agencies/ individuals
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox3" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                Purpose of the Grant
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox4" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                           
                             <div class="form-group">
                           
                                Funds/ Grants received (INR in lakhs)
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox5" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                Link to Audited Statement of Accounts reflecting the receipts
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
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
