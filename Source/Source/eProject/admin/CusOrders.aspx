<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="CusOrders.aspx.cs" Inherits="CusOrders" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="page-content">
        <div class="page-heading">
            <h1>Order Manager</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="CustomerList.aspx">Order Manager</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default" id="panel-reorder">
                        <div class="panel-heading">
                            <h2>List of Order</h2>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <asp:GridView ID="GridView1" runat="server" DataKeyNames="OrderID" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                <Columns>
                                    <asp:HyperLinkField Text="View" DataNavigateUrlFields="OrderID"
                                        DataNavigateUrlFormatString="OrderDetail.aspx?id={0}" />
                                </Columns>
                                <EmptyDataTemplate>
                                    Not Found !
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
