<%@ Page Title="Album" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Album.aspx.cs" Inherits="Album" %>

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
                        <asp:GridView ID="GridView1" runat="server"
                            AutoGenerateColumns="False" DataKeyNames="FileName"
                            OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <a id="image" href='<%# Eval("FileName")%>'>
                                            <img alt="image" src='<%# Eval("FileName")%>?width=200' />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Preview">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" CommandName="Preview" CommandArgument='<%# Container.DataItemIndex %>' Text="Preview" ControlStyle-CssClass="button" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField ButtonType="Button" Text="Add To Cart" CommandName="AddCart" ControlStyle-CssClass="button" />
                            </Columns>

                            <EmptyDataTemplate>
                                Your Album is Empty. Click
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Upload.aspx">here</asp:HyperLink>
                                &nbsp;to upload new images
                            </EmptyDataTemplate>

                        </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
