<%@ Page Title="Register" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">
        function ChangeCalendarView(sender, args) {
            sender._switchMode("years", true);
        }
    </script>
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
                                                ValidationGroup="ValidateRegister" placeholder="Username"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                                ErrorMessage="UserName can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" TextMode="Password"
                                                ValidationGroup="ValidateRegister" placeholder="Password"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                                ErrorMessage="Password can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" TextMode="Password"
                                                ValidationGroup="ValidateRegister" placeholder="Confirm Password"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                ControlToCompare="txtRePwd" ControlToValidate="txtPwd"
                                                Operator="Equal" ErrorMessage="Password and confirm password do not match"
                                                SetFocusOnError="True" ValidationGroup="ValidateRegister"></asp:CompareValidator>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtCustomerName" runat="server" MaxLength="50"
                                                ValidationGroup="ValidateRegister" placeholder="Customer Name"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtCustomerName"
                                                ErrorMessage="Customer Name can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:RadioButtonList ID="rdoGender" runat="server"
                                                ValidationGroup="ValidateRegister">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdoGender"
                                                ErrorMessage="Gender can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtAdress" runat="server" TextMode="MultiLine"
                                                ValidationGroup="ValidateRegister" placeholder="Address"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAdress"
                                                ErrorMessage="Address can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtEmailID" runat="server" MaxLength="70"
                                                CssClass="TextinputText" ValidationGroup="ValidateRegister" placeholder="Email Address"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailID"
                                                ErrorMessage="Email can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtPhoneNumber" runat="server" MaxLength="15"
                                                CssClass="TextinputText" ValidationGroup="ValidateRegister" placeholder="Phone Number"></asp:TextBox>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhoneNumber"
                                                ErrorMessage="Phone Number can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-10 columns field">
                                            <asp:TextBox ID="txtDate" runat="server" MaxLength="15"
                                                CssClass="TextinputText" ValidationGroup="ValidateRegister" placeholder="Date"></asp:TextBox></td>
                                <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </ajaxToolkit:ToolkitScriptManager>
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate" OnClientShown="ChangeCalendarView" runat="server">
                                            </ajaxToolkit:CalendarExtender>
                                        </div>
                                        <div class="large-2 columns field">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDate"
                                                ErrorMessage="DoB can't be left blank" SetFocusOnError="True"
                                                ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"
                                            ForeColor="Red"></asp:Label>
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                            ShowSummary="False" ValidationGroup="ValidateRegister" />
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnSave" runat="server" Text="Sign Up" CssClass="btn"
                                            OnClick="btnSave_Click" ValidationGroup="ValidateRegister" />
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
