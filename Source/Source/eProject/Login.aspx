<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/Site.master" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <title></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <style>
        .form-actions a {
            color: #74b6c7 !important;
        }

            .form-actions a:hover {
                color: #e45f87 !important;
            }

        .btn {
            background-color: #74b6c7;
            color: #fff;
            padding: 10px 30px !important;
            border-radius: 3px;
            box-shadow: none;
            border: none;
        }

            .btn:hover {
                background-color: #5da3b5;
            }

        .errors ul li {
            list-style: none;
            margin-left: -15px;
            color: red;
        }
    </style>
    <header class="page-header">
        <div class="row">
            <div class="twelve columns">
                <div class="table">
                    <div class="cell">
                        <h1>LOGIN</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="content-wrap" class="default">
        <div class="row">
            <div class="small-12 columns primary">
                <div class="row">
                    <div class="large-5 columns large-centered">
                        <div id="customer-login" class="account-session-module">
                            <div class="inner">
                                <p class="note"></p>
                                <fieldset>
                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtUserName" runat="server" MaxLength="12"
                                                ValidationGroup="ValidateLogin" placeholder="Input Username"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                                ErrorMessage="UserName can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateLogin">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtPwd1" runat="server" MaxLength="15" TextMode="Password"
                                                ValidationGroup="ValidateLogin" placeholder="Input Password"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd1"
                                                ErrorMessage="Password can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateLogin">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <asp:Label ID="lblMsg1" runat="server" Font-Bold="True"
                                            ForeColor="Red"></asp:Label>
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                            ShowSummary="False" ValidationGroup="ValidateLogin" />
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnLogin" runat="server" Text="Login"
                                            OnClick="btnLogin_Click" ValidationGroup="ValidateLogin" CssClass="button" />&nbsp;&nbsp;
                                                        <a style="color: #fff !important;" href="Register.aspx" class="button secondary">Register</a>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
