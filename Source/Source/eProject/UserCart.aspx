<%@ Page Title="Cart" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="UserCart.aspx.cs" Inherits="UserCart" %>

<%@ Register Src="CartControl.ascx" TagName="CartControl" TagPrefix="uc1" %>

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

        table tr {
            border-bottom: 1px solid #bcc3ca;
        }
    </style>
    <header class="page-header">
        <div class="row">
            <div class="twelve columns">
                <div class="table">
                    <div class="cell">
                        <h1>Album</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                            <ul class='breadcrumbs'>
                                <li>
                                    <a href="Default.aspx" title="">Homepage</a>
                                </li>
                                <li>
                                    <span>
                                        <a href="Album.aspx" title="">Album</a>
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
                    <uc1:CartControl ID="CartControl1" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
