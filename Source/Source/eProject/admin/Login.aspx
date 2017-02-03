<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html lang="en" class="coming-soon">
<head runat="server">
    <meta charset="utf-8">
    <title>Login Form</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="../Styles/Admins/images/favicon.ico" />
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700' rel='stylesheet' type='text/css'>
    <link href="../Styles/Admins/plugins/iCheck/skins/minimal/blue.css" type="text/css" rel="stylesheet">
    <link href="../Styles/Admins/fonts/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link href="../Styles/Admins/css/styles.css" type="text/css" rel="stylesheet">
</head>

<body class="focused-form">
    <div class="container" id="login-form">
        <a href="index-2.html">
            <img src="../Styles/Admins/logo.png" class="login-logo" style="height: 73px; width: 116px; top: -110px;"></a>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>Login Form</h2>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="lblMsg1" runat="server" Font-Bold="True"
                                            ForeColor="Red"></asp:Label>
                        <form id="form1" runat="server" class="form-horizontal">
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </span>
                                        <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" name="q" class="form-login" title="Username" value="" size="30" MaxLength="2048"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                            ErrorMessage="UserName can't be left blank"
                                            SetFocusOnError="True" Visible="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-key"></i>
                                        </span>
                                        <asp:TextBox ID="txtPwd1" CssClass="form-control" runat="server" name="q" class="form-login" title="Username" value="" size="30" MaxLength="2048" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="rfvPwd"
                                            runat="server" ControlToValidate="txtPwd1"
                                            ErrorMessage="Password can't be left blank"
                                            SetFocusOnError="True" Visible="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="clearfix">
                                    <a href="../Default.aspx" class="btn btn-default pull-left">Home</a>
                                    <asp:Button ID="ImageButton1" runat="server"  OnClick="ImageButton1_Click" CssClass="btn btn-primary pull-right" Text="Login" />
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Styles/Admins/js/jquery-1.10.2.min.js"></script>
    <script src="../Styles/Admins/js/jqueryui-1.9.2.min.js"></script>
    <script src="../Styles/Admins/js/bootstrap.min.js"></script>
    <script src="../Styles/Admins/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
    <script src="../Styles/Admins/plugins/sparklines/jquery.sparklines.min.js"></script>
    <script src="../Styles/Admins/plugins/jstree/dist/jstree.min.js"></script>
    <script src="../Styles/Admins/plugins/codeprettifier/prettify.js"></script>
    <script src="../Styles/Admins/plugins/bootstrap-switch/bootstrap-switch.js"></script>
    <script src="../Styles/Admins/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>
    <script src="../Styles/Admins/plugins/iCheck/icheck.min.js"></script>
    <script src="../Styles/Admins/js/enquire.min.js"></script>
    <script src="../Styles/Admins/plugins/bootbox/bootbox.js"></script>

    <script src="../Styles/Admins/js/application.js"></script>
    <script src="../Styles/Admins/demo/demo.js"></script>
    <script src="../Styles/Admins/demo/demo-switcher.js"></script>
    <script src="../Styles/Admins/plugins/simpleWeather/jquery.simpleWeather.min.js"></script>
</body>
</html>
