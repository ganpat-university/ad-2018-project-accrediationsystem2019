<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationSubmission.aspx.cs" Inherits="AD_Project2.ApplicationSubmission1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- Main CSS-->
    <link href="css/ApplicationSubmission.css" rel="stylesheet" media="all">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Submission Portal</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row">
                            <div class="name">Univserity name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="full_name" id="full_name" placeholder="Lovely Professional University">                                
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">University Email address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com" id="email">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Short SOP</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="textarea--style-6" name="message" placeholder="Your short statement to the Education Department stating about goals of your university" id="message"></textarea>
                                </div>
                            </div>
                        </div>                        
                        <div class="form-row">  
                            <div class="name">University Details </div>
                            <div class="value">
                                <div class="input-group js-input-file">                                    
                                    <asp:FileUpload ID="FileUpload1" runat="server"/>                                                                        
                                </div>
                                <div class="label--desc">Upload the pdf of your university which contains all the data as mentioned in the 
                                        NARRC. Max file size 50 MB 
                                        <br />
                                    <b>PS: If the pdf doesn't contain any mandatory field it will lead to rejection at your cost. Upload Carefully.</b>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <asp:Button ID="Button1" CssClass="btn btn--radius-2 btn--blue-2" runat="server" Text="Submit Application" OnClick="Button1_Click"/>
                    <!--
                        <button class="btn btn--radius-2 btn--blue-2" type="submit">Send Application</button>
                    -->
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/ApplicationSubmission.js"></script>

    </form>
</body>
</html>
