<%@ Page Title="Upload Image" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Upload.aspx.cs" Inherits="_Default" %>

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

        .multi.MultiFile-applied {
            background-color: #fff;
            border-color: #5b5d67;
            color: #60626b;
            transition: background-color .15s,border-color .15s;
            font-family: inherit;
            border: 1px solid #bcc3ca;
            display: block;
            font-size: 1rem;
            margin: 0 0 1.5rem;
            padding: .75rem;
            height: 3.1875rem;
            width: 100%;
        }

        .MultiFile-label{
            border: 1px solid #bcc3ca;
            margin: 0 0 1.5rem;
            padding: .75rem;
        }

        #MainContent_Panel1 span{
            border: 1px solid #bcc3ca;
            margin: 0 0 1.5rem;
            padding: .75rem;
        }
    </style>
    <header class="page-header">
        <div class="row">
            <div class="twelve columns">
                <div class="table">
                    <div class="cell">
                        <h1>Upload</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                            <ul class='breadcrumbs'>
                                <li>
                                    <a href="Default.aspx" title="">Homepage</a>
                                </li>
                                <li>
                                    <span>
                                        <a href="Upload.aspx" title="">Upload</a>
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
                                    <div class="row">
                                        <div class="large-12 columns field">
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="multi" accept="png|jpg|jpeg|gif" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Visible="False">
                                        </asp:Panel>
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="Button1" runat="server" CssClass="button" Text="Upload" OnClick="Button1_Click" />
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery.MultiFile.js" type="text/javascript"></script>
</asp:Content>
