<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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

        .note {
            font-weight: bold;
        }
    </style>
    <header class="page-header">
        <div class="row">
            <div class="twelve columns">
                <div class="table">
                    <div class="cell">
                        <h1>Checkout</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                            <ul class='breadcrumbs'>
                                <li>
                                    <a href="Default.aspx" title="">Homepage</a>
                                </li>
                                <li>
                                    <span>
                                        <a href="Orders.aspx" title="">Checkout</a>
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
                    <div class="large-5 columns large-centered">
                        <div id="customer-login" class="account-session-module">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="vPending" runat="server">
                                    <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Center">
                                        <asp:Label ID="Label6" runat="server"
                                            Text="Your payment is pending now, please wait until it be approved"></asp:Label>
                                    </asp:Panel>
                                </asp:View>
                                <asp:View ID="vSuccess" runat="server">
                                    <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center">
                                        <asp:Label ID="Label5" runat="server" Text="Successful"></asp:Label>
                                    </asp:Panel>
                                </asp:View>
                                <asp:View ID="vConfirm" runat="server">
                                    <asp:Panel ID="Panel5" runat="server">
                                        <div class="inner">
                                            <p class="note">
                                                <asp:Label ID="Label7" runat="server" Text="Sender Information"></asp:Label>
                                            </p>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblFullName1" runat="server" Text="Full Name:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtFullName2" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblAddress1" runat="server" Text="Address:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtAddress2" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>

                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblEmail1" runat="server" Text="Email:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtEmail2" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>

                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblPhoneNumber1" runat="server" Text="Phone Number:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtPhoneNumber2" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </fieldset>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel6" runat="server">
                                        <div class="inner">
                                            <p class="note">
                                                <asp:Label ID="Label1" runat="server" Text="Receiver Information"></asp:Label>
                                            </p>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblFullName2" runat="server" Text="Full Name:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtFullName3" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblAddress2" runat="server" Text="Address:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtAddress3" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblEmail2" runat="server" Text="Email:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtEmail3" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblPhoneNumber2" runat="server" Text="Phone Number:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtPhoneNumber3" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:Button ID="btnConfirm" runat="server" CssClass="button" OnClick="btnConfirm_Click"
                                                            Text="Confirm" />
                                                        <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" CssClass="button" Text="Edit" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </asp:Panel>
                                </asp:View>
                                <asp:View ID="vCreditCard" runat="server">
                                    <div class="row">
                                        <div class="large-3 columns field">
                                            <asp:Label ID="Label4" runat="server" Text="Card Number"></asp:Label>
                                        </div>
                                        <div class="large-9 columns field">
                                            <asp:TextBox ID="txtCardNumber" runat="server"
                                                ValidationGroup="CardValidate"></asp:TextBox>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label9" runat="server" ForeColor="Red"
                                Text="Your Credit Card Number is invalid" Visible="False"></asp:Label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                ControlToValidate="txtCardNumber" Display="Dynamic"
                                                ErrorMessage="Card number must not empty!" ForeColor="Red"
                                                ValidationGroup="CardValidate"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-3 columns field">
                                        </div>
                                        <div class="large-9 columns field">
                                            <asp:Button ID="btnAccept" runat="server" CssClass="button" OnClick="btnAccept_Click"
                                                    Text="Accept" ValidationGroup="CardValidate" />
                                            <asp:Button ID="Button3" runat="server" CssClass="button" OnClick="Button3_Click"
                                                    Text="Choose other Method" />
                                        </div>
                                    </div>
                                </asp:View>
                                <asp:View ID="vPaymentMethod" runat="server">
                                    <div class="row">
                                        <div class="large-3 columns field">
                                            <asp:Label ID="Label3" runat="server" Text="Choose payment method:"></asp:Label>
                                        </div>
                                        <div class="large-9 columns field">
                                            <asp:DropDownList ID="ddlPaymentMethod" runat="server">
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="large-3 columns field">
                                        </div>
                                        <div class="large-9 columns field">
                                            <asp:Button ID="btnContinue" CssClass="button" runat="server" OnClick="btnContinue_Click"
                                                Text="Continue" />
                                            <asp:Button ID="btnBack" runat="server" CssClass="button" OnClick="btnBack_Click" Text="Back" />
                                        </div>
                                    </div>
                                </asp:View>

                                <asp:View ID="vUserInfo" runat="server">
                                    <asp:Panel ID="Panel1" runat="server">
                                        <div class="inner">
                                            <p class="note">
                                                <asp:Label ID="Label12" runat="server" Text="Sender Information"></asp:Label>
                                            </p>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblFullName" runat="server" Text="Full Name:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtFullName" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtAddress" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtEmail" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtPhoneNumber" runat="server" Enabled="False"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-6 columns field">
                                                        <asp:Label ID="Label11" runat="server" Text="Edit sender information?"></asp:Label>
                                                    </div>
                                                    <div class="large-6 columns field">
                                                        <asp:Button ID="btnProfile" runat="server" OnClick="btnProfile_Click" CssClass="button"
                                                            Text="Go to Profile" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </asp:Panel>

                                    <asp:Panel ID="Panel2" runat="server">
                                        <div class="inner">
                                            <p class="note">
                                                <asp:Label ID="Label2" runat="server" Text="Receiver Information"></asp:Label>
                                            </p>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblFullName0" runat="server" Text="Full Name:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtFullName1" runat="server"
                                                            ValidationGroup="validate"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                            ControlToValidate="txtFullName1" ErrorMessage="Full name must not empy!"
                                                            ForeColor="Red" ValidationGroup="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblAddress0" runat="server" Text="Address:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtAddress1" runat="server"
                                                            ValidationGroup="validate"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                            ControlToValidate="txtAddress1" ErrorMessage="Address must not empy!"
                                                            ForeColor="Red" ValidationGroup="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblEmail0" runat="server" Text="Email:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtEmail1" runat="server"
                                                            ValidationGroup="validate"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                            ControlToValidate="txtEmail1" ErrorMessage="Email not Correct!" ForeColor="Red"
                                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                            ValidationGroup="validate"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                        <asp:Label ID="lblPhoneNumber0" runat="server" Text="Phone Number:"></asp:Label>
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:TextBox ID="txtPhoneNumber1" runat="server"
                                                            ValidationGroup="validate"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                            ControlToValidate="txtPhoneNumber1" ErrorMessage="Phone number must not empty!"
                                                            ForeColor="Red" ValidationGroup="validate"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="large-3 columns field">
                                                    </div>
                                                    <div class="large-9 columns field">
                                                        <asp:Button ID="btnCopy" runat="server" CssClass="button" Text="Same as above"
                                                            OnClick="btnCopy_Click" />
                                                        <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click"
                                                            Text="Continue" ValidationGroup="validate" />
                                                        <asp:Button ID="btnCancel" runat="server" CssClass="button" Text="Cancel" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </asp:Panel>
                                </asp:View>
                            </asp:MultiView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
