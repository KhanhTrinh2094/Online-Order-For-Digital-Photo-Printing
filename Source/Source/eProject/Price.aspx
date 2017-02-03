<%@ Page Title="Price" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Price.aspx.cs" Inherits="Price" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
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
                        <h1>Price</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                            <ul class='breadcrumbs'>
                                <li>
                                    <a href="Default.aspx" title="">Homepage</a>
                                </li>
                                <li>
                                    <span>
                                        <a href="Price.aspx" title="">Price</a>
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
                            <div class="inner">
                                <p class="note"></p>
                                <fieldset>
                                    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                            DataKeyNames="RES" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="RES" HeaderText="Resolution" ReadOnly="True"
                                                    SortExpression="RES" />
                                                <asp:BoundField DataField="Money" HeaderText="Unit Price"
                                                    SortExpression="Money" DataFormatString="{0} $" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:myCon %>"
                                            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Price]"></asp:SqlDataSource>
                                    </asp:Panel>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

