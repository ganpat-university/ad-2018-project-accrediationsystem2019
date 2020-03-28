<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page6.aspx.cs" Inherits="AD_Project2.page6" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
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
                        <li><a href="page5.aspx">prev</a></li>
                        <li><a href="page1.aspx">1</a></li>
                        <li><a href="page2.aspx">2</a></li>                        
                        <li><a href="page3.aspx">3</a></li>
                        <li><a href="page4.aspx">4</a></li>
                        <li><a href="page5.aspx">5</a></li>
                        <li><a href="page6.aspx">6</a></li>                          
          </ul>
        </div>        
                    <br></br>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                Program Code:
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please match the format" ControlToValidate="TextBox1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                               
                            </div>
                            <div class="form-group">
                                 Program Name:
                                 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the program name" ControlToValidate="TextBox2" SetFocusOnError="true"></asp:RequiredFieldValidator>
                               
                            </div>
                       
                            <div class="form-group">
                                Year Of Introduction:
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Year(2010 to 2020)" ControlToValidate="TextBox3" MaximumValue="2020" MinimumValue="2010" type="integer" SetFocusOnError ="true"></asp:RangeValidator>
                            </div>
                            <div class="form-group">
                                Status Of Implementation Of CBCS/elective Course system (Yes/NO)
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter valid format" ControlToValidate="TextBox4" SetFocusOnError="true"></asp:RequiredFieldValidator><br /><br />
                            </div>
                            <div class="form-group">
                                Year Of Implementation Of CBCS/elective Course system
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Year(2010-2020)" ControlToValidate="TextBox5"  MaximumValue="2020" MinimumValue="2010" SetFocusOnError="true"></asp:RangeValidator>
       
                            </div>

                            <div class="form-group">
                                 Year of revision(If any)
                                 <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter valid format" ControlToValidate="TextBox6" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                If revision has been carried out during the last 5 years,percentage of content added or replaced      
                                 <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the percentge" ControlToValidate="TextBox7" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                 <asp:Label ID="Label8" runat="server" Text="Label"> Link to relevant document</asp:Label>
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
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
