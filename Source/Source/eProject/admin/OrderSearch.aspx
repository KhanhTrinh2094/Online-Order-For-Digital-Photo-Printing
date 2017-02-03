<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="OrderSearch.aspx.cs" Inherits="admin_OrderSearch" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style>
        table tr {
            border-bottom: solid 1px rgba(128, 128, 128, 0.28);
        }
    </style>
    <div class="page-content">
        <div class="page-heading">
            <h1>Search Order</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="OrderManagement.aspx">Search Order</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default" id="panel-reorder">
                        <div class="panel-heading">
                            <h2>Search Order</h2>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <asp:GridView ID="GridView1" runat="server" DataKeyNames="OrderID"
                                Visible="False" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                <Columns>
                                    <asp:HyperLinkField Text="View" DataNavigateUrlFields="OrderID"
                                        DataNavigateUrlFormatString="OrderDetail.aspx?id={0}" />
                                </Columns>
                                <EmptyDataTemplate>
                                    Not Found !
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <div class="form-group" style="margin: 5px; text-align: center;">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
            Text="Search by ID" ValidationGroup="1" CssClass="btn-default btn" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="TextBox1" ErrorMessage="ID not null" ValidationGroup="1"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"
            Text="Search by Shipping Add" ValidationGroup="2" CssClass="btn-default btn" />

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="TextBox2" ErrorMessage="Address not null"
                                    ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
