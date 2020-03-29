<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page4.aspx.cs" Inherits="AD_Project2.page4" %>

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
            <h3>Page4 of 6</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                 Year                                    
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           
                            </div>
                            <div class="form-group">
                                Name of teacher            
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                                         PAN                        
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
     
                            </div>
                           
                            <div class="form-group">
                                                        Name of conference/ workshop attended for which financial support provided
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           
                            </div>
                            <div class="form-group">
                                                       Name of the professional body for which membership fee is provided    
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           
                            </div>
                            <div class="form-group">
                                   Amount of support                          
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
