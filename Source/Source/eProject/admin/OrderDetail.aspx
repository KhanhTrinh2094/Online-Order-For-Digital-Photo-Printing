<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="OrderDetail.aspx.cs" Inherits="admin_OrderDetail" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="page-content">
        <div class="page-heading">
            <h1>Order Detail</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="#">Order Detail</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <style>
                        tr td{
                            width:50%;
                        }
                    </style>
                    <div class="panel panel-midnightblue">
                        <div class="panel-heading">
                            <h2>Order Detail</h2>
                        </div>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="horizontal-form">
                                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                    </asp:DetailsView>
                                    <br />
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <br />
                                    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                    </asp:DetailsView>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                    </asp:GridView>
                                    <br />
                                </div>
                            </div>

                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                            Text="Set as Shipped" CssClass="btn-default btn"/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"
            Text="Set as Declined" CssClass="btn-default btn" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
