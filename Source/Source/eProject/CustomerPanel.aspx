<%@ Page Title="Profile" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="CustomerPanel.aspx.cs" Inherits="CustomerPanel" %>

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
                        <h1>My Profile</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                            <ul class='breadcrumbs'>
                                <li>
                                    <a href="Default.aspx" title="">Homepage</a>
                                </li>
                                <li>
                                    <span>
                                        <a href="CustomerPanel.aspx" title="">Checkout</a>
                                    </span>
                                </li>
                            </ul>
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
                    <div class="large-12 columns large-centered" id="formWidth">
                        <div id="customer-login" class="account-session-module">
                            <div class="inner">
                                <p class="note"></p>
                                <fieldset>
                                    <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Center">
                                        <asp:Button ID="btnProfile" runat="server" Text="Your Profile"
                                            OnClick="btnProfile_Click" CssClass="button" />
                                        &nbsp;

            <asp:Button ID="btnOrder" runat="server" OnClick="btnOrder_Click"
                Text="Your Order" CssClass="button" />
                                    </asp:Panel>
                                    <asp:MultiView ID="mtvProfile" runat="server">
                                        <asp:View ID="vOrderDetails" runat="server">
                                            <asp:Panel ID="Panel5" runat="server" HorizontalAlign="Center">
                                                <asp:GridView ID="GridView2" runat="server">
                                                </asp:GridView>
                                                <br />
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" CssClass="button" />
                                            </asp:Panel>
                                        </asp:View>
                                        <asp:View ID="vOrder" runat="server">
                                            <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Left">
                                                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand"
                                                    OnRowDataBound="GridView1_RowDataBound">
                                                </asp:GridView>
                                                <br />
                                            </asp:Panel>
                                        </asp:View>
                                        <asp:View ID="vProfile" runat="server">
                                            <asp:Panel ID="Panel3" runat="server">
                                                <div class="inner">
                                                    <p class="note">
                                                    </p>
                                                    <fieldset>
                                                        <div class="row">
                                                            <div class="large-4 columns field">
                                                                <asp:Label ID="Label3" runat="server" Text="Change your password"></asp:Label>
                                                            </div>
                                                            <div class="large-8 columns field">
                                                                <asp:Label ID="lblMess1" runat="server" ForeColor="Red"
                                                                    Text="Password is changed!" Visible="False"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblFullName1" runat="server" Text="Old Password:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtOldPass" runat="server"
                                                                    ValidationGroup="pass"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                                    ControlToValidate="txtOldPass" ErrorMessage="Must not Empty!" ForeColor="Red"
                                                                    ValidationGroup="pass"></asp:RequiredFieldValidator>
                                                                &nbsp;<asp:Label ID="lblPassword" runat="server" ForeColor="Red"
                                                                    Text="Old Password not correct!" Visible="False"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblAddress1" runat="server" Text="New Password:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtNewPass" runat="server"
                                                                    ValidationGroup="pass"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                                    ControlToValidate="txtNewPass" ErrorMessage="Must not Empty!" ForeColor="Red"
                                                                    ValidationGroup="pass"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>



                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblEmail1" runat="server" Text="Re-type new Password:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtRePass" runat="server" ValidationGroup="pass"></asp:TextBox>
                                                                <asp:CompareValidator ID="CompareValidator2" runat="server"
                                                                    ControlToCompare="txtNewPass" ControlToValidate="txtRePass"
                                                                    ErrorMessage="Not correct with your new Password!" ForeColor="Red"
                                                                    Display="Dynamic" ValidationGroup="pass"></asp:CompareValidator>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                                    ControlToValidate="txtRePass" Display="Dynamic" ErrorMessage="Must not Empty!"
                                                                    ForeColor="Red" ValidationGroup="pass"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:Button ID="btnChange1" runat="server" OnClick="btnChange1_Click"
                                                                    Text="Change" ValidationGroup="pass" CssClass="button" />
                                                                <asp:Button ID="btnClear1" runat="server" Text="Clear"
                                                                    OnClick="btnClear1_Click" CssClass="button" />
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="Panel2" runat="server">
                                                <div class="inner">
                                                    <fieldset>
                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="Label2" runat="server" Text="Profile"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:Label ID="lblMess2" runat="server" ForeColor="Red"
                                                                    Text="Profile is changed!" Visible="False"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="Label4" runat="server" Text="Username:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtUserName" runat="server" Enabled="False"
                                                                    ValidationGroup="ValidateProfile"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblFullName0" runat="server" Text="Full Name:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtFullName" runat="server"
                                                                    ValidationGroup="ValidateProfile"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                                    ControlToValidate="txtFullName" ErrorMessage="Must not Empty!" ForeColor="Red"
                                                                    ValidationGroup="ValidateProfile"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblAddress0" runat="server" Text="Address:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtAddress" runat="server"
                                                                    ValidationGroup="ValidateProfile"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                                    ControlToValidate="txtAddress" ErrorMessage="Must not Empty!" ForeColor="Red"
                                                                    ValidationGroup="ValidateProfile"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblEmail0" runat="server" Text="Email:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtEmail" runat="server"
                                                                    ValidationGroup="ValidateProfile"></asp:TextBox>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                                    ControlToValidate="txtEmail" ErrorMessage="Email not correct!" ForeColor="Red"
                                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                    ValidationGroup="ValidateProfile"></asp:RegularExpressionValidator>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                                    ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Must not Empty!"
                                                                    ForeColor="Red" ValidationGroup="ValidateProfile"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="lblPhoneNumber0" runat="server" Text="Gender:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:Label ID="lblGender" runat="server"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="Label5" runat="server" Text="Date of Birth:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtDoB" runat="server"
                                                                    ValidationGroup="ValidateProfile"></asp:TextBox>
                                                                &nbsp;<asp:Label ID="Label6" runat="server" Text="(dd/mm/yyyy)"></asp:Label>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                                    ControlToValidate="txtDoB" ErrorMessage="Must not Empty!" ForeColor="Red"
                                                                    ValidationGroup="ValidateProfile"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                                <asp:Label ID="Label1" runat="server" Text="Phone Number:"></asp:Label>
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:TextBox ID="txtPhoneNumber" runat="server"
                                                                    ValidationGroup="ValidateProfile"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                                    ControlToValidate="txtPhoneNumber" ErrorMessage="Must not Empty!"
                                                                    ForeColor="Red" ValidationGroup="ValidateProfile"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="large-3 columns field">
                                                            </div>
                                                            <div class="large-9 columns field">
                                                                <asp:Button ID="btnChange2" runat="server" CssClass="button"
                                                                    Text="Change" OnClick="btnChange2_Click"
                                                                    ValidationGroup="ValidateProfile" />
                                                                <asp:Button ID="btnClear2" runat="server" Text="Clear" CssClass="button"
                                                                    OnClick="btnClear2_Click" />
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </asp:Panel>
                                        </asp:View>
                                    </asp:MultiView>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
